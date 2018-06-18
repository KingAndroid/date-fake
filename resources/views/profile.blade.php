@extends('master')

@section('css-scripts')
{!! HTML::style('public/css/profile/carousel.css') !!}
@endsection

@section('form_area')

<style type="text/css">

/*.match_prof_box{
  position:relative;
  float:left;
  width:46%;
  margin:10px;
  }*/
  .match_prof_box {
    position: relative;
    float: left;
    width: 29%;
    height: 185px;
    margin: 10px;
    padding: 5px;
    border: 1px solid #ddd;
    border-radius: 4px;
  }
  .match_prof_box img {
    width: 100%;
    height: 100%;
  }
  @media (min-width:320px) and (max-width: 680px){
    .match_prof_box {
      position: relative;
      float: left;
      width: 95%;
      margin: 10px;
    }
    .match_prof_box img {
      width: 95%;
    }
  }
</style>


<div class="inner-header upcoming-banner">
  <div>
    <!-- <h1>
      <i class="calendar-event-icon">
        <img src="{{url()}}/public/images/upcoming-event-icon.png" alt="">
      </i>
      {{ $data['current_user']->firstName }} {{ $data['current_user']->lastName }}
    </h1> -->
    <div style="min-height: 50px;">
      <!-- Jssor Slider Begin -->
      
      <style>
          /* jssor slider loading skin spin css */
          .jssorl-009-spin img {
              animation-name: jssorl-009-spin;
              animation-duration: 1.6s;
              animation-iteration-count: infinite;
              animation-timing-function: linear;
          }
          .bannerTextStyle {
            z-index: 9999 !important;
            top: 75px;
            left: 240px;
            position: absolute;
            color: blue;
            font-size: 24px;
          }
          @keyframes jssorl-009-spin {
              from {
                  transform: rotate(0deg);
              }

              to {
                  transform: rotate(360deg);
              }
          }
          .imageStyle {
            height: 300px !important;
            top: 0px !important;
          }
      </style>
      <div id="slider1_container" style="visibility: hidden; position: relative; margin: 0 auto;
      top: 0px; left: 0px; width: 1300px; height: 300px; overflow: hidden;">
          <!-- Loading Screen -->
          <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
              <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="../svg/loading/static-svg/spin.svg" />
          </div>

          
          <!-- Slides Container -->
          <div data-u="slides" style="position: absolute; left: 0px; top: 0px; width: 1300px; height: 300px; overflow: hidden;">
            --@foreach($banners as $banner)
            <div>
                <img data-u="image" class="imageStyle" src="{{ url() }}/public/images/banners/{{ $banner->image }}" />
                <label class="bannerTextStyle">{{$banner->sub_title}}</label>
            </div>
            @endforeach
          </div>
          
          <!--#region Bullet Navigator Skin Begin -->
          <!-- Help: https://www.jssor.com/development/slider-with-bullet-navigator.html -->
          <style>
              .jssorb031 {position:absolute;}
              .jssorb031 .i {position:absolute;cursor:pointer;}
              .jssorb031 .i .b {fill:#000;fill-opacity:0.5;stroke:#fff;stroke-width:1200;stroke-miterlimit:10;stroke-opacity:0.3;}
              .jssorb031 .i:hover .b {fill:#fff;fill-opacity:.7;stroke:#000;stroke-opacity:.5;}
              .jssorb031 .iav .b {fill:#fff;stroke:#000;fill-opacity:1;}
              .jssorb031 .i.idn {opacity:.3;}
          </style>
          <div data-u="navigator" class="jssorb031" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
              <div data-u="prototype" class="i" style="width:16px;height:16px;">
                  <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                      <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                  </svg>
              </div>
          </div>
          <!--#endregion Bullet Navigator Skin End -->
      
          <!--#region Arrow Navigator Skin Begin -->
          <!-- Help: https://www.jssor.com/development/slider-with-arrow-navigator.html -->
          <style>
              .jssora051 {display:block;position:absolute;cursor:pointer;}
              .jssora051 .a {fill:none;stroke:#fff;stroke-width:360;stroke-miterlimit:10;}
              .jssora051:hover {opacity:.8;}
              .jssora051.jssora051dn {opacity:.5;}
              .jssora051.jssora051ds {opacity:.3;pointer-events:none;}
          </style>
          <div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
              <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                  <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
              </svg>
          </div>
          <div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
              <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                  <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
              </svg>
          </div>
          <!--#endregion Arrow Navigator Skin End -->
      </div>
      <!-- Jssor Slider End -->
  </div>
  </div>
</div>
<div class="inner-contendbg" ng-controller="profileCtrl" id="plainProfileCode">
  <div class="container" ng-init="username='{{$username}}'">
    <div class="row" ng-init="getMatchData({!! htmlspecialchars(json_encode($data['friends'])) !!})">
      @include('new_leftsidebar')
      <div class="col-md-6" style="text-align: center;">
        <div>
          <div class="wel_user_txt">
            <h3>
              <a style="color:#fff">
                @if($currentUser==0)
                <div class="pull-right">
                  <button class="btn btn-default btn-sm" onclick="window.history.back()">
                    <i class="fa fa-angle-double-left" aria-hidden="true"></i> Back
                  </button>
                </div>
                Welcome to {{ $data['current_user']->firstName }} {{ $data['current_user']->lastName }}
                @else
                <div class="pull-right">
                  <button class="btn btn-default btn-sm" onclick="window.location.href='{{url().'/profile_settings'}}'">
                    <i class="fa fa-pencil" aria-hidden="true"></i> Edit Profile
                  </button>
                </div>
                Welcome to your profile
                @endif
              </a>
            </h3>
          </div>
        </div>

        @if($currentUser != '0')
        <div ng-class="{ 'hide-me' : userSelected==null || '{!! $currentUser !!}'=='0' }" class="hidden-xs">
          <div class="next-carousel">
            <ul class="carousel carousel-profile">


              @foreach($data['friends'] as $ind=>$single_user)

              <li class="item" style="cursor: pointer; background: url('{{ $single_user->photo }}') no-repeat center" ng-click="visitProfile(userSelected)"></li>

              @endforeach
            </ul>
          </div>
        </div>
        <div class="controls hidden-xs">
          <a href="#" class="previous btn btn-danger">
            <span class="fa fa-chevron-left"></span>
          </a>
          <a onclick="window.location.reload(true)" class="btn btn-danger reload">
            <span class="fa fa-refresh"></span> Refresh</a>
          <a href="#" class="next btn btn-danger">
            <span class="fa fa-chevron-right"></span>
          </a>
        </div>

        <div ng-class="{ 'hide-me' : userSelected==null || '{!! $currentUser !!}'=='0' }">
          <div class="upcoming-event-people carousel-current-user">
            <div class="upcoming-people-row">
              <div class="left-upcoming-user">
                <a href="{!! url('user/profile') !!}/@{{ userSelected.username }}">
                  <img src="@{{ userSelected.photo }}" alt="">
                </a>
              </div>
              <div class="upcoming-user-list">
                <div class="upcoming-user-icon">
                  <i class="fa fa-user-plus" ng-click="addFriendByUserID(userSelected.id)" uib-tooltip="Add as Friend"></i>
                  <!-- new  menu add -->
                  <i class="fa fa-gift" uib-tooltip="Send Gift" ng-click="virtualGiftModal('', userSelected)"></i>
                  <i class="fa fa-map" ng-click="gotoliveChat(userSelected.id)" uib-tooltip="Are We Nearby"></i>
                  <i class="fa fa-eye" ng-click="winkuser(userSelected)" uib-tooltip="Wink"></i>
                  <i class="fa fa-comments" ng-click=createSMS(userSelected.id,userSelected.firstName) uib-tooltip="Message"></i>
                </div>
                <h2>
                  <a class="profile-link" href="{!! url('user/profile') !!}/@{{ userSelected.username }}">
                    <i class="fa fa-circle new-state" ng-class="{'text-success' : userSelected.is_online, 'text-danger' : !userSelected.is_online}" aria-hidden="true"></i>
                    @{{ userSelected.firstName }} @{{ userSelected.lastName }}
                  </a>
                  <span class="percent">@{{ userSelected.percent }}%</span>
                </h2>
                <p>@{{ userSelected.location }}</p>
                <div class="u-favorite movie" ng-repeat="movie in userSelected.favorite.movies">
                  <img src="{{url()}}/public/images/@{{movie.image}}">
                  <p class="u-content">
                    @{{movie.name}}
                  </p>
                </div>
                <div class="u-favorite" ng-repeat="place in userSelected.favorite.places">
                  <img src="{{url()}}/public/images/@{{place.image}}">
                  <p class="u-content">
                    @{{place.name}}
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        @endif

        @if($currentUser != '1')
        <div class="profile-info" ng-class="{ 'hide-me' : '{!! $currentUser !!}'=='1' }">

          @if($data['current_user']->percent)
          <div style="margin-bottom: 10px;">
            <div class="upcoming-event-people" ng-init="userProfile='{!! $data['current_user']->id !!}'">
              <div class="upcoming-people-row">
                <div class="left-upcoming-user">
                  <img src="{{ $data['current_user']->photo }}" alt="">
                </div>
                <div class="upcoming-user-list">
                  <h2>{{ $data['current_user']->firstName }} {{ $data['current_user']->lastName }}
                    <span class="percent">{{ $data['current_user']->percent }}%</span>
                  </h2>
                  <p>{{ $data['current_user']->location }}</p>

                  @foreach($data_new['movies'] as $movie)
                  <div class="u-favorite movie">
                    <img src="{{url()}}/public/images/{!! $movie['image'] !!}">
                    <p class="u-content">
                      {!! $movie['name'] !!}
                    </p>
                  </div>
                  @endforeach @foreach($data_new['places'] as $place)
                  <div class="u-favorite">
                    <img src="{{url()}}/public/images/{!! $place['image'] !!}">
                    <p class="u-content">
                      {!! $place['name'] !!}
                    </p>
                  </div>
                  @endforeach
                </div>
              </div>
            </div>
          </div>

          <div class="panel panel-danger">
            <div class="panel-heading">
              <p class="panel-title lead">
                BACKGROUND/VALUES
              </p>
            </div>
            <ul class="list-group">
              <li class="list-group-item">
                Relationship goal:
                <span class="text-muted">@{{ userProfileData.relationshipGoal }}</span>
              </li>
              <li class="list-group-item">
                Ethnicity:
                <span class="text-muted">@{{ userProfileData.ethnicity }}</span>
              </li>
              <li class="list-group-item">
                Faith:
                <span class="text-muted">@{{ userProfileData.religiousBeliefs }}</span>
              </li>
              <li class="list-group-item">
                Education:
                <span class="text-muted">@{{ userProfileData.educationLevel }}</span>
              </li>
              <li class="list-group-item">
                Language:
                <span class="text-muted">@{{ userProfileData.language }}</span>
              </li>
            </ul>
          </div>

          <div class="panel panel-danger">
            <div class="panel-heading">
              <p class="panel-title lead">
                LIFESTYLE
              </p>
            </div>
            <ul class="list-group">
              <li class="list-group-item">
                Smoke:
                <span class="text-muted">@{{ userProfileData.smoke }}</span>
              </li>
              <li class="list-group-item">
                Drink:
                <span class="text-muted">@{{ userProfileData.drink }}</span>
              </li>
              <li class="list-group-item">
                Excercise frequency:
                <span class="text-muted">@{{ userProfileData.excercise }}</span>
              </li>
              <li class="list-group-item">
                Has kids:
                <span class="text-muted">@{{ userProfileData.haveChildren }}</span>
              </li>
              <li class="list-group-item">
                Occupation:
                <span class="text-muted">@{{ userProfileData.occupation }}</span>
              </li>
              <li class="list-group-item">
                Salary range:
                <span class="text-muted">@{{ userProfileData.income }}</span>
              </li>
              <li class="list-group-item">
                Zodiac Sign:
                <span class="text-muted">@{{ userProfileData.zodicSign }}</span>
              </li>
              <li class="list-group-item">
                My Movies:
                <div class="clearfix">
                  <div class="row">
                    <div class="col-sm-4" ng-repeat="movie in userProfileData.my_movies">
                      <img ng-src="@{{movie.image}}" class="img-responsive img-thumbnail" alt="">
                      <br>
                      <p class="text-center text-danger">
                        <small>@{{ movie.movies}}</small>
                      </p>
                    </div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                My Destination:
                <div class="clearfix">
                  <div class="row">
                    <div class="col-sm-4" ng-repeat="place in userProfileData.my_places">
                      <img ng-src="@{{place.image}}" class="img-responsive img-thumbnail" alt="">
                      <br>
                      <p class="text-center text-danger">
                        <small>@{{ place.destination }}</small>
                      </p>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>

          <div class="panel panel-danger">
            <div class="panel-heading">
              <p class="panel-title lead">
                APPEARANCE
              </p>
            </div>
            <ul class="list-group">
              <li class="list-group-item">
                Height:
                <span class="text-muted">@{{ userProfileData.height }}</span>
              </li>
              <li class="list-group-item">
                Body type:
                <span class="text-muted">@{{ userProfileData.bodyType }}</span>
              </li>
              <li class="list-group-item">
                Eye color:
                <span class="text-muted">@{{ userProfileData.eyeColor }}</span>
              </li>
              <li class="list-group-item">
                Hair color:
                <span class="text-muted">@{{ userProfileData.hairColor }}</span>
              </li>
            </ul>
          </div>

          @endif
        </div>
        @endif

        @if($currentUser != '0')
        <div class="upcoming-match" ng-class="{ 'hide-me' : '{!! $currentUser !!}'=='0' }">
          <p class="match-label">Best Match</p>
          <div class="upcoming-event-people" ng-repeat="match in matchUsers | filter: {page: currentPage}">
            <div class="upcoming-people-row">
              <div class="left-upcoming-user">
                <a href="{!! url('user/profile') !!}/@{{ match.username }}">
                  <img src="@{{ match.photo }}" alt="">
                </a>
              </div>
              <div class="upcoming-user-list">
                <div class="upcoming-user-icon">
                  <!-- <span class="u-icon"><i class="fa fa-facebook-square"></i></span>
                    <span class="u-icon"><i class="fa fa-facebook-square"></i></span>
                    <span class="u-icon"><i class="fa fa-facebook-square"></i></span> -->
                  <i class="fa fa-user-plus" ng-click="addFriend($index)" uib-tooltip="Add as Friend"></i>
                  <i class="fa fa-gift" uib-tooltip="Send Gift" ng-click="virtualGiftModal('', match)"></i>
                  <i class="fa fa-map" ng-click="gotoliveChat(match.id)" uib-tooltip="Are We Nearby"></i>
                  <i class="fa fa-eye" ng-click="winkuser(match)" uib-tooltip="Wink"></i>
                  <i class="fa fa-comments" ng-click="createSMS(match.id,match.firstName)" uib-tooltip="Message"></i>
                </div>
                <h2>
                  <i class="fa fa-circle  new-state"  ng-class="{'text-success' : match.is_online, 'text-danger' : !match.is_online}" aria-hidden="true" id="@{{ match.id }}-stateicon-new"></i>
                  <a class="profile-link" href="{!! url('user/profile') !!}/@{{ match.username }}">

                    @{{ match.firstName }} @{{ match.lastName }}</a>
                  <span>@{{ match.percent + '%' }}</span>
                </h2>
                <p>@{{ match.location }}</p>
                <div class="u-favorite movie" ng-repeat="movie in match.favorite.movies">
                  <img src="{{url()}}/public/images/@{{movie.image}}">
                  <p class="u-content">
                    @{{movie.name}}
                  </p>
                </div>
                <div class="u-favorite" ng-repeat="place in match.favorite.places">
                  <img src="{{url()}}/public/images/@{{place.image}}">
                  <p class="u-content">
                    @{{place.name}}
                  </p>

                </div>
              </div>
            </div>
          </div>
        </div>
        
        <button class="btn btn-danger match" ng-click="next()" ng-hide="nextButton" ng-class="{ 'hide-me' : '{!! $currentUser !!}'=='0' }">Next
          <span class="fa fa-angle-double-right"></span>
        </button>
        @endif

      </div>


      <div class="col-md-3">
        @include('right_sidebar')
      </div>
    </div>
  </div>
</div>
</div>

  {{--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>   --}}
  <script src="{{ url() }}/public/css/custom/rotating/js/jquery.circular-carousel.js"></script> 
  <script src="{{ url() }}/public/css/custom/rotating/js/script.js"></script>
  <script src="{{ url() }}/public/js/image_slider/jssor.slider.min.js"></script> 

  <script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);

      // Added by NickName ...
      var options = {
        $FillMode: 2,                                       //[Optional] The way to fill image in slide, 0 stretch, 1 contain (keep aspect ratio and put all inside slide), 2 cover (keep aspect ratio and cover whole slide), 4 actual size, 5 contain for large image, actual size for small image, default value is 0
        $AutoPlay: 1,                                       //[Optional] Auto play or not, to enable slideshow, this option must be set to greater than 0. Default value is 0. 0: no auto play, 1: continuously, 2: stop at last slide, 4: stop on click, 8: stop on user navigation (by arrow/bullet/thumbnail/drag/arrow key navigation)
        $Idle: 4000,                                        //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
        $PauseOnHover: 1,                                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

        $ArrowKeyNavigation: 1,   			                //[Optional] Steps to go for each navigation request by pressing arrow key, default value is 1.
        $SlideEasing: $Jease$.$OutQuint,                    //[Optional] Specifies easing for right to left animation, default value is $Jease$.$OutQuad
        $SlideDuration: 800,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
        $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide, default value is 20
        //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
        //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
        $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
        $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
        $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
        $DragOrientation: 1,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $Cols is greater than 1, or parking position is not 0)

        $BulletNavigatorOptions: {                          //[Optional] Options to specify and enable navigator or not
            $Class: $JssorBulletNavigator$,                 //[Required] Class to create navigator instance
            $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
            $SpacingX: 8,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
            $Orientation: 1                                //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
        },

        $ArrowNavigatorOptions: {                           //[Optional] Options to specify and enable arrow navigator or not
            $Class: $JssorArrowNavigator$,                  //[Requried] Class to create arrow navigator instance
            $ChanceToShow: 2                                 //[Optional] Steps to go for each navigation request, default value is 1
        }
      };

      var jssor_slider1 = new $JssorSlider$("slider1_container", options);

      //responsive code begin
      //you can remove responsive code if you don't want the slider scales while window resizing
      function ScaleSlider() {
          var bodyWidth = document.body.clientWidth;
          if (bodyWidth)
              jssor_slider1.$ScaleWidth(Math.min(bodyWidth, 1920));
          else
              window.setTimeout(ScaleSlider, 30);
      }
      ScaleSlider();

      $(window).bind("load", ScaleSlider);
      $(window).bind("resize", ScaleSlider);
      $(window).bind("orientationchange", ScaleSlider);
      // responsive code end
    })();

  </script>

  @endsection