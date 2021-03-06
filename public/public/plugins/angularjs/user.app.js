"use strict"

var dependencies = [
    'ngValidate', 
    'checklist-model', 
    'uiCropper', 
    'ngBootbox', 
    'ngToast', 
    'ui.bootstrap', 
    'cp.ngConfirm', 
    'ui.calendar', 
    'angularMoment',
    'toaster'
];

var ngApp = angular.module('seriousDatingApp', dependencies);

ngApp.config(["ngToastProvider",
    function (ngToastProvider) {
        ngToastProvider.configure({
            animation: 'slide', // or 'fade' 'slide'
            dismissButton: true,
            horizontalPosition: 'center',
            verticalPosition: 'top',
            maxNumber: 1,
            timeout: 3000
        });
}]);

ngApp.filter('reverse', function () {
    return function (items) {
        return items.slice().reverse();
    };
});


ngApp.run([
    '$ngConfirmDefaults',
    function ($ngConfirmDefaults) {
        // modify the defaults here.
        // $ngConfirmDefaults.theme = 'modern';
    }
]);


ngApp.filter('slice', function () {
    return function (arr, start, end) {
        return arr.slice(start, end);
    };
});

ngApp.run(['$rootScope', 'ngToast', 'toaster', function ($rootScope, ngToast, toaster) {

    $rootScope.showToast = function (content = 'Cool', classname = 'success') {
        console.log(content);
        // ngToast.create({
        //     className: classname,
        //     content: content
        // });
        var classname = (classname == 'danger') ? 'error' : classname;
        toaster.pop({
            type: classname,
            // title: 'Title text',
            body: content,
            toasterId: 2
            // showCloseButton: true
        });

    };

    $rootScope.showNoti = function(content = 'Cool', classname = 'success'){
        var classname = (classname == 'danger') ? 'error' : classname;

        console.log('tasotere');
        toaster.pop({
            type: classname,
            // title: 'Title text',
            body: content,
            showCloseButton: true,
            toasterId: 1
        });
    };

    // setTimeout(function(){
    //     $rootScope.pop();
    // },  5500);

    $rootScope.heightOptions = function () {
        var arr = [];
        for (var i = 2; i < 9; i++) {
            for (var i2 = 0; i2 < 12; i2++) {
                var height = i + 'ft';
                if (i2) {
                    height += ' ' + i2 + 'in';
                }
                arr.push(height);
            }
        }
        return arr;
    }

}]);

Object.toparams = function ObjecttoParams(obj) {
    var p = [];
    for (var key in obj) {
        p.push(key + '=' + encodeURIComponent(obj[key]));
    }
    return p.join('&');
};

ngApp.filter('slice', function () {
    return function (arr, start, end) {
        if (arr)
            return arr.slice(start, end);
        else
            return null;
    };
});

ngApp.service('myHttpService', ['$http', 'CSRF_TOKEN', function ($http, CSRF_TOKEN) {

    this.url = window.base_url;
    this.get = function (link = 'header_tasks') {
        // console.log(this.url);
        return $http.get(this.url + '/api/' + link);
    }

    this.getWithParams = function (link = 'header_tasks', data = {}) {
        // console.log(this.url);
        return $http.get(this.url + '/api/' + link, {
            params: data
        });
    }

    this.post = function (link, data) {
        $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
        // $http.defaults.headers.post["X-CSRF-TOKEN"] = CSRF_TOKEN;

        var d = Object.toparams(data);
        console.log(this.url + '/api/' + link);
        return $http.post(this.url + '/api/' + link, d); //Object.toparams(data));
    }

    this.getCustom = function (link) {
        console.log(this.url);
        return $http.get(link);
    }

    this.postCustom = function (link) {
        console.log(this.url);
        return $http.post(link);
    }

    this.shareData = 0;

}]);

ngApp.controller('bodyController', [
    '$scope',
    '$rootScope',
    '$filter',
    'myHttpService',
    '$timeout',
    '$ngBootbox',
    '$uibModal',
    '$log',
    '$document',
    '$ngConfirm',
    '$interval',
    '$location',
    function ($scope, $rootScope, $filter, myHttpService, $timeout, $ngBootbox, $uibModal, $log, $document, $ngConfirm, $interval, $location) {

        $scope.notifications = [];
        $scope.subscription_validity = {};
        $scope.active_ads = [];
        $scope.adsPlaceholder =  [0, 1, 2, 3 , 4];
        $scope.logged_user_info = null;
        $scope.logged_id = 0;
        $scope.isReadyToDate = {
            readyDetails: {},
            responded: false,
            answer: null
        };
        $scope.globalURL = "";

        $scope.searchSettings = {
            type: 'quick'
        };
        $scope.searchByName = {
            firstName: '',
            lastName: ''
        };
        $scope.unread_noti_count = 0;

        $scope.getData = function () {
            myHttpService.get('body_contents').then(function (res) {
                $scope.notifications = res.data.notifications;
                $scope.subscription_validity = res.data.subscription_validity;
                // $scope.active_ads = res.data.active_ads;
                $scope.logged_id = res.data.logged_id;
                myHttpService.shareData = res.data;
                $scope.unread_noti_count = res.data.unread_noti_count;
                $scope.logged_user_info = res.data.logged_user_info;
                $rootScope.logged_user_info = res.data.logged_user_info;

                if(res.data.logged_user_info){
                    $scope.logged_user_info.birthdateObj = new Date(res.data.logged_user_info.birthdate);
                    $rootScope.logged_user_info.birthdateObj = new Date(res.data.logged_user_info.birthdate);
                }

                //add placeholder length base on active ad
                if($scope.active_ads.length){

                    if($scope.active_ads.length < 3){
                        $scope.adsPlaceholder = [0, 1, 2, 3];
                    }
                    else if($scope.active_ads.length < 5){
                        $scope.adsPlaceholder = [0, 1, 2];
                    }
                    else if($scope.active_ads.length < 7){
                        $scope.adsPlaceholder = [0, 1];
                    }
                    else if($scope.active_ads.length < 9){
                        $scope.adsPlaceholder = [0];
                    }
    
                }
                console.log(res.data, 'body_contents');
                //check if subscription valid or expired
                if ($scope.subscription_validity) {
                    if ($scope.subscription_validity.is_expired && (uri_1 != 'datingPlan' && uri_1 != 'payment_gateway' && uri_1 != '')) { 
                        $scope.SubscriptionInfo('');

                        setTimeout(function(){
                            window.location.href = window.base_url+'/datingPlan';
                        }, 3500);
                    }
                }

                // $scope.data = res.data;
            });
        }

        $scope.$watch(function () {
            return myHttpService.shareData;
        }, function (newVal) {
            $scope.notifications = newVal.notifications;
            $scope.unread_noti_count = newVal.unread_noti_count;
        });


        $scope.readyToDateModal = function (items) {
            console.log(items, 'wow');
            // var parentElem = parentSelector ?
            // angular.element($document[0].querySelector('.modal-demo ' + parentSelector)) : undefined;
            var modalInstance = $uibModal.open({
                animation: true,
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: 'readyToDateModal.html',
                controller: 'ModalReadyToDateCtrl',
                // controllerAs: '$scope',
                size: 'lg',
                windowClass: 'compatible-modal',
                // appendTo: parentElem,
                resolve: {
                    items: function () {
                        return items ? items : {};
                    }
                }
            });

            modalInstance.result.then(function (userAction) {
            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });
        };

        $scope.areYouReadyToDate = function (answer) {
            if (answer) {
                $scope.isReadyToDate.answer = true;
                $scope.readyToDateModal();
            }
            else {
                $scope.isReadyToDate.answer = answer;
            }
        }


        $scope.searchByNameModal = function (size, parentSelector) {
            var parentElem = parentSelector ?
                angular.element($document[0].querySelector('.modal-demo ' + parentSelector)) : undefined;
            var modalInstance = $uibModal.open({
                animation: true,
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: 'searchByNameModal.html',
                controller: 'ModalSearchByNameCtrl',
                // controllerAs: '$scope',
                size: 'lg',
                windowClass: 'compatible-modal',
                appendTo: parentElem,
                resolve: {
                    items: function () {
                        return $scope.searchByName;
                    }
                }
            });

            modalInstance.result.then(function (userAction) {
                console.log(userAction, 'userAction');
                if (userAction == 'add') {
                    $scope.addUser($scope.data);
                }
                else if (userAction == 'flirt') {

                }
                else if (userAction == 'message') {

                }
            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });
        };

        $scope.inviteFriendsModal = function (size, parentSelector) {
            var parentElem = parentSelector ?
                angular.element($document[0].querySelector('.modal-demo ' + parentSelector)) : undefined;
            var modalInstance = $uibModal.open({
                animation: true,
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: 'inviteFriendsModal.html',
                controller: 'ModalInviteFriendsCtrl',
                // controllerAs: '$scope',
                size: 'lg',
                windowClass: 'compatible-modal',
                appendTo: parentElem,
                resolve: {
                    items: function () {
                        return {};
                    }
                }
            });

            modalInstance.result.then(function (userAction) {
                console.log(userAction, 'userAction');
                if (userAction == 'add') {
                    $scope.addUser($scope.data);
                }
                else if (userAction == 'flirt') {

                }
                else if (userAction == 'message') {

                }
            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });
        };


        $scope.randomCompatibleModal = function (size, parentSelector) {
            var parentElem = parentSelector ?
                angular.element($document[0].querySelector('.modal-demo ' + parentSelector)) : undefined;
            var modalInstance = $uibModal.open({
                animation: true,
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: 'randomCompatibleModal.html',
                controller: 'ModalRandomCompatibleCtrl',
                // controllerAs: '$scope',
                size: 'lg',
                windowClass: 'compatible-modal',
                appendTo: parentElem,
                resolve: {
                    items: function () {
                        return {};
                    }
                }
            });

            modalInstance.result.then(function (user) {

                console.log(user, 'Are we compitable?');

                if (user.userAction == 'flirt') {
                    $rootScope.flirtEmojiModal(user, $scope.logged_user_info);
                }
                else if (user.userAction == 'message') {
                    $scope.createSMS(user.id, user.firstName);
                }
            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });
        };


        $rootScope.flirtEmojiModal = function (currUser, loggedUser) {
                console.log('modallcurrUser',currUser);
                console.log('modalloggedUser',loggedUser);
            var _toItem = {
				username: window.uri_3,
				logged_user: loggedUser,
				user: currUser
            };

            var modalInstance = $uibModal.open({
                animation: true,
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: 'flirtEmojiModal.html',
                controller: 'flirtEmojiModalCtrl',
                // controllerAs: '$scope',
                size: '', //'lg',
                windowClass: 'compatible-modal',
                // appendTo: parentElem,
                resolve: {
                    items: function () {
                        return _toItem;
                    }
                }
            });

            modalInstance.result.then(function (userAction) {
                console.log(userAction, 'flirtEmojiModal');
            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });
        };

        $scope.viewNoti = function (noti) {


            if (!noti.notif_status) {
                $scope.unread_noti_count -= 1;
                myHttpService.post('notifications_new', {
                    id: noti.notif_id
                }).then(function (res) {
                    console.log(res);
                    noti.notif_status = true;

                });
            }

            $timeout(function () {
                $scope.notifActions(noti.notif_type, noti);
            }, 200);


        }

        $scope.markAllNotiRead = function () {
            myHttpService.post('notifications', {
                is_read: 1
            }).then(function (res) {
                console.log(res);
                $scope.unread_noti_count = 0;
                $scope.notifications.forEach(function (element) {
                    element.is_read = 1;
                });
            });
        }


        $scope.notifActions = function (type, data) {
            switch (type) {
                case 'visit_profile':
                    window.location.href = base_url + '/user/profile/' + data.from_info.username;
                    break;
                case 'APPOINTMENT':
                    if (data.notifAppOnly !== "") {
                        $scope.viewAppointmentActions(data);
                    } else {
                        $scope.viewAppointment();

                    }
                    break;
                default:

            }

        };


        /*------------ THIS BLOCK OF CODE'S IS FOR APPOINTMENT -----
        |  Function viewAppointment, asyncAppointment,readDetaildAppointment,reusableNgConfirmAppointment
        |     Author: MARK
        |  Purpose:  ViewList,ViewDetails,Reply Appointment
        |  Returns:objectArray inspired to FRONTEND API STRUCTURE  minimize load pages
        *------------------------------------------------------*/
        $scope.storeAppointment = [];
        $scope.viewAppointment = function () {
            myHttpService.get('getAppoinment').then(function (res) {
                $scope.asyncAppointment(res.data.appointment);
                $scope.storeAppointment = res.data.appointment;
            });
        };

        $scope.asyncAppointment = function (AppointmentData) {
            $scope.reusableNgConfirmAppointment('My Appointment',
                'appointment-list-layout',
                function ($scoped) {
                    var self = this;
                    $scoped.AppointmentList = AppointmentData;
                    $scoped.orderList = "appDesc";
                    $scoped.appointMentStatus;
                    $scoped.lunchDetailsAppointment = function (data) {
                        $scope.readDetaildAppointment(data, self);
                    };
                });
        };

        $scope.readDetaildAppointment = function (AppointmentData, grandParent) {
            $scope.reusableNgConfirmAppointment('',
                'appointment-view-layout',
                function ($scoped) {
                    var self = this;


                    $scoped.AppointmentDetail = AppointmentData;
                    console.log(AppointmentData.appStatus);
                    $scoped.declineAppointment = function (appId) {
                        // $scope.actionDeclineAppointment(appID, AppointmentData, self, grandParent);
                        $scope.saveAppointmentAction('Sorry mate, maybe next time.', appId, 'R', self, grandParent);
                    };
                    $scoped.acceptAppointment = function (appId) {

                        // $scope.actionAcceptAppointment(appId, AppointmentData, self, grandParent);
                        $scope.saveAppointmentAction('I\'m happy to ignore you!', appId, 'A', self, grandParent);

                    };
                }, {});
        };

        $scope.actionDeclineAppointment = function (id, AppointmentData, spcModal, grandParent) {
            $scope.reusableNgConfirmAppointment('Reasons',
                'appointment-actions-layout',
                function ($scoped) {
                    var self = this;
                    $scoped.reasonTitle = "Give a polite reasons why to decline.";
                    $scoped.reasonType = "error";
                    $scoped.fontAwesome = "fa-frown-o";
                    $scoped.appID = id;

                }, {

                    saveBtn: {
                        text: 'Submit',
                        btnClass: 'btn-red icons-btns',
                        action: function (scoped) {
                            $scope.saveAppointmentAction(scoped.text, id, 'R', spcModal, self, grandParent);
                        }
                    },

                    closeBtn: {
                        text: 'cancel',
                        action: function (scoped) {
                        }
                    }
                });

        };

        $scope.actionAcceptAppointment = function (id, AppointmentData, spcModal, grandParent) {
            $scope.reusableNgConfirmAppointment('Message',
                'appointment-actions-layout',
                function ($scoped) {
                    var self = this;
                    $scoped.reasonTitle = "Confirmation Message";
                    $scoped.reasonType = "success";
                    $scoped.fontAwesome = "fa-smile-o";
                    $scoped.appID = id;

                }, {
                    saveBtn: {
                        text: 'Submit',
                        btnClass: 'btn-green icons-btns',
                        action: function (scoped) {
                            $scope.saveAppointmentAction(scoped.text, id, 'A', spcModal, self, grandParent);
                        }
                    },

                    closeBtn: {
                        text: 'cancel',
                        action: function (scoped) {
                        }
                    }
                }
            );
        };

        $scope.saveAppointmentAction = function (msg, AppID, type, parent, grandParent) {
            $scope.storeAppointment.forEach(function (item) {
                if (item.appID === AppID) {
                    $scope.updateAppointment({
                        'appID': AppID,
                        'msg': msg,
                        'toID': item.fromInfo.id,
                        'actType': type
                    }, parent, grandParent, type);
                }
            });
        };

        $scope.updateAppointment = function (params, parent, grandParent, messageType) {
            myHttpService.post('saveAppResponse', params).then(function (res) {
                console.log(res);
                if (res.data.trans) {

                    var colorType = 'red';
                    var iconType = 'fa fa-frown-o';
                    var contentType = 'Appointment Rejected successfully.';
                    var recipientGrandParent = 'Declined';

                    if (messageType == 'A') {
                        colorType = 'green';
                        iconType = 'fa fa-smile-o';
                        contentType = 'Appointment Accepted successfully.';
                        recipientGrandParent = 'Accepted'
                    }

                    $ngConfirm({
                        title: 'Alert',
                        icon: iconType,
                        theme: 'modern',
                        type: colorType,
                        content: contentType,
                        animation: 'scale',
                        closeAnimation: 'scale',
                        buttons: {

                            close: function () {
                                parent.close();
                                var mainAppID = grandParent.$content.find('#IdappID').val();
                                grandParent.$content.find('#' + mainAppID + '-appointMentStatus').html(recipientGrandParent);
                            }
                        },
                    })
                }
            });

        // $scope.saveAppointmentAction = function (msg, AppID, type, parent, child, grandParent) {
        //     $scope.storeAppointment.forEach(function (item) {
        //         if (item.appID === AppID) {
        //             $scope.updateAppointment({
        //                 'appID': AppID,
        //                 'msg': msg,
        //                 'toID': item.fromInfo.id,
        //                 'actType': type
        //             }, parent, child, grandParent, type);
        //         }
        //     });
        // };
        //
        // $scope.updateAppointment = function (params, parent, child, grandParent, messageType) {
        //     myHttpService.post('saveAppResponse', params).then(function (res) {
        //         console.log(res);
        //         if (res.data.trans) {
        //
        //             var colorType = 'red';
        //             var iconType = 'fa fa-frown-o';
        //             var contentType = 'Appointment Rejected successfully.';
        //             var recipientGrandParent = 'Declined';
        //
        //             if (messageType == 'A') {
        //                 colorType = 'green';
        //                 iconType = 'fa fa-smile-o';
        //                 contentType = 'Appointment Accepted successfully.';
        //                 recipientGrandParent = 'Accepted'
        //             }
        //
        //             $ngConfirm({
        //                 title: 'Alert',
        //                 icon: iconType,
        //                 theme: 'modern',
        //                 type: colorType,
        //                 content: contentType,
        //                 animation: 'scale',
        //                 closeAnimation: 'scale',
        //                 buttons: {
        //
        //                     close: function () {
        //                         parent.close();
        //                         child.close();
        //                         var mainAppID = grandParent.$content.find('#IdappID').val();
        //                         grandParent.$content.find('#' + mainAppID + '-appointMentStatus').html(recipientGrandParent);
        //                     }
        //                 },
        //             })
        //         }
        //     });

        };

        $scope.reusableNgConfirmAppointment = function (title, url, callBack, callBackbuttons = {}) {
            return $ngConfirm({
                title: title,
                contentUrl: base_url + '/public/js/appointment/' + url + '.html',
                columnClass: 'medium', // to make the width wider.
                animation: 'zoom',
                backgroundDismiss: true,
                backgroundDismissAnimation: 'glow',
                theme: 'material',
                lazyOpen: true,
                onScopeReady: callBack,
                buttons: callBackbuttons,

            })

        };

        $scope.viewAppointmentActions = function (data) {
            $scope.reusableNgConfirmAppointment('',
                'appointment-reply-layout',
                function ($scoped) {
                    var self = this;

                    $scoped.AppointmentDetail = data;
                    console.log("here", data);

                }, {});
        }
        /*------------ END BLOCK OF CODE'S FOR APPOINTMENT -----

         /*
         MARK 2017-11-27
         Message   count service*/
        $scope.image_name = "";
        $scope.image_src = base_url + '/public/images/mail/';
        $scope.getMessageCount = function () {
            $scope.count_new_sms = 0;
            myHttpService.get('messagescount', {
                id: $scope.logged_id
            }).then(function (res) {
                $timeout(function () {
                    if (res.data[0].total_count >= 1)
                        $scope.image_name = 'contact_email.gif';
                    else $scope.image_name = 'contact_email.png';
                    $('.v-msg').attr('src', $scope.image_src + $scope.image_name);
                }, 1000);
            });
        };

        /*END ================MARK   2017-11-27*/


        var init = function () {
            $scope.getData();
            $scope.getMessageCount();

        };

        $scope.crearSMSnew = function(id,messageID,fullname){
            $scope.messageChatdata = "";
          
            var segmentChat1 =  $scope.logged_user_info.id+''+id;
            var segmentChat2 =  id+''+$scope.logged_user_info.id;
            var pleaseWait  =  $ngConfirm({
                            icon: 'fa fa-spinner fa-spin',
                            title: 'Working!',
                            content: 'Processing your request!',
                            animation: 'zoom',
                            // backgroundDismiss: true,
                            backgroundDismissAnimation: 'glow',
                            theme: 'material',
                            lazyOpen: true,
                            onClose: function () {
                                // before the modal is hidden.
                                 $scope.smsViewDataChatNew($scope.messageChatdata,
                                                           segmentChat1,
                                                           segmentChat2,
                                                           id,
                                                           $scope.logged_user_info.id,
                                                           fullname);
                            },

                        })
             pleaseWait.open();

             myHttpService.getWithParams('messageChatnew', {
                    chatRoomID1:segmentChat1,
                    chatRoomID2:segmentChat2,
                    toID:id,
                }).then(function (res) {
                    console.log(res);
                    $scope.messageChatdata = res.data.chatDatas;
                    pleaseWait.close();
            });

        

        }

        $scope.smsViewDataChatNew = function(data,sender,receiver,userID,myID,fullname){
            console.log(data);
                $ngConfirm({
                title: 'MESSAGES',
                contentUrl: base_url + '/public/js/new-sms/sms-layout.html',
                columnClass: 'medium', // to make the width wider.
                animation: 'zoom',
                // backgroundDismiss: true,
                closeIcon: false,
                boxWidth: '500px',
                useBootstrap: false,
                backgroundDismissAnimation: 'glow',
                lazyOpen: true,
                onScopeReady: function($scoped){
                    var self = this;
                    $scoped.getMessagesData = data;
                    $scoped.sender = sender;
                    $scoped.receiver = receiver;

                    $scoped.userID = userID;
                    $scoped.myID = myID;
                    $scoped.fullname = fullname;
                    $('#userIDtext').val(userID);
                    $('#currentStateChatBox').val(1);
                    $scoped.backClose = function(){
                        self.close();
                    }
                    

                },
                onClose: function(){
                    $('#currentStateChatBox').val('');
                }

            })
        }




        /*====================START MESSAGE============================================*/
        /*Start added by MARK 2017*/
        $scope.emailContact = function (user_id) {

            var image_link = base_url + '/public/images/2.jpg';
            var data_link = base_url + '/api/mailTO';
            var count_even_odd = 0;
            var define_count_even_odd = "",
                define_image_pull_cool = "";
            var define_image_pull = "";

            $('.v-msg').attr('src', base_url + '/public/images/mail/contact_email.png');

            $.confirm({
                /*callback message reques*/
                type: 'purple',
                theme: 'material',

                columnClass: 'col-md-6 col-md-offset-3',
                content: function () {
                    var self = this;
                    return $.ajax({
                        url: data_link,
                        dataType: 'json',
                        data: {
                            'id': user_id
                        },
                        method: 'get'
                    }).done(function (response) {
                        
                        angular.forEach(response.usersTomailData, function (value, key) {
                            count_even_odd++;
                            // if (count_even_odd % 2 === 0) {
                            //     define_count_even_odd = "right";
                            //     define_image_pull = "darker";
                            //     define_image_pull_cool = 'class="right"';
                            //
                            // }
                            // else {
                                define_count_even_odd = "left";
                                define_image_pull_cool = "";
                                define_image_pull = "";
                            // }

                            var statuses = value.m_status == 0 ? 'animate-container' : '';
                            var fullNameSms = value.firstName + ', ' + value.lastName;

                            /*      self.setContentAppend('<div class="sms-container  ' + define_image_pull + ' ' + statuses + ' remove-' + value.m_id + '" onclick="viewFullMessages(\'' + value.id + '\',\'' + value.m_id + '\')">' +
                                      '<img src="' + value.photo + '" alt="Avatar" ' + define_image_pull_cool + ' style="width:100%;">' +
                                      '<p>Subject: ' + value.m_subject + '<br>Message: ' + value.m_message.substr(0, 5) + '...</p>' +
                                      '<span class="time-' + define_count_even_odd + '">' + value.message_time + '</span>' +
                                      '</div>'*/
                            self.setContentAppend('<div class="sms-container  ' + define_image_pull + ' ' + statuses + ' remove-' + value.m_id + '" onclick="viewFullMessages(\'' + value.id + '\',\'' + value.m_id + '\',\''+fullNameSms+'\')">' +
                                '<img src="' + response.usersTomailData[key].photo + '" alt="Avatar" ' + define_image_pull_cool + ' style="width:100%;">' +
                                '<p><br>' + value.firstName + ', ' + value.lastName + '</p>' +
                                '<span class="time-' + define_count_even_odd + '">' + value.gender + '</span>' +
                                '</div>'
                            );


                        });
                    }).fail(function () {
                        self.setContent('Something went wrong.');
                    });
                },
                bootstrapClasses: {
                    container: 'container',
                    containerFluid: 'container-fluid',
                    row: 'row',
                },

                title: 'Message To',
                closeIcon: true,
                draggable: true,
                icon: 'fa fa-envelope',
                theme: 'material',
                animation: 'scalex',
                type: 'red',
                closeAnimation: 'scale',
                buttons: {

                    close: function () {

                    }
                    // ,
                //  mail: {
                //     text: 'Creat new',
                //     btnClass: 'btn-blue submit-load',
                // }
                },
            })
        }




        var data_link = base_url + '/profile';
        $scope.createSMS = function (recipient_id, name) {
                $scope.crearSMSnew(recipient_id,0,name);
            // $.confirm({
            //     title: 'Send Messages to: <b>' + name + '</b>',
            //     content: '' +
            //     '<form action="" class="SMS_INFO">' +
            //     '<div class="form-group">' +
            //     '<label>Enter your subject here</label>' +
            //     '<input type="text" placeholder="Subject" class="subject form-control" required />' +
            //     '</div>' +
            //     '<div class="form-group">' +
            //     '<label>Enter your message here</label>' +
            //     '<textarea  placeholder="Message" class="messagecontent form-control" required></textarea>' +
            //     '</div>' +
            //     '</form>',
            //     closeIcon: true,
            //     draggable: true,
            //     icon: 'fa fa-envelope',
            //     theme: 'material',
            //     animation: 'scalex',
            //     type: 'red',
            //     closeAnimation: 'scale',
            //     buttons: {
            //         formSubmit: {
            //             text: 'Submit',
            //             btnClass: 'btn-blue submit-load',
            //             action: function () {
            //                 var subject = this.$content.find('.subject').val();
            //                 var message = this.$content.find('.messagecontent').val();
            //                 if (!subject) {
            //                     $.alert('provide a valid subject ');
            //                     return false;
            //                 }
            //                 if (!message) {
            //                     $.alert('provide a valid message ');
            //                     return false;
            //                 }

            //                 var form_data = {
            //                     subject: subject,
            //                     message: message,
            //                     recipient_id: recipient_id
            //                 };
            //                 $.confirm({
            //                     content: function () {
            //                         var self = this;
            //                         return myHttpService.post('sendmessage', form_data).then(function (res) {
            //                             if (res.data.message_r) {
            //                                 self.setContentAppend('Sent successfully!');
            //                                 self.setTitle('Message');
            //                             }
            //                         });
            //                     },
            //                     icon: 'fa fa-check',
            //                     theme: 'material',
            //                     animation: 'scalex',
            //                     buttons: {
            //                         close: function () {
            //                         },
            //                     }
            //                 });

            //             }
            //         },
            //         cancel: function () {
            //             //close
            //         },
            //     },
            //     onContentReady: function () {
            //         // bind to events
            //         var jc = this;
            //         this.$content.find('form').on('submit', function (e) {
            //             // if the user submits the form by pressing enter in the field.
            //             e.preventDefault();
            //             jc.$$formSubmit.trigger('click'); // reference the button and click it
            //         });
            //     }
            // });


        }


        $scope.gotoliveChat = function (id) {
            window.location.href = base_url + '/speeddating/' + id;
        }

        $scope.winkuser = function(data){
            $scope.showToast('You sent a wink to ' + data.firstName);

                sendNotification($scope.logged_user_info.id,
                                $scope.logged_user_info.firstName,
                                data.id,'wink');
        }

        $scope.moreInfoModal = function () {

            var modalInstance = $uibModal.open({
                animation: true,
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: 'moreInfoModal.html',
                controller: 'ModalMoreInfoCtrl',
                size: 'lg',
                windowClass: 'info-modal',
                resolve: {
                    items: function () {
                        return null;
                    }
                }
            });

            modalInstance.result.then(function (userAction) {
            }, function () {
                $log.info('xlo clos info modal');
            });
        };


        $scope.SubscriptionInfo = function (name) {

            var modalInstance = $uibModal.open({
                animation: true,
                ariaLabelledBy: 'modal-title',
                ariaDescribedBy: 'modal-body',
                templateUrl: 'SubscriptionDetails.html',
                controller: 'ModalMoreInfoCtrl',
                size: 'lg',
                windowClass: 'compatible-modal',
                backdrop: 'static',
                keyboard: false,
                resolve: {
                    items: function () {
                        return name ? name : {};
                    }
                }
            });

            modalInstance.result.then(function (userAction) {

            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });
        };


        /*================================================================*/
        /*END  added by MARK 2017*/


        /*
            'ADD APPOINTMENT TO USER-PROFILE'
        */

        $scope.newAppointment = function(userInfos){

            myHttpService.getWithParams('getTimeAvailability',{'ids':userInfos.id}).then(function (res) {
                    $scope.viewLayoutAppoinment(res.data,userInfos,res.data.defaultTime);     
                });


        }

        
    $scope.viewLayoutAppoinment = function (dataAvialable,userData,defaultTime) {
         var itr = moment.twix(new Date(defaultTime[0].def_timeFrom),
                                new Date(defaultTime[0].def_timeTo)).iterate("days");

         var itr2 = moment.twix(new Date(defaultTime[0].def_timeFrom),
                                new Date(defaultTime[0].def_timeTo)).iterate("days");
                var range=[];
                var fullDay=[];
                while(itr.hasNext()){

                    range.push(itr.next().format("D-MMM-YYYY"));
                   
                    
                }
                  while(itr2.hasNext()){

                     fullDay.push(itr2.next().format("dddd"));
                  }


            $ngConfirm({
                title:'',
                contentUrl:base_url+'/public/js/appointment/appointment-layout.html',
                boxWidth: '450px',
                useBootstrap: false,
                animation: 'zoom',
                backgroundDismiss: true,
                backgroundDismissAnimation: 'glow',
                theme: 'material',
                type:'purple',
                lazyOpen: true,
                 onScopeReady: function ($scoped) {
                    var self = this;
                    var counter = 0;
                       $scoped.incrementingData =counter;
                       $scoped.allAvailTimelength = dataAvialable.avail.length;
                       $scoped.allAvailTime = dataAvialable;
                       $scoped.userInfo = userData;

                       $scoped.defaultDay = fullDay;
                       $scoped.defaultDate = range;
                       $scoped.defaultTime = defaultTime[0].def_time;



                       /*DefaultTime*/
                        $scoped.Defnext = function () {
                            counter++;
                            if (counter >= range.length) {
                                counter = range.length;
                                return false;
                            }
                             $scoped.incrementingData = counter;
                       };

                       /*end DefaultTime*/



                       $scoped.previous = function () {
                            counter--;
                                if (counter < 0) {
                                        counter = 0;
                                    return false;
                                }
                                console.log(counter);
                             $scoped.incrementingData = counter;
                        
                       };
                       $scoped.next = function () {
                            counter++;
                            if (counter >= dataAvialable.avail.length) {
                                counter = dataAvialable.avail.length;
                                return false;
                            }
                            console.log(counter);
                             $scoped.incrementingData = counter;
                       };
                       $scoped.getTimes = function(times,index){
                                
                                $(".list-times").css("background-color","#c6c6c6");
                                $(".act-"+index).css("background-color","red");
                            
                                $scoped.fetchTime =  times.Usertime;
                               
                       }
                       $scoped.saveData = function(){
                        var formDatas = $("#appointment-form").serialize();
                        console.log(formDatas);

                                $.ajax({
                                    url: base_url+'/api/saveAppointmentNew',
                                    dataType: 'json',
                                    data:formDatas,
                                    method: 'POST',
                            
                                }).done(function (response) {
                                
                                    $ngConfirm({
                                                title: 'Hi',
                                                icon: 'fa fa-smile-o',
                                                theme: 'modern',
                                                type: 'blue',
                                                content: 'Appointment successfully send to.'+userData.firstName,
                                                animation: 'scale',
                                                closeAnimation: 'scale',
                                                buttons: {
                                                   
                                                    close: function () {
                                                        self.close();
                                                    }
                                                },
                                            })

                                }).fail(function () {
                                    alert('Something went wrong.');
                                });
                            
                       }

                // http://localhost/seriousdatings/online_chat?user_id=163&action_type=voice

                        $scoped.callMeNow = function(user_id,action_type){
                                    var UrLs = '/online_chat'
                                        UrLs +='?user_id='+user_id;
                                        UrLs +='&action_type='+action_type
                                    var win = window.open(myHttpService.url+UrLs, '_blank');
                                    win.focus();
                        }
                        $scoped.blockUser = function(u){
                            console.log(u);
                            var fullName = u.firstName+' '+u.lastName;
                            myHttpService.post('speedBlock', u).then(function(res){
                                console.log(res);
                                if(res.data.trans){

                                    $ngConfirm({
                                                title: fullName,
                                                icon: 'fa fa-check-circle',
                                                theme: 'modern',
                                                type: 'red',
                                                content: res.data.message,
                                                animation: 'scale',
                                                closeAnimation: 'scale',
                                                buttons: {
                                                   
                                                    close: function () {
                                                        self.close();
                                                         $(".removable-"+u.id).slideUp(3000);
                                                         $(".markerID-"+u.id).css("display","none");
                                                         if(typeof(parentCOnfirm) !== 'undefined'){
                                                            parentCOnfirm.close();
                                                         } 
                                                    }
                                                },
                                           });

                                  
                                }
                            });
                        }



                 }
            });

    };

        init();


    }
]);


ngApp.controller('ModalMoreInfoCtrl', ['$scope', 'items', '$uibModalInstance', function ($scope, items, $uibModalInstance) {
    $scope.nameFirst = items;
    $scope.closeModal = function () {
        $uibModalInstance.close();
    }
    $scope.cancel = function () {

        // $scope.SubscriptionInfo(items);
    }
    $scope.redirectToPlan = function () {
        window.location.href = base_url + '/datingPlan';

    }

}]);


ngApp.controller('ModalCompatibleDetailsCtrl', ['$scope', '$uibModalInstance', 'items', 'myHttpService', function ($scope, $uibModalInstance, items, myHttpService) {
    $scope.items = items;
    $scope.isLoading = false;

    $scope.userAction = function (m) {
        $uibModalInstance.close(m);
    };
    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

}]);

ngApp.controller('ModalRandomCompatibleCtrl', ['$scope', '$uibModalInstance', 'items', 'myHttpService', '$uibModal', '$log', '$document', function ($scope, $uibModalInstance, items, myHttpService, $uibModal, $log, $document) {
    $scope.items = {};
    $scope.isLoading = false;
    console.log(items);

    $scope.userAction = function (userAction = 'close') {
        $scope.items.user.userAction = userAction;

        if (userAction == 'add') {
            $scope.addUserAsFriend($scope.items.user);
        }
        else if (userAction == 'flirt') {
            $uibModalInstance.close($scope.items.user);
        }
        else if (userAction == 'message') {
            $uibModalInstance.close($scope.items.user);
        }
        else if (userAction == 'close') {
            window.location.href = base_url + '/user/profile/' + $scope.items.user.username;
        }
        // $uibModalInstance.close(m);
    };


    $scope.compatibleDetailsModal = function (items) {
        console.log(items, 'wow');
        // var parentElem = parentSelector ?
        // angular.element($document[0].querySelector('.modal-demo ' + parentSelector)) : undefined;
        var modalInstance = $uibModal.open({
            animation: true,
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: 'compatibleDetailsModal.html',
            controller: 'ModalCompatibleDetailsCtrl',
            // controllerAs: '$scope',
            size: 'lg',
            windowClass: 'compatible-modal',
            // appendTo: parentElem,
            resolve: {
                items: function () {
                    return items ? items : {};
                }
            }
        });

        modalInstance.result.then(function (data) {
            $uibModalInstance.close(data);

        }, function () {
            $log.info('Modal dismissed at: ' + new Date());
        });
    };


    $scope.addUserAsFriend = function (u) {
        $scope.activeData = u;
        u.is_friend = !u.is_friend;

        if (!u.is_friend) {
            var action = myHttpService.post('delete_friend', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully removed.';
                $scope.showToast(mess);
            });
        }
        else {
            myHttpService.post('add_friend', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully picked up.';
                $scope.showToast(mess);
            });
        }

    }

    $scope.getData = function () {
        $scope.isLoading = true;
        myHttpService.get('random_compatible').then(function (res) {
            console.log(res.data);
            $scope.isLoading = false;
            $scope.items = res.data;
        });
    };

    var init = function () {
        $scope.getData();
    }
    init();

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

}]);


ngApp.controller('ModalReadyToDateCtrl', ['$scope', '$uibModalInstance', 'items', 'myHttpService', function ($scope, $uibModalInstance, items, myHttpService) {
    $scope.items = items;
    $scope.questions = [];
    $scope.isLoading = false;
    $scope.currentIndex = 0;
    $scope.currentQuestion = {};
    $scope.showAnswer = false;

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

    $scope.choiceLength = 7;
    $scope.getNumber = function (num) {
        return new Array(num);
    }

    $scope.selectAsnwer = function (i) {
        $scope.currentQuestion.answer = i;
    }

    $scope.prevQuestion = function () {
        $scope.currentIndex -= 1;
        $scope.currentQuestion = $scope.questions[$scope.currentIndex];
    }

    $scope.getAnswerAverage = function (i) {
        var total = 0;
        var count = $scope.currentQuestion.average[i].count;
        $scope.currentQuestion.average.forEach(function (item) {
            total += item.count;
        });

        return Math.round((count / total) * 100);
    }

    $scope.nextQuestion = function () {
        var ans = $scope.currentQuestion.answer;
        if (typeof (ans) !== 'undefined') {
            if ($scope.currentIndex < 9) {
                $scope.currentIndex += 1;
                $scope.currentQuestion = $scope.questions[$scope.currentIndex];
                $scope.currentQuestion.submitted = true;
            }
            else {
                $scope.showAnswer = true;
            }
        }
        else {
            $scope.showToast('Select answer first.', 'danger');
        }

    }

    $scope.myScore = function () {
        var total = 7 * 10;
        var myscore = 10;
        $scope.questions.forEach(function (item) {
            myscore += item.answer;
            console.log(total, myscore);

        });


        return Math.round((myscore / total) * 100);

    }

    $scope.getData = function () {
        $scope.isLoading = true;
        console.log(window.base_url + '/public/plugins/angularjs/data/ready_questions.json');
        myHttpService.get('get_readydate_question').then(function (res) {
            $scope.questions = res.data;
            $scope.isLoading = false;

            $scope.currentQuestion = res.data[$scope.currentIndex];
            console.log(res, 'asdfsdf');
        });
    }

    var init = function () {
        $scope.getData();
    }
    init();
}]);

ngApp.controller('ModalSearchByNameCtrl', ['$scope', '$uibModalInstance', 'items', 'myHttpService', function ($scope, $uibModalInstance, items, myHttpService) {
    $scope.items = items;
    $scope.foundUsers = [];
    $scope.search = items;
    $scope.haveSearched = false;
    $scope.isLoading = false;

    console.log(items);

    $scope.userAction = function (m = 'close') {
        $uibModalInstance.close(m);
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

    $scope.viewProfile = function (u) {
        var link = base_url + '/user/profile/' + u.username;
        console.log(link);
        return link;
    }


    $scope.findUser = function () {
        $scope.isLoading = true;

        console.log($scope.search, 'search_name');

        myHttpService.getWithParams('search_byname', $scope.search).then(function (res) {
            $scope.foundUsers = res.data;
            $scope.haveSearched = true;
            $scope.isLoading = false;

            console.log(res.data, 'res.data aboudate');
        });
    }

    if ($scope.search.firstName != '') {
        $scope.findUser();
    }

}]);

ngApp.controller('ModalInviteFriendsCtrl', ['$scope', '$uibModalInstance', 'items', 'myHttpService', '$timeout', '$q', function ($scope, $uibModalInstance, items, myHttpService, $timeout, $q) {
    $scope.items = items;
    $scope.foundUsers = [];
    $scope.search = items;
    $scope.haveSearched = true;
    $scope.isLoading = false;
    $scope.googleContacts = [];
    $scope.googleIsLogged = false;
    $scope.fbIsLogged = false;
    $scope.fbContacts = [];
    $scope.fbData = {};
    $scope.selectedToInvite = 0;
    $scope.socialTypes = [{
        name: 'Facebook',
    }, {
        name: 'Google+',
    },
        // {
        //     name: 'Youtube',
        // },
        // {
        //     name: 'Pinterest',
        // },
        // {
        //     name: 'Instagram',
        // },
        // {
        //     name: 'Tumblr',
        // },
        // {
        //     name: 'LinkedIn',
        // }
    ];
    $scope.activeSocial = $scope.socialTypes[1];


    console.log(items);

    $scope.selectSocial = function (i) {
        $scope.activeSocial = $scope.socialTypes[i];
    }

    $scope.userAction = function (m = 'close') {
        $uibModalInstance.close(m);
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

    $scope.viewProfile = function (u) {
        var link = base_url + '/search/profile/' + u.id;
        console.log(link);
        return link;
    }

    $scope.selectAll = function (data) {
        data.forEach(function (el) {
            $scope.selectUser(el);
        });
    }

    $scope.sendInvite = function (data) {
        var loading = $.confirm({
            icon: 'fa fa-spinner fa-spin',
            title: 'Sending Invite..',
            content: 'Sit back, we are processing your request.',
            buttons: {
                close: {
                    text: 'Sending..',
                    action: function () {
                        return false;
                    }
                }
            }
        });

        var promises = [];


        data.forEach(function (el) {

            if (el.selected) {
                console.log(el, 'afsdf');
                promises.push(myHttpService.post('send_invite', el));
            }
        });

        $q.all(promises).then(function (results) {
            console.log(results, 'results');
            results.forEach(function (data, index, headers, config) {
                console.log(index, promises.length, index + 1); //data, index, headers, config);

                if (promises.length == (index + 1)) {
                    loading.close();
                    $.alert('Invite successfully sent.');
                }

            });
        });

    }

    $scope.connectFacebook = function () {
        var fb_data = JSON.parse(window.localStorage.getItem('fb_data'));
        $scope.fbData = fb_data;

        console.log(fb_data, 'fb_data');
        if (!fb_data) {
            checkLoginState();

            $timeout(function () {
                checkLoginState();
            }, 5000);
        }
        else {
            $scope.fbIsLogged = true;
            $scope.fbContacts = (typeof (fb_data.friends.data) !== 'undefined') ? fb_data.friends.data : [];
            console.log($scope.fbContacts, 'fbContacts');
        }
    }

    $scope.startGoogle = function () {
        // Client ID and API key from the Developer Console
        var CLIENT_ID = '653416927817-0ocqcmiprl9ni48v07i9nhmbluo388k1.apps.googleusercontent.com';
        var API_KEY = 'AIzaSyClo2KBtLJTc1kfEtm82iRq9cKE2R8dEXY';

        // Array of API discovery doc URLs for APIs used by the quickstart
        var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/people/v1/rest"];

        // Authorization scopes required by the API; multiple scopes can be
        // included, separated by spaces.
        var SCOPES = "https://www.googleapis.com/auth/contacts.readonly";

        var authorizeButton = document.getElementById('authorize-button');
        var signoutButton = document.getElementById('signout-button');
        var GoogleAuth; // Google Auth object.

        /**
         *  On load, called to load the auth2 library and API client library.
         */
        function handleClientLoad() {
            gapi.load('client:auth2', initClient);
        }

        /**
         *  Initializes the API client library and sets up sign-in state
         *  listeners.
         */
        function initClient() {
            gapi.client.init({
                apiKey: API_KEY,
                clientId: CLIENT_ID,
                discoveryDocs: DISCOVERY_DOCS,
                scope: SCOPES
            }).then(function () {
                // Listen for sign-in state changes.
                GoogleAuth = gapi.auth2.getAuthInstance();

                GoogleAuth.isSignedIn.listen(updateSigninStatus);

                // Handle the initial sign-in state.
                updateSigninStatus(GoogleAuth.isSignedIn.get());
                authorizeButton.onclick = handleAuthClick;
                signoutButton.onclick = handleSignoutClick;
            });
        }

        /**
         *  Called when the signed in status changes, to update the UI
         *  appropriately. After a sign-in, the API is called.
         */
        function updateSigninStatus(isSignedIn) {
            authorizeButton.style.display = 'block';
            signoutButton.style.display = 'none';
            $scope.googleIsLogged = false;

            if (isSignedIn) {
                authorizeButton.style.display = 'none';
                signoutButton.style.display = 'block';
                $scope.googleIsLogged = true;
                // handleSignoutClick();
                listConnectionNames();
            }
        }

        /**
         *  Sign in the user upon button click.
         */
        function handleAuthClick(event) {
            GoogleAuth.signIn();
        }

        /**
         *  Sign out the user upon button click.
         */
        function handleSignoutClick(event) {
            console.log(event, 'handleSignoutClick');
            GoogleAuth.signOut();
        }

        /**
         * Append a pre element to the body containing the given message
         * as its text node. Used to display the results of the API call.
         *
         * @param {string} message Text to be placed in pre element.
         */
        function appendPre(message) {
            var pre = document.getElementById('content');
            var textContent = document.createTextNode(message + '\n');
            pre.appendChild(textContent);
        }

        /**
         * Print the display name if available for 10 connections.
         */
        function listConnectionNames() {
            gapi.client.people.people.connections.list({
                'resourceName': 'people/me',
                'pageSize': 2000,
                'personFields': 'names,emailAddresses',
            }).then(function (response) {
                var connections = response.result.connections;
                appendPre('Connections:');

                console.log(connections, 'connections');
                var googleContacts = [];
                if (connections.length > 0) {
                    for (i = 0; i < connections.length; i++) {
                        var person = connections[i];
                        if (person.emailAddresses && person.emailAddresses.length > 0) {
                            var name = (person.names && person.names.length > 0) ? person.names[0].displayName : 'Unnamed';
                            var email = person.emailAddresses[0].value;
                            var d = {
                                name: name,
                                email: email
                            };
                            googleContacts.push(d);

                            // appendPre(person.emailAddresses[0].value);
                        }
                        else {
                            // appendPre("User has no email.");
                        }
                    }
                    $scope.googleContacts = googleContacts;
                    console.log($scope.googleContacts, 'googleContacts');

                }
                else {
                    appendPre('No upcoming events found.');
                }
            });
        }

        gapi.load('client:auth2', initClient);

        // return {
        //     handleClientLoad: handleClientLoad(),
        //     handleSignoutClick: handleSignoutClick(),
        //     handleAuthClick: handleAuthClick()
        // };

    };

    $scope.connectGoogle = function () {
        $('body').find('#authorize-button').click();
    }

    $scope.disconnectGoogle = function () {
        $('body').find('#signout-button').click();
    }

    $scope.selectUser = function (d) {
        d.selected = !d.selected;
        if (d.selected) {
            $scope.selectedToInvite += 1;
        }
        else {
            $scope.selectedToInvite -= 1;
        }
        // console.log($scope.selectedToInvite);
    }
    $scope.getData = function () {
        // $scope.isLoading = true;
        $scope.startGoogle();
    }

    $scope.getData();

}]);

ngApp.controller('videoRoomController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngConfirm', '$compile', 'uiCalendarConfig', function ($scope, $filter, myHttpService, $timeout, $ngConfirm, $compile, uiCalendarConfig) {

    $scope.blockUser = function (e) {
        console.log(e);
        $(e.currentTarget).closest('.list-group-item').hide();
    }

}]);


ngApp.controller('eventsController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngConfirm', '$compile', 'uiCalendarConfig', function ($scope, $filter, myHttpService, $timeout, $ngConfirm, $compile, uiCalendarConfig) {
    $scope.base_url = window.base_url;

    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    $scope.changeTo = 'Hungarian';
    /* event source that pulls from google.com */
    $scope.eventSource = {
        url: "http://www.google.com/calendar/feeds/usa__en%40holiday.calendar.google.com/public/basic",
        className: 'gcal-event', // an option!
        currentTimezone: 'America/Chicago' // an option!
    };
    /* event source that contains custom events on the scope */
    $scope.events = [
        //   {title: 'Beer Party',start: new Date(y, m, 1, 6, 0),end: new Date(y, m, 1, 22, 30),allDay: false},
        //   {title: 'Singles Meetup',start: new Date(y, m, d - 5, 10, 0),end: new Date(y, m, d - 5, 22, 30),allDay: false},
        //   {id: 999,title: 'Pizza Party',start: new Date(y, m, d - 3, 13, 0),end: new Date(y, m, d - 3, 22, 30),allDay: false},
        //   {id: 999,title: 'Random Event',start: new Date(y, m, d + 4, 15, 0),end: new Date(y, m, d + 4, 22, 30),allDay: false},
        //   {title: 'Admin Birthday Party',start: new Date(y, m, d + 1, 19, 0),end: new Date(y, m, d + 1, 22, 30),allDay: false},
        //   {title: 'Click for Google',start: new Date(y, m, 28),end: new Date(y, m, 29),url: 'http://google.com/'}
    ];

    console.log($scope.events, 'evns');


    /* event source that calls a function on every view switch */
    $scope.eventsF = function (start, end, timezone, callback) {
        var s = new Date(start).getTime() / 1000;
        var e = new Date(end).getTime() / 1000;
        var m = new Date(start).getMonth();
        var events = [{
            title: 'Feed Me ' + m,
            start: s + (50000),
            end: s + (100000),
            allDay: false,
            className: ['customFeed']
        }];

        if (typeof (callback) === 'function') {
            callback(events);
        }
    };

    $scope.calEventsExt = {
        color: '#f00',
        textColor: 'yellow',
        events: [{
            type: 'party',
            title: 'Lunch',
            start: new Date(y, m, d, 12, 0),
            end: new Date(y, m, d, 14, 0),
            allDay: false
        }, {
            type: 'party',
            title: 'Lunch 2',
            start: new Date(y, m, d, 12, 0),
            end: new Date(y, m, d, 14, 0),
            allDay: false
        }, {
            type: 'party',
            title: 'Click for Google',
            start: new Date(y, m, 28),
            end: new Date(y, m, 29),
            url: 'http://google.com/'
        }]
    };
    /* alert on eventClick */
    $scope.alertOnEventClick = function (date, jsEvent, view) {
        console.log('clickckck', date);
        $scope.alertMessage = date;

        window.location.href = $scope.base_url + '/events/details/' + date.id;

        // $ngConfirm({
        //     title: 'Event Summary',
        //     content: "<strong>{{alertMessage.title}}</strong> <br> Start time: {{alertMessage.start | date:'h:mma'}} @ {{alertMessage.start | date:'MM/dd/yyyy'}} <br> End time: {{alertMessage.end | date:'h:mma'}} @ {{alertMessage.end | date:'MM/dd/yyyy'}} <br><a href='{{base_url}}/events/details/{{alertMessage.id}}'>View more details</a>",
        //     scope: $scope,
        //     buttons: {
        //         close: function(scope, button){
        //             // closes the modal
        //         },
        //     }
        // });


    };
    /* alert on Drop */
    $scope.alertOnDrop = function (event, delta, revertFunc, jsEvent, ui, view) {
        $scope.alertMessage = ('Event Droped to make dayDelta ' + delta);
    };
    /* alert on Resize */
    $scope.alertOnResize = function (event, delta, revertFunc, jsEvent, ui, view) {
        $scope.alertMessage = ('Event Resized to make dayDelta ' + delta);
    };
    /* add and removes an event source of choice */
    $scope.addRemoveEventSource = function (sources, source) {
        var canAdd = 0;
        angular.forEach(sources, function (value, key) {
            if (sources[key] === source) {
                sources.splice(key, 1);
                canAdd = 1;
            }
        });
        if (canAdd === 0) {
            sources.push(source);
        }
    };
    /* add custom event*/
    $scope.addEvent = function (d) {
        $scope.events.push(d);
    };
    /* remove event */
    $scope.remove = function (index) {
        $scope.events.splice(index, 1);
    };
    /* Change View */
    $scope.changeView = function (view, calendar) {
        uiCalendarConfig.calendars[calendar].fullCalendar('changeView', view);
    };
    /* Change View */
    $scope.renderCalender = function (calendar) {
        if (uiCalendarConfig.calendars[calendar]) {
            uiCalendarConfig.calendars[calendar].fullCalendar('render');
        }
    };

    $scope.rerenderEvents = function (calendar) {
        if (uiCalendarConfig.calendars[calendar]) {
            uiCalendarConfig.calendars[calendar].fullCalendar('rerenderEvents');
        }
    };

    $scope.refreshEvents = function (calendar) {
        if (uiCalendarConfig.calendars[calendar]) {
            uiCalendarConfig.calendars[calendar].fullCalendar('refresh');
        }
    };

    /* Render Tooltip */
    $scope.eventRender = function (event, element, view) {
        element.attr({
            'tooltip': event.title,
            'tooltip-append-to-body': true
        });
        $compile(element)($scope);
    };


    /* config object */
    $scope.uiConfig = {
        calendar: {
            height: 500,
            editable: false,
            header: {
                left: 'today',
                center: 'title',
                right: 'prev,next'
            },
            eventClick: $scope.alertOnEventClick,
            eventDrop: $scope.alertOnDrop,
            eventResize: $scope.alertOnResize,
            eventRender: $scope.eventRender
        }
    };

    $scope.changeLang = function () {
        if ($scope.changeTo === 'Hungarian') {
            $scope.uiConfig.calendar.dayNames = ["Vasárnap", "Hétfő", "Kedd", "Szerda", "Csütörtök", "Péntek", "Szombat"];
            $scope.uiConfig.calendar.dayNamesShort = ["Vas", "Hét", "Kedd", "Sze", "Csüt", "Pén", "Szo"];
            $scope.changeTo = 'English';
        }
        else {
            $scope.uiConfig.calendar.dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
            $scope.uiConfig.calendar.dayNamesShort = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
            $scope.changeTo = 'Hungarian';
        }
    };
    /* event sources array*/
    $scope.eventSources = [$scope.events]; //, $scope.eventSource, $scope.eventsF];
    $scope.eventSources2 = [$scope.calEventsExt, $scope.eventsF, $scope.events];

    $scope.getEvents = function () {
        var type = (window.uri_3) ? window.uri_3 : 0;

        myHttpService.get('events/' + type).then(function (res) {
            // $scope.events = [];

            console.log(res.data, 'events');
            // $scope.events = res.data;

            angular.forEach(res.data, function (event, key) {
                console.log(event, key, 'kk');
                event.start = moment(event.start).toDate();
                event.end = moment(event.end).toDate();
                $scope.addEvent(event);
                // $scope.events.push(event);
            });
            console.log($scope.events, 'dd');

            $timeout(function () {
                $scope.renderCalender('myCalendar1');
                $scope.refreshEvents('myCalendar1');

            }, 1000);
        });
    }

    var init = function () {
        $scope.getEvents();
    }

    init();


}]);


ngApp.controller('eventDetailsController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngConfirm', function ($scope, $filter, myHttpService, $timeout, $ngConfirm) {
    $scope.user = {};
    $scope.event = {};
    $scope.getEventDetails = function () {
        var type = (window.uri_3) ? window.uri_3 : 0;

        myHttpService.get('events/details/' + type).then(function (res) {
            $scope.event = res.data.event;
            $scope.user = res.data.user;

            $scope.initMap($scope.event.lat, $scope.event.lng);
            console.log(res.data, 'events/details');

        });
    }

    $scope.joinEvent = function (max) {

        if ($scope.event.members.length == max) {
            $ngConfirm({
                title: 'Sorry!',
                content: 'Event already full.',
                // theme: 'dark', //'supervan' // 'material', 'bootstrap'
            });


            // $ngConfirm.alert('Event already full.');
            return false;
        }
        if (!$scope.event.joined) {
            $ngConfirm({
                title: 'Join',
                content: 'Confirm payment of $<strong>{{event.eventPrice}}</strong> for this event to join.',
                scope: $scope,
                buttons: {
                    yes: {
                        text: 'Confirm',
                        btnClass: 'btn-success',
                        action: function (scope, button) {
                            myHttpService.post('join_event', {
                                event_id: $scope.event.id,
                                user_id: $scope.user.id
                            }).then(function (res) {
                                console.log(res.data);
                                $scope.event.joined = true;
                                $scope.event.members.push($scope.user);
                            });
                        }
                    },
                    close: function (scope, button) {
                        // closes the modal
                    },
                }
            });

        }
        else {
            $ngConfirm({
                title: 'Leave',
                content: 'No refund if you leave event.',
                scope: $scope,
                buttons: {
                    yes: {
                        text: 'OK',
                        btnClass: 'btn-success',
                        action: function (scope, button) {
                            myHttpService.post('leave_event', {
                                event_id: $scope.event.id,
                                user_id: $scope.user.id,
                                '_method': 'DELETE'
                            }).then(function (res) {
                                console.log(res.data);
                                $scope.event.joined = false;

                                $scope.event.members = res.data;
                                // $scope.event.members.splice(-1, 1);
                            });

                        }
                    },
                    close: function (scope, button) {
                        // closes the modal
                    },
                }
            });


        }


    }
    $scope.initMap = function (lat, lng) {
        if ($('#map').length) {
            setTimeout(function () {
                var myLatLng = {
                    lat: parseFloat(lat),
                    lng: parseFloat(lng)
                };

                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 13,
                    center: myLatLng
                });

                var marker = new google.maps.Marker({
                    position: myLatLng,
                    map: map,
                    title: 'Hello World!'
                });
            }, 1000);
        }
    }

    var init = function () {
        $scope.getEventDetails();
    }

    init();


}]);

ngApp.controller('browseMemberController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngConfirm', function ($scope, $filter, myHttpService, $timeout, $ngConfirm) {
    $scope.isLoading = false;
    $scope.data = {};
    $scope.offset = 0;
    $scope.isEnd = false;
    $scope.base_url = window.base_url;
    $scope.perPage = 6;
    $scope.formData = {};

    $scope.next = function () {
        $scope.offset += $scope.perPage;
        $scope.getData($scope.offset);
    }
    $scope.previous = function () {
        $scope.offset -= $scope.perPage;
        $scope.isEnd = false;
        $scope.getData($scope.offset);
    }


    $scope.validationOptions = {
        ignore: [],
        rules: {},
        messages: {},
        rules: {},
        messages: {},
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


    $scope.sendMessage = function(i, u){
        window.location.href = window.base_url+'/online_chat?user_id='+u.id+'&action_type=text';
    }

    $scope.submitForm = function (form) {
        console.log(form.validate(), $scope.formData);
        if (form.validate()) {
            $scope.getData(0);
            $scope.isEnd = false;
        }
    };

    // $scope.getData = function(){
    //     $scope.isLoading = true;
    //     $scope.formData.search_type = ($scope.search.advance) ? 'advance' : '';
    //     myHttpService.getWithParams('search_user', $scope.formData).then(function(res){
    //         console.log(res);
    //         $scope.isLoading = false;
    //         $scope.data = res.data;
    //     });
    // }

    $scope.blockUser = function (i, u) {
        console.log(i, u);
        $scope.showToast('You have successfully blocked user.');
        $scope.data.users.splice(i, 1);

        myHttpService.post('block_user', u).then(function (res) {
            console.log()
        });
    }


    $scope.getData = function (offset) {
        $scope.isLoading = true;
        $scope.formData.offset = offset ? offset : 0;
        myHttpService.getWithParams('search_user', $scope.formData).then(function (res) {
            $scope.isLoading = false;

            if (!res.data.users.length) {
                $scope.isEnd = true;
                $scope.offset -= $scope.perPage;
                $scope.showToast('Nothing more to show.', 'warning');
            }
            else {
                $scope.data = res.data;
            }
            console.log(res.data, 'search_user');
        });
    }
    var init = function () {
        $scope.getData();
    }
    init();
}]);

ngApp.controller('aboutDateController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngBootbox', function ($scope, $filter, myHttpService, $timeout, $ngBootbox) {
    $scope.formData = {};

    var loadingModalOpt = {
        templateUrl: 'loading-modal.html',
        className: 'loading-modal',
        buttons: {}
    };

    $scope.validationOptions = {
        ignore: [],
        rules: {},
        messages: {},
        rules: {},
        messages: {},
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

    $scope.getData = function () {
        myHttpService.get('aboutdate').then(function (res) {
            $scope.formData = res.data;
            console.log(res.data, 'res.data aboudate');
        });
    }
    var init = function () {
        $scope.getData();
    }
    init();

    $scope.submitForm = function (form) {
        $scope.formData.fatherBorn = $scope.formData.motherBorn;
        console.log(form, $scope.formData);
        if (form.validate()) {

            if ($scope.formData.age_from > $scope.formData.age_to) {
                $ngBootbox.alert('Opps! Between age field must be smaller than to field.');
                return false;
            }
            $ngBootbox.customDialog(loadingModalOpt);

            myHttpService.post('aboutdate', $scope.formData).then(function (res) {
                console.log('aboutdate', res);
                $ngBootbox.hideAll();
                $timeout(function () {
                    $scope.showToast('Details about your date successfully saved.');
                }, 300);
                $timeout(function () {

                    if ($scope.logged_user_info.verified) {
                        window.location.href = base_url + '/profile_settings';

                    }
                    else {
                        window.location.href = base_url + '/users/' + res.data.user_id + '/select_mates';

                    }

                }, 2500);
            }, function (err) {
                $ngBootbox.hideAll();
            });
        }
    }

}]);

ngApp.controller('profileSettingsController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngConfirm', function ($scope, $filter, myHttpService, $timeout, $ngConfirm) {
    $scope.emailInUse = 0;
    $scope.usernameInUse = 0;
    $scope.profileType = null;

    $scope.myImage = '';
    $scope.myCroppedImage = '';
    $scope.imgEdit = true;
    $scope.imgDone = {
        done: false
    };

    // $scope.logged_user_info = $scope.logged_user_info;

    var handleFileSelect = function (evt) {
        var file = evt.currentTarget.files[0];
        var reader = new FileReader();
        reader.onload = function (evt) {
            $scope.$apply(function ($scope) {
                $scope.myImage = evt.target.result;
            });
        };
        reader.readAsDataURL(file);
    };
    angular.element(document.querySelector('#fileInput')).on('change', handleFileSelect);

    $scope.deleteAccount = function () {

        $ngConfirm({
            title: 'Delete Account',
            content: 'Are you sure you want to delete your SeriousDatings account permanently?',
            scope: $scope,
            buttons: {
                sayBoo: {
                    text: 'Confirm',
                    btnClass: 'btn-danger',
                    action: function (scope, button) {
                        console.log('yeah');
                        myHttpService.post('delete_account', {}).then(function (res) {
                            console.log(res.data);
                            $.alert({
                                title: (res.data.status == 'ok') ? 'Account Deleted' : 'Account Admin',
                                content: res.data.message,
                                onDestroy: function () {
                                    // when the modal is removed from DOM
                                    window.location.reload(true);
                                },
                            });

                        });
                    }
                },
                cancel: {
                    text: 'Cancel',
                    btnClass: 'btn-default',
                    action: function (scope, button) {
                        console.log('yeah');
                    }
                },

            }
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
        console.log($scope.logged_user_info, '$scope.imgEdit');

        $scope.logged_user_info.birthdate = $filter('date')($scope.logged_user_info.birthdateObj, "yyyy-MM-dd");
        if ($scope.profileType)
            $scope.logged_user_info.photoType = $scope.profileType;
        else
            $scope.logged_user_info.photoType = 3;

        // console.log(registerform, $scope.logged_user_info);
        if (registerform.validate() && !$scope.emailInUse && !$scope.logged_user_infonameInUse) {
            // $scope.logged_user_info.photo = $scope.myCroppedImage;
            // if ($scope.imgEdit) {
            //     $scope.showToast('Please upload an image.', 'danger');
            //     return false;
            // }


            // $ngBootbox.customDialog(loadingModalOpt);

            // myHttpService.post('signup', $scope.user)
            // .then(function(res){
            //     console.log(res);
            //     $ngBootbox.hideAll();
            //     if(res.data.result == 'ok'){
            //         $ngBootbox.hideAll();
            //         $timeout(function(){
            //             $scope.showToast(res.data.message);
            //         }, 300);
            //         $timeout(function(){
            //             window.location.href = window.base_url+'/users/'+res.data.username+'/about_your_date';
            //         }, 2500);

            //     }
            //     else{
            //         $ngBootbox.alert(res.data.message);
            //     }
            // }, function(err){
            //     console.log(err);
            //     var box = $ngBootbox.alert('Something went wrong.');
            //     $ngBootbox.hideAll();
            // });
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

    $scope.getInitImage = function () {
        myHttpService.getCustom(base_url + '/public/plugins/angularjs/data/signup_img.json').then(function (res) {
            console.log(res.data, 'ress image');
            $scope.myCroppedImage = res.data.image;

        });
    }

    var init = function () {
        $scope.getInitImage();
    }


    $scope.timeAvailability = function () {
        $ngConfirm({
            title: ' Appointment Availability',
            contentUrl: base_url + '/public/js/appointment/appointment-availability.html',
            columnClass: 'medium', // to make the width wider.
            animation: 'zoom',
            backgroundDismiss: true,
            backgroundDismissAnimation: 'glow',
            theme: 'material',
            lazyOpen: true,
            onScopeReady: function ($scoped) {
                var self = this;

                /*datePickerBootstrap Start Here*/
                $scoped.today = function () {
                    $scoped.dt = new Date();
                };
                $scoped.today();

                $scoped.clear = function () {
                    $scoped.dt = null;
                };

                $scoped.options = {
                    customClass: getDayClass,
                    minDate: new Date(),
                    showWeeks: true
                };

                // Disable weekend selection
                function disabled(data) {
                    var date = data.date,
                        mode = data.mode;
                    return mode === 'day' && (date.getDay() === 0 || date.getDay() === 6);
                }

                $scoped.toggleMin = function () {
                    $scoped.options.minDate = $scoped.options.minDate ? null : new Date();
                };

                $scoped.toggleMin();

                $scoped.setDate = function (year, month, day) {
                    $scoped.dt = new Date(year, month, day);
                };

                var tomorrow = new Date();
                tomorrow.setDate(tomorrow.getDate() + 1);
                var afterTomorrow = new Date(tomorrow);
                afterTomorrow.setDate(tomorrow.getDate() + 1);
                $scoped.events = [
                    {
                        date: tomorrow,
                        status: 'full'
                    },
                    {
                        date: afterTomorrow,
                        status: 'partially'
                    }
                ];

                function getDayClass(data) {
                    var date = data.date,
                        mode = data.mode;
                    if (mode === 'day') {
                        var dayToCheck = new Date(date).setHours(0, 0, 0, 0);

                        for (var i = 0; i < $scoped.events.length; i++) {
                            var currentDay = new Date($scoped.events[i].date).setHours(0, 0, 0, 0);

                            if (dayToCheck === currentDay) {
                                return $scoped.events[i].status;
                            }
                        }
                    }

                    return '';
                }

                /*datePickerBootstrap End Here*/
                $scoped.timeButton = [];
                $scoped.arrUnique;
                $scoped.afterAdd = true;
                $scoped.colorSBg = [];

                $scoped.addTime = function () {

                    var timeFrom = angular.element('#timeFrom').val();
                    var fromAMPM = angular.element('#fromAMPM').val();
                    var timeTo = angular.element('#timeTo').val();
                    var toAMPM = angular.element('#toAMPM').val();
                    var Formatted = timeFrom + '' + fromAMPM + '-' + timeTo + '' + toAMPM;
                    angular.forEach($scoped.timeButton, function (item) {
                        console.log("sss", item);
                        if (item == Formatted) {
                            $ngConfirm('Time Already Added.');
                            return false;
                        }
                    });

                    $scoped.timeButton.push(Formatted);
                    $scoped.arrUnique = $scoped.unique($scoped.timeButton);

                    $scoped.afterAdd = false;
                    $scoped.colorSBg.push($scoped.randomCOlors());


                }
                $scoped.unique = function (origArr) {
                    var newArr = [],
                        origLen = origArr.length,
                        found, x, y;

                    for (x = 0; x < origLen; x++) {
                        found = undefined;
                        for (y = 0; y < newArr.length; y++) {
                            if (origArr[x] === newArr[y]) {
                                found = true;

                                break;
                            }
                        }
                        if (!found) {
                            newArr.push(origArr[x]);
                        }
                    }
                    return newArr;
                }
                $scoped.removeTimed = function (data) {
                    var index1 = $scoped.arrUnique.indexOf(data);
                    var index2 = $scoped.timeButton.indexOf(data);

                    $scoped.arrUnique.splice(index1, 1);
                    $scoped.timeButton = $scoped.arrUnique;

                    console.log("timeButton", $scoped.timeButton);
                    console.log("arrUnique", $scoped.arrUnique);
                }

                $scoped.randomCOlors = function () {
                    var letters = '0123456789ABCDEF';
                    var color = '#';
                    for (var i = 0; i < 6; i++) {
                        color += letters[Math.floor(Math.random() * 16)];
                    }
                    return color;
                }
                $scoped.saveTimeAvailabityBtn = function () {

                    var dateAv = angular.element('#dateFull').val();
                    var timeAll = $scoped.arrUnique;

                    myHttpService.post('saveTimeAvailabity', {
                        dateAvp: dateAv,
                        timeAllp: timeAll
                    })
                        .then(function (res) {
                            console.log(res);
                            if (res.data.trans) {

                                $ngConfirm({
                                    title: 'Alert',
                                    icon: 'fa fa-smile-o',
                                    theme: 'modern',
                                    type: 'blue',
                                    content: 'Appointment availability successfully save.',
                                    animation: 'scale',
                                    closeAnimation: 'scale',
                                    buttons: {

                                        close: function () {
                                            self.close();
                                        }
                                    },
                                });


                            }

                        }, function (err) {
                            console.log(err);
                        });
                }


            },
        })
    }


    init();


}]);

ngApp.controller('selectMateController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngBootbox', 'profileService', function ($scope, $filter, myHttpService, $timeout, $ngBootbox, profileService) {
    $scope.data = {};
    $scope.activeData = {};
    $scope.userData = null;
    $scope.isLoading = false;

    $scope.getData = function () {
        // myHttpService.get('selectmates').then(function(res){
        //     $scope.data = res.data;
        //     var midd = Number((res.data.users.length/2).toFixed(0)) - 1;

        //     $scope.activeData = $scope.data.users[midd];

        //     $timeout(function(){

        //         console.log(res.data, 'res.data selectmates');
        //         $(document).find("#mate-carousel").flipster({
        //             style: 'carousel',
        //             spacing: -0.5,
        //             nav: false,
        //             buttons: true,
        //         });
        //     }, 0);
        // });
    }

    $scope.$watch('userData', function (newValue) {
        $scope.isLoading = true;

        if (newValue) {

            profileService.getUserMates(newValue).then(function (res) {
                // $scope.usersMate = res;
                // console.log($scope.usersMate);
                $scope.data = res;
                $scope.isLoading = false;

                var midd = Number((res.users.length / 2).toFixed(0)) - 1;

                $scope.activeData = $scope.data.users[midd];

                $timeout(function () {

                    // console.log(res, 'res.data selectmates');
                    $(document).find("#mate-carousel").flipster({
                        style: 'carousel',
                        spacing: -0.3,
                        nav: false,
                        buttons: false,
                        scrollwheel: false,
                        touch: false,
                        onItemSwitch: function (curr, prev) {
                            var i = $(curr).index();
                            var d = $scope.data.users[i];

                            $scope.viewDetails(d);

                            console.log($(curr).index(), $scope.data.users[i], curr, prev);

                        }
                    });
                }, 0);
            });
        }
    }, true);

    var init = function () {
        $scope.getData();
    }
    init();

    $scope.viewDetails = function (u) {
        $scope.activeData = u;
    }
    $scope.addUser = function (u) {
        $scope.activeData = u;
        u.is_friend = !u.is_friend;

        if (!u.is_friend) {
            var action = myHttpService.post('delete_friend', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully removed.';
                $scope.showToast(mess);
            });
        }
        else {
            myHttpService.post('add_friend', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully picked up.';
                $scope.showToast(mess);
            });
        }

    }

    $scope.goNext = function () {
        window.location.href = base_url + '/users/' + $scope.data.user.username + '/like_movies';
    }

}]);

ngApp.controller('likeMoviesController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngBootbox', function ($scope, $filter, myHttpService, $timeout, $ngBootbox) {
    $scope.data = {};
    $scope.activeData = {};

    $scope.likeMovies = function (data) {
        // console.log(data);
        if (data.selected) {
            data.selected = !data.selected;
            myHttpService.post('dislikemovies', {
                movie: data.name
            }).then(function (res) {
                // console.log(res);
                // var mess = 'User successfully removed.';
                // $scope.showToast(mess);
            });
        }
        else {
            data.selected = !data.selected;
            myHttpService.post('likemovies', {
                movie: data.name
            }).then(function (res) {
                // console.log(res);
                // var mess = 'User successfully picked up.';
                // $scope.showToast(mess);
            });
        }
    }

    $scope.wantPlace = function (data) {
        console.log(data);
        if (data.selected) {
            data.selected = !data.selected;
            myHttpService.post('remove_place', {
                place: data.name
            }).then(function (res) {
                // console.log(res);
                // var mess = 'User successfully removed.';
                // $scope.showToast(mess);
            });
        }
        else {
            data.selected = !data.selected;
            myHttpService.post('add_place', {
                place: data.name
            }).then(function (res) {
                // console.log(res);
                // var mess = 'User successfully removed.';
                // $scope.showToast(mess);
            });
        }
    }


    $scope.movies = [
        {
            name: 'Action & Adventure',
            image: 'movie1.png',
            selected: false
        },
        {
            name: 'Comedy',
            image: 'movie2.png',
            selected: false
        },
        {
            name: 'Romance',
            image: 'movie3.png',
            selected: false
        },
        {
            name: 'Thriller',
            image: 'movie4.png',
            selected: false
        },
        {
            name: 'Drama',
            image: 'movie5.png',
            selected: false
        },
        {
            name: 'Science Fiction',
            image: 'movie6.png',
            selected: false
        }
    ];

    $scope.places = [
        {
            name: 'Beach',
            image: 'destination-img1.png',
            selected: false
        },
        {
            name: 'Egypt',
            image: 'destination-img2.png',
            selected: false
        },
        {
            name: 'Sermany',
            image: 'destination-img3.png',
            selected: false
        },
        {
            name: 'Greece',
            image: 'destination-img4.png',
            selected: false
        },
        {
            name: 'India',
            image: 'destination-img5.png',
            selected: false
        },
        {
            name: 'New York',
            image: 'destination-img6.png',
            selected: false
        }
    ];

    $scope.getMovie = function () {
        myHttpService.get('movies').then(function (res) {
            if (res.data.length) {
                for (var i = 0; i < res.data.length; i++) {
                    for (var j = 0; j < $scope.movies.length; j++) {
                        if (res.data[i].movies == $scope.movies[j].name) {
                            $scope.movies[j].selected = true;
                        }
                    }
                }
            }
            else {
            }
        });
    }
    $scope.getPlace = function () {
        myHttpService.get('place').then(function (res) {
            if (res.data.length) {
                for (var i = 0; i < res.data.length; i++) {
                    for (var j = 0; j < $scope.places.length; j++) {
                        if (res.data[i].destination == $scope.places[j].name) {
                            $scope.places[j].selected = true;
                        }
                    }
                }
            }
            else {
            }
        });
    }
    var init = function () {
        $scope.getMovie();
        $scope.getPlace();
    }
    init();


    $scope.goNext = function () {
        if ($scope.logged_user_info.verified) {
            window.location.href = base_url + '/profile_settings';
        }
        else {
            window.location.href = base_url + '/verifyPlease';
        }
    }
}]);

ngApp.controller('ModalCompatibleCtrl', ['$scope', '$uibModalInstance', 'items', 'myHttpService', '$uibModal', '$log', '$document', function ($scope, $uibModalInstance, items, myHttpService, $uibModal, $log, $document) {
    $scope.items = items;
    console.log(items);

    $scope.userAction = function (m) {
        console.log("action_modeHeader", m);


        $uibModalInstance.close(m);
    };

    $scope.compatibleDetailsModal = function (items) {
        console.log(items, 'wow2');
        var modalInstance = $uibModal.open({
            animation: true,
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: 'compatibleDetailsModal.html',
            controller: 'ModalCompatibleDetailsCtrl',
            // controllerAs: '$scope',
            size: 'lg',
            windowClass: 'compatible-modal',
            // appendTo: parentElem,
            resolve: {
                items: function () {
                    return items ? items : {};
                }
            }
        });

        modalInstance.result.then(function (data) {
            console.log("mark", data);
            $uibModalInstance.close(data);
            // $scope.createSMS(data.id,data.firstName);

        }, function () {
            $log.info('Modal dismissed at: ' + new Date());
        });
    };


    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
}]);

ngApp.controller('searchProfileController', ['$scope', '$rootScope', '$filter', 'myHttpService', '$timeout', '$ngBootbox', '$httpParamSerializer', '$uibModal', '$log', '$document', function ($scope, $rootScope, $filter, myHttpService, $timeout, $ngBootbox, $httpParamSerializer, $uibModal, $log, $document) {
    $scope.allData = {};
    $scope.data = {};
    $scope.logged_id = '';
    $scope.user_id = window.uri_3;
    $scope.isLoading = false;


    $scope.blockUser = function (u) {
        console.log(u);

        console.log(u, 'asfasd');
        u.is_blocked = !u.is_blocked;

        if (!u.is_blocked) {
            var action = myHttpService.post('unblock_user', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully unblocked.';
                $scope.showToast(mess);
            });
        }
        else {
            myHttpService.post('block_user', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully blocked.';
                $scope.showToast(mess);
            });
        }

    }

    $scope.openCompatibilityModal = function (size, parentSelector) {
        var parentElem = parentSelector ?
            angular.element($document[0].querySelector('.modal-demo ' + parentSelector)) : undefined;
        var modalInstance = $uibModal.open({
            animation: true,
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: 'myModalContent.html',
            controller: 'ModalCompatibleCtrl',
            // controllerAs: '$scope',
            size: 'lg',
            windowClass: 'compatible-modal',
            appendTo: parentElem,
            resolve: {
                items: function () {
                    return $scope.allData;
                }
            }
        });

        modalInstance.result.then(function (userAction) {
            console.log(userAction, 'userAction');
            // if (userAction.id) {
            //     $scope.createSMS(userAction.id, userAction.firstName);
            // }
            if (userAction == 'add') {
                $scope.addUser($scope.data);
            }
            else if (userAction == 'flirt') {
                $rootScope.flirtEmojiModal($scope.data, $rootScope.logged_user_info);
            }
            else if (userAction == 'message') {
                $scope.createSMS($scope.data.id, $scope.data.firstName);
            }
        }, function () {
            $log.info('Modal dismissed at: ' + new Date());
        });
    };

    $scope.closeWindow = function () {
        window.close();
    }

    console.log($scope.user_id);
    $scope.getData = function () {
        $scope.isLoading = true;
        myHttpService.getWithParams('search_profile', {
            id: $scope.user_id
        }).then(function (res) {
            console.log(res);
            $scope.isLoading = false;
            $scope.data = res.data.user;
            $scope.allData = res.data;
            $scope.logged_id = res.data.logged_id;

            if (!res.data.user.is_friend) {
                $scope.openCompatibilityModal();
            }
        });
    }

    var init = function () {
        $scope.getData();
    }
    init();


    $scope.addUser = function (u) {
        if (!$scope.logged_id) {
            $ngBootbox.alert('Please login to add pick up user.').then(function () {
                window.location.href = base_url + '/users/create';
            });
            return false;
        }
        u.is_friend = !u.is_friend;

        if (!u.is_friend) {
            var action = myHttpService.post('delete_friend', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully removed.';
                $scope.showToast(mess);
            });
        }
        else {
            myHttpService.post('add_friend', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully picked up.';
                $scope.showToast(mess);
            });
        }

    }

}]);


ngApp.controller('searchController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngBootbox', '$httpParamSerializer', function ($scope, $filter, myHttpService, $timeout, $ngBootbox, $httpParamSerializer) {
    $scope.data = {};
    $scope.haveQuery = (typeof (window.uri_get_params.zip) !== 'undefined') ? true : false;
    $scope.formData = ($scope.haveQuery) ? window.uri_get_params : {};
    console.log($scope.formData);
    $scope.base_url = base_url;
    $scope.isLoading = false;
    $scope.perPage = 6;
    $scope.offset = 0;
    $scope.isEnd = false;

    $scope.searchSettings = {
        type: ($scope.formData.search_type) ? 'advance' : 'quick'
    };

    $scope.search = {
        isQuick: (!$scope.formData.search_type) ? true : false,
        advance: ($scope.formData.search_type) ? true : false,
        byName: false
    };

    
    $scope.blockUser = function (i, u) {
        console.log(i, u);
        $scope.showToast('You have successfully blocked user.');
        $scope.data.users.splice(i, 1);

        myHttpService.post('block_user', u).then(function (res) {
            console.log()
        });
    }


    //accordion
    $scope.oneAtATime = true;

    $scope.validationOptions = {
        ignore: [],
        rules: {},
        messages: {},
        rules: {},
        messages: {},
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

    $scope.next = function () {
        $scope.offset += $scope.perPage;
        $scope.getData($scope.offset);
    }
    $scope.previous = function () {
        $scope.offset -= $scope.perPage;
        $scope.isEnd = false;
        $scope.getData($scope.offset);
    }


    $scope.submitForm = function (form) {
        console.log(form.validate(), $scope.formData);
        if (form.validate()) {
            $scope.getData(0);
            $scope.isEnd = false;
        }
    };

    // $scope.getData = function(){
    //     $scope.isLoading = true;
    //     $scope.formData.search_type = ($scope.search.advance) ? 'advance' : '';
    //     myHttpService.getWithParams('search_user', $scope.formData).then(function(res){
    //         console.log(res);
    //         $scope.isLoading = false;
    //         $scope.data = res.data;
    //     });
    // }

    $scope.getData = function (offset) {
        $scope.isLoading = true;
        $scope.formData.offset = offset ? offset : 0;
        $scope.formData.search_type = ($scope.search.advance) ? 'advance' : '';
        myHttpService.getWithParams('search_user', $scope.formData).then(function (res) {
            $scope.isLoading = false;
            console.log(res.data, 'search_user');

            if (!res.data.users.length) {
                $scope.isEnd = true;
                $scope.offset -= $scope.perPage;

                if (typeof($scope.data.users) !== 'undefined' && $scope.data.users.length) {
                    $scope.showToast('Nothing more to show.', 'warning');
                }
            }
            else {
                $scope.data = res.data;
            }
        });
    }

    var init = function () {
        $scope.getData();
    }

    if ($scope.haveQuery) {
        init();
    }

    $scope.addUser = function (u) {
        if (!$scope.data.user_id) {
            $ngBootbox.alert('Please login to add pick up user.').then(function () {
                window.location.href = base_url + '/users/create';
            });
            return false;
        }
        u.is_friend = !u.is_friend;

        if (!u.is_friend) {
            var action = myHttpService.post('delete_friend', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully removed.';
                $scope.showToast(mess);
            });
        }
        else {
            myHttpService.post('add_friend', {
                id: u.id
            }).then(function (res) {
                console.log(res);
                var mess = 'User successfully picked up.';
                $scope.showToast(mess);
            });
        }

    }

    $scope.promptToLogin = function () {
        $ngBootbox.alert('Please create an account to see more users.').then(function () {
            window.location.href = base_url + '/users/create';
        });
    }


}]);


ngApp.controller('advertiseController', ['$scope', '$filter', 'myHttpService', '$timeout', '$ngConfirm', '$httpParamSerializer', function ($scope, $filter, myHttpService, $timeout, $ngConfirm, $httpParamSerializer) {
    $scope.user = {};

    $scope.myImage = '';
    $scope.myCroppedImage = '';
    $scope.imgEdit = true;
    $scope.imgDone = {
        done: false
    };
    var handleFileSelect = function (evt) {
        var file = evt.currentTarget.files[0];
        var reader = new FileReader();
        reader.onload = function (evt) {
            $scope.$apply(function ($scope) {
                $scope.myImage = evt.target.result;
            });
        };
        reader.readAsDataURL(file);
    };
    angular.element(document.querySelector('#fileInput')).on('change', handleFileSelect);


    $scope.validationOptions = {
        ignore: [],
        rules: {},
        rules: {},
        messages: {},
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

        if (registerform.validate()) {
            $scope.user.image = $scope.myCroppedImage;
            console.log($scope.user, 'sdfsdfdsf');
            if ($scope.imgEdit) {
                $scope.showToast('Please upload an image banner.', 'danger');
                return false;
            }

            $scope.user.submitting = true;


            myHttpService.post('save_advertisement', $scope.user)
                .then(function (res) {
                    var _price = $('.ads_price').find('option:selected').data('price');

                    var _data = {
                        type: 'ads',
                        id: res.data.id,
                        price: _price
                    };
                    console.log(res, _data);

                    $scope.user.submitting = false;
                    $scope.showToast('Your advertisement successfully submitted.');

                    if(res.data.paid == 1){
                        $timeout(function () {
                            window.location.href = base_url + '/profile';
                        }, 1000);
                    }
                    else{
                        $timeout(function () {
                            window.location.href = base_url + '/payment_gateway?' + $.param(_data);
                        }, 1000);
                    }

                }, function (err) {
                    console.log(err);
                    $scope.showToast('Something went wrong. Please try again.', 'danger');
                    $scope.user.submitting = false;
                });
        }
        else {
            $scope.showToast('Opps! Please check your input.', 'danger');
        }
    }


}]);


ngApp.controller('ModalInviteToChatCtrl', ['$scope', '$uibModalInstance', 'items', 'myHttpService', function ($scope, $uibModalInstance, items, myHttpService) {
    $scope.items = items;
    $scope.users = items.users;
    $scope.isLoading = false;
    $scope.selectedCount = 0;
    $scope.selectedUser = [];


    console.log(items, 'items');

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

    $scope.submit = function () {
        var _invited = [];

        $scope.users.forEach(function (val, i) {
            console.log(val, i);
            if (val.selected) {
                _invited.push(val);
            }
        });

        $uibModalInstance.close(_invited);
    };

    $scope.selectUser = function (u, i) {

        if (u.selected) {
            u.selected = false;
            $scope.selectedCount--;
            return false;
        }
        else if (!u.selected) {
            if ($scope.selectedCount > 2) {
                $scope.showToast('Group chat particapants full.', 'danger');
                return false;
            }
            else if (!u.is_online) {
                $scope.showToast('Cannot invite offline user.', 'danger');
                return false;
            }
        }


        if (!u.selected) {
            u.selected = true;
            $scope.selectedCount++;
            // $scope.selectedUser.push(u);     
        }

        console.log($scope.selectedCount, u);

    }

    $scope.getData = function () {
        $scope.isLoading = true;


    }

    var init = function () {
        $scope.getData();
    }
    init();
}]);
