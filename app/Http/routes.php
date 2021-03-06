<?php

/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register all of the routes for an application.
  | It's a breeze. Simply tell Laravel the URIs it should respond to
  | and give it the controller to call when that URI is requested.
  |
 */

use Illuminate\Support\Facades\App;
use App\Http\Controllers\SubscriptionCheckController;
use App\User;
use App\AboutYourDate;


// Route::get('dat-reg', function () {
    // return view('dat-reg');
// });
Route::get('register-details', 'RegisterDetailsController@index');
Route::post('register-details-update', 'RegisterDetailsController@ajaxUpdate');
/* Route::get('test', function () {



  $ip = $_SERVER['REMOTE_ADDR'];
  $details = json_decode(file_get_contents("http://ipinfo.io/{$ip}"));
  dd($details);

}); */

//Route::get('checkemail','UsersController@checkEmail');
Route::resource('users', 'UsersController');
Route::resource('login', 'UsersController@login');
Route::post('ajaxLogin', 'HomeController@ajaxLogin');
Route::post('submitAboutDate', 'UsersController@submitAboutDate');

Route::get('users/create/{name}', function($name){
    return view('user/signup/' . $name);
});

Route::post('users/registerStore',['as' => 'users.registerStore','uses' => 'UsersController@registerStore']);

// Route::get('auth/facebook', 'FacebookController@redirectToProvider')->name('facebook.login');
// Route::get('auth/facebook/callback', 'FacebookController@handleProviderCallback');

Route::get('user/paginate', 'HomeController@paginateUser');


Route::get('users/{username}/verify/{key}', 'VerifyController@getVerify');

Route::get('username/check', function () {

    $username = Input::get('username');
    $id = DB::table('users')->where('username', $username)->pluck('id');

    if ($id == null) {
        return '1';
    } else {
        return '0';
    }
});

Route::get('/start', function () {
    $verified = new Role();
    $verified->name = 'Verified';
    $verified->save();

    $admin = new Role();
    $admin->name = 'Admin';
    $admin->save();


    $user = new Role();
    $user->name = 'User';
    $user->save();

    $read = new Permission();
    $read->name = 'can_see';
    $read->display_name = 'Can See User Profiles';
    $read->save();

    $edit = new Permission();
    $edit->name = 'can_see_compatability';
    $edit->display_name = 'Can See Compatability';
    $edit->save();

    $admin_p = new Permission();
    $admin_p->name = 'admin';
    $admin_p->display_name = 'Can Control Anything';
    $admin_p->save();

    $admin->attachPermission($admin_p);

    $verified->attachPermission($read);
    $verified->attachPermission($edit);

    $user1 = \User::find(1);
    $user2 = \User::find(2);

    $user1->attachRole($admin);
    $user2->attachRole($verified);

    return 'Woohoo!';
});


/* blog page */
Route::get('bloglist', 'UserBlogPageController@ListBlog');
Route::get('user/blog_page/{id}', 'UserBlogPageController@blogPageView');
Route::get('blogs/create', 'UserBlogPageController@createBlog');
Route::post('commentInBlog', 'UserBlogPageController@commentInBlog');
Route::post('saveBlog', 'UserBlogPageController@saveBlog');
/* end blog page */

/* delete comment */
Route::post('deleteComment', 'UserBlogPageController@deleteComment');
/* end delete comment */

/* news page */
Route::get('pages/news', 'UserNewsPageController@ListNews');
Route::get('/user/news_page/{id}', 'UserNewsPageController@newsPageView');
Route::post('commentInNews', 'UserNewsPageController@commentInNews');
/* end news page */

/* subscribe */
Route::post('subscribeEmail', 'UserNewsPageController@subscribeEmail');
/* end subscribe */

/* travel page */
Route::get('travels', 'TravelController@viewTravelPage');
/* end travel page */


/* blog page */
Route::get('bloglist', 'UserBlogPageController@ListBlog');
Route::get('user/blog_page/{id}', 'UserBlogPageController@blogPageView');
Route::get('blogs/create', 'UserBlogPageController@createBlog');
Route::post('commentInBlog', 'UserBlogPageController@commentInBlog');
Route::post('saveBlog', 'UserBlogPageController@saveBlog');
/* end blog page */

/* delete comment */
Route::post('deleteComment', 'UserBlogPageController@deleteComment');
/* end delete comment */

/* news page */
Route::get('pages/news', 'UserNewsPageController@ListNews');
Route::get('/user/news_page/{id}', 'UserNewsPageController@newsPageView');
Route::post('commentInNews', 'UserNewsPageController@commentInNews');
/* end news page */

/* subscribe */
Route::post('subscribeEmail', 'UserNewsPageController@subscribeEmail');
/* end subscribe */

/* travel page */
Route::get('travels', 'TravelController@viewTravelPage');
/* end travel page */


Route::group(['middleware' => 'auth'], function () {
    Route::get('users/{username}/about_your_date', 'AboutYourDateController@index');
    Route::get('users/{username}/select_mates', 'AboutYourDateController@selectMates');
    Route::get('users/{username}/like_movies', 'AboutYourDateController@likeMovies');
    Route::get('online_chat', 'UsersController@onlineChatPage');
    Route::get('video_chat', 'UsersController@videoChatPage');
    Route::get('video_room', 'UsersController@videoRoomPage');
    Route::get('advertise', 'AdsSpaceController@create');
    Route::get('browse', 'SearchController@browseUsers');
    Route::get('payment_method', 'PaymentMethodController@index');
    Route::get('payment_checkout/{plan_id}', 'PaymentMethodController@getCheckout');
    Route::get('getdone/{plan_id}', 'PaymentMethodController@getDone');
    Route::get('getcancel', 'PaymentMethodController@getCancel');

    Route::get('profile_settings', 'UsersController@profileSettings');
    Route::get('privacy_settings', 'UsersController@privacySettings');
    Route::get('payment_gateway', 'PaymentMethodController@paymentGateway');
    Route::post('square_payment', 'PaymentMethodController@squarePayment');

    Route::get('myfriends', 'UserFriendshipController@myfriendsPage');
});

Route::get('search', 'SearchController@index');
Route::get('search/profile/{id}', 'SearchController@searchProfile');
Route::post('search_side', 'SearchController@xpostIndex');
Route::post('login_facebook', 'UsersController@login_facebook');
Route::post('login_google', 'UsersController@login_google');

Route::get('user_session', 'AboutYourDateController@userSession');

Route::group(['prefix' => 'api'], function () {
    Route::get('body_contents', 'UsersController@getBodyContents');
    Route::match(['get', 'post'], 'homepage', 'UsersController@homepage');
    Route::post('homepage_search_people', 'UsersController@homepage_search_people');
    Route::get('get_signup_location', 'HomeController@get_signup_location');
    Route::post('signup', 'UsersController@signup');
    Route::post('validate_email', 'UsersController@validate_email');
    Route::post('validate_username', 'UsersController@validate_username');
    Route::get('aboutdate', 'UsersController@getAboutdate');
    Route::post('aboutdate', 'UsersController@postAboutdate');
    Route::get('selectmates', 'UsersController@selectmates');
    Route::post('delete_account', 'UsersController@delete_account');
    Route::post('update_user_info', 'UsersController@postUpdateUser');
    Route::get('send_email_notification', 'EmailNotificationController@sendEmailNotification');

    Route::get('online_chat', 'UsersController@get_online_chat');
    Route::get('get_private_chat_id', 'GroupChatController@get_private_chat_id');
    Route::resource('group_chat', 'GroupChatController');
    Route::resource('group_chat_participants', 'GroupChatParticipantsController');
    Route::resource('group_chat_messages', 'GroupChatMessagesController');

    Route::get('usermates/{username}', 'UsersController@selectmates');
    Route::post('add_friend', 'UserFriendshipController@store');
    Route::post('delete_friend', 'UserFriendshipController@destroy');
    Route::get('get_my_friends', 'UserFriendshipController@myfriendsGet');

    Route::post('block_user', 'UserBlockController@store');
    Route::post('unblock_user', 'UserBlockController@destroy');
    Route::post('speedBlock', 'UserBlockController@speedBlock');
    Route::get('get_my_userblocks', 'UserBlockController@myUserBlocksGet');


    Route::post('save_echeck', 'PaymentMethodController@postSaveEcheck');

    Route::get('get_gift_cards', 'GiftCardController@getGiftCards');
    Route::post('send_gift', 'GiftCardController@sendGiftCards');
    Route::post('send_flirt_emoji', 'GiftCardController@sendEmoji');

    Route::post('save_advertisement', 'AdsSpaceController@store');

    Route::get('get_video_shuffle', 'UsersController@getVideoShuffle');

    Route::post('send_invite', 'UsersController@send_invite');

    Route::get('search_user', 'SearchController@getSearchUser');
    Route::get('search_profile', 'SearchController@getSearchProfile');
    Route::get('search_byname', 'SearchController@getSearchByName');
    Route::get('random_compatible', 'SearchController@getRandomCompatible');
    Route::get('get_browse_members', 'SearchController@getBrowseMembers');

    Route::get('get_readydate_question', 'ReadyDateQuestion@index');
    Route::post('readydate_answer', 'ReadDateAnswer@store');

    Route::post('notifications', 'NotificationController@update');

    /*NEW notification logs*/
    Route::post('notifications_new', 'NotiFierLogsController@updateRead');

    Route::get('movies', 'LikeMoviesController@index');
    Route::post('likemovies', 'LikeMoviesController@store');
    Route::post('dislikemovies', 'LikeMoviesController@destroy');

    Route::get('place', 'UserDestinationController@index');
    Route::post('add_place', 'UserDestinationController@store');
    Route::post('remove_place', 'UserDestinationController@destroy');

    Route::get('testfriends', 'UsersController@testfriends');

    Route::get('current_user', 'UsersController@getCurrentUser');

    Route::get('events', 'EventManagementController@apiGetEvent');
    Route::get('events/{id}', 'EventManagementController@apiGetEventType');
    Route::get('events/details/{id}', 'EventsController@apiGetEventsDetails');
    Route::post('join_event', 'EventsController@apiPostJoinEvent');
    Route::delete('leave_event', 'EventsController@apiLeaveEvent');

    //for admin
    Route::post('send_event_invite', 'EventsController@send_event_invite');
    Route::post('change_primary_video', 'VideoManagementController@change_primary_video');

    Route::get('banners', 'BannerManagementController@getBanners');

    Route::get('profile/{username}', 'ProfileController@userProfile');
    Route::get('notify_check/{id}', 'ProfileController@checkNotify');
    Route::get('match/{username}', 'ProfileController@getUserMatch');
    Route::get('friends', 'ProfileController@getUserFriend');
    Route::get('friend/{username}', 'ProfileController@getMatchPercentage');

    /*START messages services ROUTING*/
    Route::get('mailTO', 'userMessagesController@mailTO');
    Route::get('messages', 'userMessagesController@messages');
    Route::get('messagesview', 'userMessagesController@messagesview');
    Route::get('messagescount', 'userMessagesController@messagescount');
    Route::post('sendmessage', 'userMessagesController@sendmessage');
    /*END  messages services ROUTING*/

    Route::get('viewImage', 'userMessagesController@getImage');
    Route::post('savechat', 'userMessagesController@saveChat');
    Route::get('gethistorychat', 'userMessagesController@getChatHistory');
    Route::get('gethistorychatexist', 'userMessagesController@getChatHistoryExist');

    Route::get('getuserlocation', 'liveCHatController@getAllUserLocation');


    Route::post('validateuser', 'liveCHatController@validateUserMoreThanOneDay');
    Route::get('verified', 'VerifyController@send_verification_mail');


    /*saving appointment*/
    Route::post('saveAppointmentNew', 'AppointmentController@saveAppointmentNew');


    Route::post('saveappointment', 'AppointmentController@saveAppointment');
    Route::get('getAppoinment', 'AppointmentController@getAppointment');
    Route::post('saveAppResponse', 'AppointmentController@saveAppResponse');
    Route::get('getTimeAvailability', 'AppointmentController@getTimeAvailability');
    Route::post('saveTimeAvailabity', 'AppointmentController@saveTimeAvailabity');
    Route::get('populateStatisticsReport', 'StatisticsDataController@populateStatisticsReport');
    Route::get('messageChatnew', 'liveCHatController@messageChatnew');
    Route::post('saveChatLogsNew', 'liveCHatController@saveChatLogsNew');


});

Route::group(array('before' => 'admin'), function () {
    Route::get('admin/logout', function () {
        $user_id = Auth::user()->id;
        Auth::logout();
        DB::table('user_online')->where('user_id', '=', $user_id)->delete();
        \Session::flush();
        return \Redirect::guest('/');
    });

    Route::get('admin/users/{id}/removePicture', function ($id) {

        DB::table('users')
            ->where('id', $id)
            ->update(['photo' => 'placeholder.png']);
        $username = DB::table('users')->where('id', $id)->pluck("username");
        $file = public_path() . '\images\placeholder.png';
        $dest = public_path() . '\images\users\\' . $username . '\placeholder.png';
        // dd($dest);
        \File::copy($file, $dest);

        return redirect(url() . '/admin/users/' . $id);
    });

    /* Email Extractor */
    Route::get('admin/emailExtractor', 'EditableEmailController@extractEmails');
    /* END Email Extractor */ 

    /* Ads Mangement */
    Route::get('admin/ads_management/pricing_lists', 'AdsPricingController@getPricelist');
    Route::get('admin/ads_management/pricing_spaces', 'AdsPricingController@getPriceSpace');
    Route::post('deleteAdsSpace', 'AdsPricingController@deleteAdsSpace');
    Route::post('addAdsPricing', 'AdsPricingController@addAdsPricing');
    Route::post('editAdsPricing', 'AdsPricingController@editAdsPricing');
    Route::post('deleteAdsPricing', 'AdsPricingController@deleteAdsPricing');
    /* End Ads Mangement */

    /* User Content Manager */
    //    music
    Route::get('admin/user_contents/music', 'UserMusicController@getMusicList');
    Route::post('rejectUserMusic', 'UserMusicController@rejectUserMusic');
    Route::post('approveUserMusic', 'UserMusicController@approveUserMusic');
    Route::post('deleteUserMusic', 'UserMusicController@deleteUserMusic');

    //    photo
    Route::get('admin/user_contents/photo', 'UserPhotoController@getPhotoList');
    Route::post('rejectUserPhoto', 'UserPhotoController@rejectUserPhoto');
    Route::post('approveUserPhoto', 'UserPhotoController@approveUserPhoto');
    Route::post('deleteUserPhoto', 'UserPhotoController@deleteUserPhoto');

    //    video
    Route::get('admin/user_contents/video', 'UserVideoController@getVideoList');
    Route::post('rejectUserVideo', 'UserVideoController@rejectUserVideo');
    Route::post('approveUserVideo', 'UserVideoController@approveUserVideo');
    Route::post('deleteUserVideo', 'UserVideoController@deleteUserVideo');
    /* End User Content Manager */

    /* date time format*/
    Route::get('admin/date_time_format', 'DateTimeController@showFormatting');
    Route::post('updateDateFormat', 'DateTimeController@updateDateFormat');
    /* date time format*/


    /* Gift E-Cards */
    Route::get('admin/gift_cards/category', 'GiftCardController@getCategoryList');
    Route::post('addGiftCardCategory', 'GiftCardController@addGiftCardCategory');
    Route::post('editGiftCardCategory', 'GiftCardController@editGiftCardCategory');
    Route::post('deleteGiftCardCategory', 'GiftCardController@deleteGiftCardCategory');
    /* End Gift E-Cards */

    /* Editable Email Section */
    Route::post('saveTemplate', 'EditableEmailController@saveTemplate');
    Route::post('getTemplateById', 'EditableEmailController@getTemplateById');
    Route::post('updateTemplate', 'EditableEmailController@updateTemplate');
    Route::post('deleteTemplate', 'EditableEmailController@deleteTemplate');
    Route::post('sendTemplateToUsers', 'EditableEmailController@sendTemplateToUsers');

    Route::get('admin/send_template_emails/{id}', 'EditableEmailController@userListForTemplate');
    Route::get('admin/email_template_lists', 'EditableEmailController@showTemplateLists');
    Route::get('admin/add_email_template', 'EditableEmailController@showAddForm');
    /* END Editable Email Section */

    /* Definable Flirt Message */
    Route::post('saveFlirtMessage', 'DefinableFlirtController@saveFlirtMessage');
    Route::post('flirtMessage', 'DefinableFlirtController@getFlirtMessage');
    Route::post('updateFlirtMessage', 'DefinableFlirtController@updateFlirtMessage');
    Route::post('deleteFlirtMessage', 'DefinableFlirtController@deleteFlirtMessage');
    Route::get('admin/definable_flirt_list', 'DefinableFlirtController@showFlirtMessageLists');
    Route::get('admin/add_flirt_message', 'DefinableFlirtController@showFlirtMessageForm');
    /* End Definable Flirt Message */

    /* Blog Management */
    Route::get('admin/blog_management/post_lists', 'BlogManagementController@showPostLists');
    Route::get('admin/blog_management/post/{id}', 'BlogManagementController@showPostById')->name('PostById');
    Route::post('getPost', 'BlogManagementController@getPost');
    Route::post('deletePost', 'BlogManagementController@deletePost');
    Route::post('pendingPost', 'BlogManagementController@pendingPost');
    ROute::post('publishedPost', 'BlogManagementController@publishedPost');

    //category list
    Route::get('admin/blog_management/category', 'BlogManagementController@showCategoryLists');
    Route::post('addBlogCategory', 'BlogManagementController@addBlogCategory');
    Route::post('editBlogCategory', 'BlogManagementController@editBlogCategory');
    Route::post('deleteCategory', 'BlogManagementController@deleteCategory');

    // status list
    Route::get('admin/blog_management/status', 'BlogManagementController@showStatusLists');
    Route::get('admin/blog_management/spam_control', 'BlogManagementController@showSpamControl');
    Route::post('addBlogStatus', 'BlogManagementController@addBlogStatus');
    Route::post('editBlogStatus', 'BlogManagementController@editBlogStatus');
    Route::post('deleteStatus', 'BlogManagementController@deleteStatus');

    // type list
    Route::get('admin/blog_management/type', 'BlogManagementController@showTypeLists');
    Route::post('addBlogType', 'BlogManagementController@addBlogType');
    Route::post('editBlogType', 'BlogManagementController@editBlogType');
    Route::post('deleteType', 'BlogManagementController@deleteType');

    // create post
    Route::get('admin/blog_management/create_post', 'BlogManagementController@showCreatePost');
    Route::post('savePost', 'BlogManagementController@savePost');
    /* END Blog Management */

    /* Group Management */
    Route::get('admin/group_management/group_lists', 'GroupManagementController@showGroupList');
    Route::get('admin/group_management/create_group', 'GroupManagementController@createGroup');
    Route::get('admin/group_management/group/{id}', 'GroupManagementController@showGroupMembers')->name('group_page');
    Route::get('admin/group_management/group/{id}/add_members', 'GroupManagementController@nonMemberLists');
    Route::post('addGroupNames', 'GroupManagementController@addGroupName');
    Route::post('editGroupName', 'GroupManagementController@editGroupName');
    Route::post('deleteGroupName', 'GroupManagementController@deleteGroupName');
    Route::post('blockGroupName', 'GroupManagementController@blockGroupName');
    Route::post('blockMemberInGroup', 'GroupManagementController@blockMemberInGroup');
    Route::post('addMembersInGroup', 'GroupManagementController@addMembersInGroup');
    /* End Group Management */

    /* Premium Features */
    Route::get('admin/premium', 'PremiumFeaturesController@getPremiumFeatures');
    Route::post('editPremiumFeature', 'PremiumFeaturesController@editPremiumFeature');
    Route::post('deletePremiumFeature', 'PremiumFeaturesController@deletePremiumFeature');
    /* End Premium Features */


    Route::get('admin/templates/{id}/content', 'TemplateController@showContent');
    Route::get('admin/change_password', 'ChangePasswordController@showForm');
    Route::get('admin/calendar', 'AdminCalendarEveController@showCalendar'); //  BY AK
    Route::get('admin/calendar/{id}', 'AdminCalendarEveController@showCalendarByEvent'); //  BY AK
    Route::get('admin/sendmail', 'AdminCalendarEveController@showComposeMail'); //  BY AK
    Route::get('admin/events/addEventType', 'EventManagementController@eventTypeForm');
    Route::post('/events/type', 'EventManagementController@eventTypePost');
    Route::get('admin/events/manage_eventtypes', 'EventManagementController@manage_eventtypes');
    Route::delete('admin/events/delete_eventtypes/{id}', 'EventManagementController@delete_eventtypes');
    Route::get('admin/events/eventtype/{id}/edit', 'EventManagementController@update_eventtypes');

    Route::get('admin/seo/edit/{type}', 'SeoContentController@edit');
    Route::post('admin/seo/update', 'SeoContentController@update');

    Route::post('admin/change_password', 'ChangePasswordController@updatePassword');
    Route::post('admin/send', 'AdminDashboardController@sendEmail');

    Route::resource('admin/slide', 'SlideManagementController');
    Route::resource('admin/events', 'EventManagementController');
    Route::resource('admin/templates', 'TemplateController');
    Route::resource('admin/gift_cards', 'GiftCardController');
    Route::get('admin/users/non_users', 'UserManagementController@non_member_user');
    Route::get('admin/users/seo_users', 'UserManagementController@seo_members');
    Route::get('admin/users/cat/{cat}', 'UserManagementController@userbyCat');
    Route::resource('admin/users', 'UserManagementController');
    Route::get('admin/demographic', 'UserManagementController@demographic');
    Route::get('admin/monthlypayment', 'UserManagementController@monthlypayment');
    Route::get('admin/echeckpayment', 'PaymentMethodController@echeckPaymentList');
    Route::resource('admin/nonusers', 'NonUserManagementController');
    Route::resource('admin/videos', 'VideoManagementController');
    Route::resource('admin/banners', 'BannerManagementController');
    Route::resource('admin/banners/{index}/Up', 'BannerManagementController@Up');
    Route::resource('admin/banners/{index}/Down', 'BannerManagementController@Down');
    Route::resource('admin/dating_plans', 'DatingPlanManagementController');
    Route::resource('admin/pages', 'ContentManagementController');
    Route::controller('admin', 'AdminDashboardController');


    /* Echeck Payment Actions*/
    Route::post('acceptEcheckPayment', 'PaymentMethodController@acceptEcheckPayment');
    Route::post('rejectEcheckPayment', 'PaymentMethodController@rejectEcheckPayment');
    Route::post('pauseEcheckPayment', 'PaymentMethodController@pauseEcheckPayment');
    /* End Echeck Payment Actions*/
});

/* Manage User Actions */
Route::post('blockUser', 'AdminUserListController@blockUser');
Route::post('pauseUser', 'AdminUserListController@pauseUser');
Route::post('deleteUser', 'AdminUserListController@deleteUser');
Route::post('setToNonUser', 'UserManagementController@setToNonUser');
Route::post('setToUser', 'UserManagementController@setToUser');
Route::post('setToVerified', 'UserManagementController@setToVerified');
Route::post('setToSubscriber', 'UserManagementController@setToSubscriber');
Route::post('setToSeo', 'UserManagementController@setToSeo');
Route::post('disapproveUser', 'UserManagementController@disapproveUser');
Route::post('approveUser', 'UserManagementController@approveUser');
/* End of Manage User Actions */


Route::get('/test', 'AdminDashboardController@getTest');

Route::get('ajax', 'AjaxRequestController@getSearchType');
Route::get('users/ajax/profile', 'AjaxRequestController@profileData');
Route::get('events/category/{category}', 'EventsController@eventCategory');

Route::get('forgotPassword', 'ForgotPasswordController@showForgetForm');
Route::get('forgotPassword/{username}/{key}', 'ForgotPasswordController@showForgetFormWithKey');


Route::get('success_story', 'SuccessStoryController@showSucsces');
Route::get('contact', 'ContactController@showForm');


Route::post('profileupload', 'MatchController@Profileupload');


Route::get('test_coords', function () {
    $u = AboutYourDate::where('id', '120')->first(); //->update(['relationshipGoal'=>'yeah']);
    return json_encode($u);
    // $details = json_decode(file_get_contents("http://maps.googleapis.com/maps/api/geocode/json?address=23423"));
    // $lat = $details->results[0]->geometry->location->lat;
    // $lng = $details->results[0]->geometry->location->lng;
    // $location = $details->results[0]->formatted_address;
    // return json_encode(count($details->results));
});

Route::get('adminlogin', 'AdminLoginController@getIndex');
//Route::get('calendar', 'CalendarController');
Route::post('admindashboard', 'AdminLoginController@postLogin');
Route::get('comingsoon', function () {
    return View::make('comingsoon');
});

/*Route::get('blog', function() {
    return View::make('blog');
});*/

Route::get('ashuT', 'AshuController@showForm');


Route::post('contact', 'ContactController@postForm');
Route::post('success_story', 'SuccessStoryController@successPost');

Route::post('updatePassword', 'ForgotPasswordController@forgetFormWithKeyPost');
Route::post('forgotPassword', 'ForgotPasswordController@forgetFormPost');

// Route::controller('deploy', 'ServerController');

//::controller('ajax/{action?}/{type?}', 'AjaxRequestController@getSearchType');

Route::get('pages/{title}', 'PageController@showContent');

Route::group(['middleware' => 'auth'], function () {

    Route::get('groups', 'MyGroupController@showGroups');
    Route::get('profiles/groups', 'MyGroupController@index');
    Route::get('groups/{group_id}', 'MyGroupController@show');
    Route::get('profiles/groups/create', 'MyGroupController@create');
    Route::get('groups/{groupID}/addMember', 'MyGroupController@addMemberForm');
    Route::get('groups/{groupID}/removeMember', 'MyGroupController@removeMemberForm');
    Route::get('groups/{groupID}/groupUserRequest', 'MyGroupController@userGroupRequest');
    Route::post('createGroup', 'MyGroupController@createGroup');
    Route::post('deleteMembersInGroup', 'MyGroupController@deleteMembersInGroup');
    Route::post('userAddMembersInGroup', 'GroupManagementController@addMembersInGroup');
    Route::post('userJoinRequest', 'MyGroupController@userJoinRequest');
    Route::post('cancelJoinRequest', 'MyGroupController@cancelJoinRequest');
    Route::post('rejectUserRequest', 'MyGroupController@rejectUserRequest');
    Route::post('acceptUserRequest', 'MyGroupController@acceptUserRequest');
    Route::post('userLeaveGroup', 'MyGroupController@userLeaveGroup');
    Route::post('groupMemberPostImg', 'MyGroupController@groupMemberPostImg');
    Route::post('groupMemberPostTxt', 'MyGroupController@groupMemberPostTxt');
    Route::post('groupMemberPostVideo', 'MyGroupController@groupMemberPostVideo');


    Route::get('datingPlan/{planId}', 'DatingPlanController@subscribe');
    Route::get('datingPlan/{planId}/success', 'DatingPlanController@success');
    Route::get('profile/datingPlan/succes', 'DatingPlanController@success');
    Route::get('datingPlan/{planId}/cancel', 'DatingPlanController@cancel');

    Route::get('events/{id}/upload', 'EventsController@uploadForm');
    Route::get('match', 'MatchController@getIndex');

    Route::post('groups/ajax/group', 'AjaxRequestController@updateGroupMember');
    Route::post('groups', 'MyGroupController@store');
    Route::post('groups/{groupID}/addMember', 'MyGroupController@addMemberPost');
    Route::post('groups/{groupID}/removeMember', 'MyGroupController@removeMemberPost');
    Route::post('events/create', 'EventsController@create');

    Route::resource('events', 'EventsController');
    Route::get('events/details/{id}', 'EventsController@getEventsDetails');

    Route::get('users/{username}/compatability', 'CompatabilityController@getCompatibles');
    Route::get('users/{username}/verify', 'VerifyController@getVarifyPlease');
    Route::get('verifyPlease', 'VerifyController@getVarifyPlease');
    Route::get('user/profile/{username}', 'ProfileController@getUserProfile');
    Route::controller('users/{username}/photos', 'UserPublicPhotoController');
    Route::controller('users/{username}/videos', 'UserPublicVideoController');
    Route::controller('datingPlan', 'DatingPlanController');

    Route::get('speeddating/{id}', 'liveCHatController@initializeData');
    Route::get('maplocation/{id}', 'liveCHatController@getUserLocation');
    Route::get('maplocationSppeed/{id}', 'liveCHatController@getUserLocationSpeed');
    Route::get('speeddatingnew', 'liveCHatController@speeddatingInitialize');

    Route::get('SEO', 'SeoContentController@seoPage');
    Route::get('seo/edit/{type}', 'SeoContentController@edit');

    Route::resource('profile/photo', 'UserPhotoController');
    Route::resource('profile/music', 'UserMusicController');
    Route::resource('profile/video', 'UserVideoController');
    Route::resource('profile/group', 'UserGroupController');
    Route::controller('profile', 'ProfileController');
    // Route::get('profile', 'ProfileController@userProfile');


    Route::get('profile/logout', function () {
        $user_id = Auth::user()->id;
        Auth::logout();
        DB::table('user_online')->where('user_id', '=', $user_id)->delete();
        \Session::flush();
        return redirect(url());
        // return \Redirect::guest('/');
    });

});


Route::controller('/', 'HomeController');
// Route::get('/', 'HomeController@getIndex');
// Route::get('/logout', 'HomeController@getLogout');


Route::filter('profile', function () {
    if (Auth::user()) {
        $checkSubscription = new SubscriptionCheckController();
        $checkSubscription->checkSubscription();
        $user = Auth::user();
    } else {
        return \Redirect::guest(url());
    }
});

Route::filter('SEO', function () {
    if (Auth::user()) {
        $user = Auth::user();
        if (!$user->hasRole('SEO')) {
            return redirect(url());
        }
    } else {
        return \Redirect::guest('adminlogin');
    }
});

Route::filter('admin', function () {
    if (Auth::user()) {
        $user = Auth::user();
        if (!$user->hasRole('Admin')) {
            return redirect(url());
        }
    } else {
        return \Redirect::guest('adminlogin');
    }
});
