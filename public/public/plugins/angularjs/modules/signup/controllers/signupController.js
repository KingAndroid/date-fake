"use strict"

ngApp.controller('signupController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngBootbox', 
    function ($scope, $filter, myHttpService, $timeout, $ngBootbox) {

    $scope.emailInUse = 0;
    $scope.usernameInUse = 0;
    $scope.profileType = null;
    $scope.base_url = window.base_url;

    $scope.myImage = '';
    $scope.myCroppedImage = '';
    $scope.imgEdit = true;
    $scope.imgDone = {
        done: false
    };

    var loadingModalOpt = {
        templateUrl: 'loading-modal.html',
        className: 'loading-modal',
        buttons: {}
    };


    $scope.user = {};

    // video variables
    var width = 320;    // We will scale the photo width to this
    var height = 0;     // This will be computed based on the input stream

    var streaming = false;

    var video = null;
    var canvas = null;
    var photo = null;
    var startbutton = null;
    var isCapture = false;

    function _handleFileSelect(evt) {
        var file = evt.currentTarget.files[0];
        if (file !== undefined) {
            var reader = new FileReader();
            reader.onload = function (evt) {
                $('#picture').attr('src', evt.target.result);
            };
            reader.readAsDataURL(file);
        }
    };
    
    function _checkFace() {

        if (isCapture) {
            $scope.$apply(function ($scope) {
                $scope.myImage = $('#picture').attr('src');
            });
            isCapture = false;
            return;
        }

        $('#picture').faceDetection({
            complete: function (faces) { 

                /*if(faces.length==0){
                    alert("There is no face! Please retry again.");
                    return;
                }*/
                
                // success
                $scope.$apply(function ($scope) {
                    $scope.myImage = $('#picture').attr('src');
                });
            },
            error:function (code, message) {
                alert('Error: ' + message);
            }
        });

    }
  function startup() {
    video = document.getElementById('video');
    canvas = document.getElementById('canvas');
    photo = document.getElementById('picture');
    startbutton = document.getElementById('startbutton');

    navigator.getMedia = ( navigator.getUserMedia ||
                           navigator.webkitGetUserMedia ||
                           navigator.mozGetUserMedia ||
                           navigator.msGetUserMedia);

    navigator.getMedia(
      {
        video: true,
        audio: false
      },
      function(stream) {
        if (navigator.mozGetUserMedia) {
          video.mozSrcObject = stream;
        } else {
          var vendorURL = window.URL || window.webkitURL;
          video.src = vendorURL.createObjectURL(stream);
        }
        video.play();
      },
      function(err) {
        console.log("An error occured! " + err);
      }
    );

    video.addEventListener('canplay', function(ev){
        if (!streaming) {
            height = video.videoHeight / (video.videoWidth/width);
        
            // Firefox currently has a bug where the height can't be read from
            // the video, so we will make assumptions if this happens.
        
            if (isNaN(height)) {
            height = width / (4/3);
            }
        
            video.setAttribute('width', '100%');
            video.setAttribute('height', height);

            canvas.setAttribute('width', width);
            canvas.setAttribute('height', height);
            streaming = true;
        }
        }, false);

        startbutton.addEventListener('click', function(ev){
            isCapture = true;
            takepicture();
            ev.preventDefault();
        }, false);
        
        clearphoto();
    }

    function clearphoto() {
        var context = canvas.getContext('2d');
        context.fillStyle = "#AAA";
        context.fillRect(0, 0, canvas.width, canvas.height);
    
        var data = canvas.toDataURL('image/png');
        // photo.setAttribute('src', data);
    }

    function takepicture() {
        var context = canvas.getContext('2d');
        if (width && height) {
          canvas.width = width;
          canvas.height = height;
          context.drawImage(video, 0, 0, width, height);
        
          var data = canvas.toDataURL('image/png');
          photo.setAttribute('src', data);
        } else {
          clearphoto();
        }
    }

    $scope.getLocationByIp = function () {

        window.navigator.geolocation.getCurrentPosition(function (pos) {
            console.log(pos);

            var coords = pos.coords;
            var lat = coords.latitude;
            var lng = coords.longitude;

            myHttpService.getCustom('https://nominatim.openstreetmap.org/reverse?format=json&lat=' + lat + '&lon=' + lng + '&addressdetails=1').then(function (res) {
                // _havePostCode(res);

                var city = (typeof (res.data.address.city) !== 'undefined') ? res.data.address.city : res.data.address.suburb;

                if(typeof(city) === 'undefined'){
                    city = (typeof (res.data.address.county) !== 'undefined') ? res.data.address.county : res.data.address.state;
                }

                $scope.user.location = res.data.display_name;
                $scope.user.latitude = res.data.lat;
                $scope.user.longitude = res.data.lon;
                $scope.user.zipcode = res.data.address.postcode;
                $scope.user.city = city;
                $scope.user.country = res.data.address.country;
                $scope.user.country_shortname = res.data.address.country_code.toUpperCase();

            });

        });

        // myHttpService.get('get_signup_location').then(function (res) {
        //     $scope.user.location = res.data.location;
        //     $scope.user.latitude = res.data.latitude;
        //     $scope.user.longitude = res.data.longitude;
        //     $scope.user.zipcode = res.data.zipcode;
        //     $scope.user.city = res.data.city;
        //     $scope.user.country = res.data.country;
        //     console.log($scope.user);
        // });
    }

    $scope.getInitImage = function () {
        myHttpService.getCustom(base_url + '/public/plugins/angularjs/data/signup_img.json').then(function (res) {
            console.log(res.data, 'ress image');
            $scope.myCroppedImage = res.data.image;

        });
    }

    $scope.checklist = [
        'I\'m new to the area',
        'I don\'t feel comfortable asking peopleout',
        'I\'m really busy with work',
        'I meet a lot of people, just not the right type',
        'I don\'t like the bar',
        'I don\'t want to settle for second best',
        'Safety concerns me',
        'I\'m tired of people playing games',
        'I\'m a single parent',
        'I\'m very selective of whom I\'ll date',
    ];
    $scope.validationOptions = {
        ignore: [],
        rules: {
            username: {
                minlength: 4
            },
            password: {
                minlength: 6
            },
            password2: {
                equalTo: "#password_orig"
            }
        },
        messages: {
            username: {
                required: "Please enter a username",
                minlength: "Your username must consist at least 4 characters"
            },
            password: {
                required: "Please provide a password",
                minlength: "Your password must be at least 6 characters long"
            },
            password_repeat: {
                required: "Please provide a password",
                equalTo: "Please enter the same password"
            },
        },
        highlight: function (element) {
            $(element).closest('.form-group').addClass('has-error');
        },
        unhighlight: function (element) {
            $(element).closest('.form-group').removeClass('has-error');
        },
        errorElement: 'span',
        errorClass: 'help-block',
        errorPlacement: function (error, element) {
            $(element).closest('.form-group').append(error);
        }
    };

    $scope.submitForm = function (registerform) {
        console.log($scope.user, '$scope.imgEdit');

        $scope.user.birthdate = $filter('date')($scope.user.birthdateObj, "yyyy-MM-dd");
        if ($scope.profileType)
            $scope.user.photoType = $scope.profileType;
        else
            $scope.user.photoType = 3;

        // console.log(registerform, $scope.user);
        if (registerform.validate() && !$scope.emailInUse && !$scope.usernameInUse) {
            $scope.user.photo = $scope.myCroppedImage;
            if ($scope.imgEdit) {
                $scope.showToast('Please upload an image.', 'danger');
                return false;
            }
            $ngBootbox.customDialog(loadingModalOpt);

            myHttpService.post('signup', $scope.user)
                .then(function (res) {
                    console.log(res);
                    $ngBootbox.hideAll();
                    if (res.data.result == 'ok') {
                        $ngBootbox.hideAll();
                        $timeout(function () {
                            $scope.showToast(res.data.message);
                        }, 300);
                        $timeout(function () {
                            window.location.href = window.base_url + '/users/' + res.data.username + '/about_your_date';
                        }, 2500);

                    }
                    else {
                        $ngBootbox.alert(res.data.message);
                    }
                }, function (err) {
                    console.log(err);
                    var box = $ngBootbox.alert('Something went wrong.');
                    $ngBootbox.hideAll();
                });
        }
        else {
            $scope.showToast('Opps! Please check your input.', 'danger');
        }
    }

    $scope.calendarMaxDate = function (max = 21) {
        var nowInMS = new Date().getTime(),
            yearInMS = 1000 * 60 * 60 * 24 * 365 * max,
            yearsBeforeNow = new Date(nowInMS - yearInMS);

        yearsBeforeNow = $filter('date')(yearsBeforeNow, "yyyy-MM-dd");
        // console.log(yearsBeforeNow, 'yearsBeforeNow');
        return yearsBeforeNow;
    }

    $scope.usernameChange = function (n) {
        console.log(n);
        $scope.usernameInUse = 0;

        if (n) {
            myHttpService.post('validate_username', {
                    username: n
                })
                .then(function (res) {
                    console.log(res);
                    $scope.usernameInUse = res.data.count;
                }, function (err) {
                    console.log(err);
                });
        }

    }

    $scope.emailChange = function (n) {
        console.log(n);
        $scope.emailInUse = 0;

        if (n) {
            myHttpService.post('validate_email', {
                    email: n
                })
                .then(function (res) {
                    console.log(res);
                    $scope.emailInUse = res.data.count;
                }, function (err) {
                    console.log(err);
                });
        }
    }

    $scope.uploadImageDone = function() {
        $scope.imgDone.done = !$scope.imgDone.done;
    }

    function _init() {

        angular.element(document.querySelector('#fileInput')).on('change', _handleFileSelect);
        angular.element(document.querySelector('#picture')).on('load', _checkFace);
        
        window.addEventListener('load', startup, false);

        $scope.getLocationByIp();
        $scope.getInitImage();
    }

    _init();
}]);
