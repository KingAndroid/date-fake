<div id="fb-root"></div>
<script>
  var FACEBOOK_CLIENT_ID = "{{ config('services.facebook.app_id') }}";
  window.fbAsyncInit = function() {
    FB.init({
      appId      : FACEBOOK_CLIENT_ID,
      cookie     : true,
      xfbml      : true,
      version    : 'v3.0'
    });
      
    FB.AppEvents.logPageView();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));


  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
      console.log('statusChangeCallback');
      console.log(response);
      // The response object is returned with a status field that lets the
      // app know the current login status of the person.
      // Full docs on the response object can be found in the documentation
      // for FB.getLoginStatus().
      if (response.status === 'connected') {
          // Logged into your app and Facebook.
          testAPI();
      } else {
          // The person is not logged into your app or we are unable to tell.
          goLogin();
      }
  }

  function goLogin() {
      FB.login(function (response) {
        
        console.log(response);
          
          if (response.authResponse) {
              testAPI(); 
          } else {
              console.log('User cancelled login or did not fully authorize.');
          }
      }, {scope: 'email,user_friends'});

  }

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
      console.log('Welcome! testAPI Fetching your information.... ');
      FB.api('/me', {
          fields: 'birthday,link,gender,age_range,name,email,picture,first_name,last_name,friends{name,email}'
      }, function (response) {
            console.log(response, 'Successful login for: ' + response.name);

            //save to localstorage
            window.localStorage.setItem('fb_data', JSON.stringify(response));

            response.uri_1 = uri_1;
          response._token = csrf_token;
          
            $.post(
                base_url + '/login_facebook',
                response,
                function (res) {
                    if (uri_1 == '') {
                        if (typeof (res.id) !== 'undefined') {
                            window.location.reload(true);
                        } else {
                            $.alert({
                                title: 'Opps!!',
                                content: 'User not found.',
                            });
                        }
                    }
                    else{
                        if(uri_1 == 'profile_settings'){
                            $.alert({
                                title: 'Connected',
                                content: 'Your facebook account is now connected to your SeriousDatings profile.',
                            });
                        }
                        else if(uri_1 == 'users'){
                            if (typeof (res.id) !== 'undefined') {
                                
                                setTimeout(function(){
                                    window.location.reload(true);
                                }, 1500);
                                
                                $.alert('You are already registered. Logging you in...');

                            } else {
                                //set input fields for user signup
                                var _first_name = response.first_name;
                                var _last_name = response.last_name;
                                var _email = response.email;
                                var _id = response.id; 
                                var _gender = response.gender; 

                                $('[name="fb_id"]').val(_id);
                                $('[name="email"]').val(_email);
                                $('[name="firstName"]').val(_first_name);
                                $('[name="lastName"]').val(_last_name);

                                if(_gender != 'male'){
                                    $('[name="gender"]').val('Female');
                                }
                                
                                
                                $.alert('Success! We connected your facebook account to SeriousDatings. Please complete form below to continue.');
                                
                            }



                        }
                    }
                    console.log('login yeah fb', res)
                },
                'json'
            );


      });
  }
  
    function checkLoginState() {
        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });
    }
  
    function signUpProc() {
        FB.api('/me', {
            fields: 'birthday,\
            link,\
            gender,\
            age_range, \
            name, \
            email, \
            picture, \
            first_name, \
            last_name, \
            location'
        }, function (response) {
            console.log(response, 'Successful login for: ' + response.name);

            //save to localstorage
            window.localStorage.setItem('fb_data', JSON.stringify(response));

            response._token = csrf_token;
            response.fb_id = response.id;
            
            var user = {
                _token: csrf_token,
                username    : response.name,
                password    : '',
                fb_id       : response.id,
                email       : response.email,
                firstName   : response.first_name,
                lastName    : response.last_name,
                city        : '',
                country        : '',
                country_shortname        : '',
                country_code        : '',
                phone        : '',
                zipcode      : '',
                latitude      : '',
                longitude      : ''
            };

            $.post(
                base_url + '/api/signup',
                user,
                function (res) {
                
                console.log(res);
                if (res.result == 'ok') {
                    setTimeout(function(){
                        window.location.href = window.base_url + '/users/' + res.username + '/about_your_date';

                    }, 2500);
                    
                    $.alert(res.message);
                } else {
                    $.alert(res.message);                    
                } 
            });
        });
    }

    function signUpwithFacebook() {

        FB.getLoginStatus(function (response) {
            if (response.status === 'connected') {
                // Logged into your app and Facebook.
                signUpProc();
                console.log('connected');
            } else {
                console.log('login');
                FB.login(function (response) {                
                    if (response.authResponse) {
                        signUpProc();
                    } else {
                        console.log('User cancelled login or did not fully authorize.');
                    }
                }, {scope: 'email'});
            }
        });
    }



</script>