@extends('master')

@section('form_area')

<div class="signup-form" ng-controller="signupController" ng-cloak>

    <div class="inner-header aboutyour-header">
        <div class="container">
            <h1>
                <i class="icon-sprite signup-icon"></i>Sign up</h1>
            <p>Create an account and get ready to have a serious date</p>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-default" id="signup_facebook">
                    <div class="panel-body">
                        <p class="text-center padding padding-top">
                            <button class="btn btn-lg btn-info btn-fb" onclick="signUpwithFacebook()" style="padding: 10px !important;">
                                <i class="fa fa-facebook" aria-hidden="true"></i> Signup with Facebook
                            </button>
                            <button class="btn btn-lg btn-info" onclick="signUpWithGoogle()" style="padding: 10px !important;">
                                <i class="fa fa-google" aria-hidden="true"></i> Signup with Google
                            </button>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <form name="registerform" action="{{route('users.registerStore')}}" method="post" id="registerform" ng-submit="submitForm(registerform)" ng-validate="validationOptions" class="signup_form" enctype="multipart/form-data" novalidate>
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
				<input type="hidden" name="fb_id" ng-model="user.fb_id" />
                <fieldset id="signup_form_first_field">
                    <h2 class="fs-title">Create your account</h2>
                    <h3 class="fs-subtitle">This is step 1</h3>
                    <div class="col-sm-3 crop-col" ng-show="!imgDone.done">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="cropArea">
                                    <ui-cropper image="myImage" result-image="myCroppedImage" on-load-done="imgEdit = false" result-image-quality="0.5" area-type="square"></ui-cropper>
                                </div>
                                <div>
                                    <div class="hidden">
                                        <input type="file" id="fileInput" name="profile_pic" />
                                    </div>
                                    <a class="btn btn-primary btn-block" onclick="$('#fileInput').click()">
                                        Upload Picture
                                    </a>
                                    <button id="startbutton" class="btn btn-primary btn-block">
                                        Capture Camera
                                    </button>
                                    <div class="camera">
                                        <video id="video">Video stream not available.</video>
                                    </div>
                                    <canvas id="canvas" style="display:none">
                                    </canvas>
									<input type="hidden" name="profile_image" value="@{{myCroppedImage}}" >
                                    <button class="btn btn-success btn-block" ng-if="!imgEdit" ng-click="uploadImageDone()">
                                        Done
                                    </button>
                                    <img id="picture" class="picture" src="" style="display:none">
                                </div>


                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 text-center crop-col" ng-if="imgDone.done">
                        <div>
                            <img class="img-thumbnail img-responsive" ng-src="@{{myCroppedImage}}" />
                        </div>
                        <div class="padding-top">
                            <button class="btn btn-default" ng-if="!imgEdit" ng-click="imgDone.done = !imgDone.done; imgEdit = !imgEdit">
                                Update
                            </button>
                        </div>
                    </div>

                    <div class="col-sm-9">
						@if ($errors->any())
							<ul type="circle" class="red-error-list">
							 @foreach($errors->all(':message') as $message)
								<li>{{$message}}</li>
							 @endforeach
							</ul>
						@endif
					
                        <div class="row profile-img-styling">
                            <div class="select-type">Select Type:</div>
                            <div class="col-xs-4 img-blocks">
                                <div class="checkbox-bg">
                                    <input type="radio" id="radius-full" name="profileType" value="1" ng-model="profileType">
                                    <label for="radius-full">
                                        <span></span>
                                    </label>
                                </div>
                                <div class="images-style-bg full-radius">
                                    {{--
                                    <img alt="your image" src="{{ url() }}/public/images/profile-img.jpg" id="blah"> --}}
                                    <img alt="your image" ng-src="@{{myCroppedImage}}" id="my picture">
                                    <div class="profile-btm-shedow"></div>
                                </div>
                            </div>

                            <div class="col-xs-4 img-blocks">
                                <div class="checkbox-bg">
                                    <input type="radio" id="radius-six" name="profileType" value="2" ng-model="profileType">
                                    <label for="radius-six">
                                        <span></span>
                                    </label>
                                </div>
                                <div class="hexa">
                                    <div class="hex1">
                                        <div class="hex2">
                                            <img alt="your image" ng-src="@{{myCroppedImage}}" id="my picture"> {{--
                                            <img src="{{ url() }}/public/images/profile-img.jpg" alt="" /> --}}
                                        </div>
                                    </div>
                                </div>
                                <div class="profile-btm-shedow" style="width: auto;"></div>
                            </div>

                            <div class="col-xs-4 img-blocks">
                                <div class="checkbox-bg">
                                    <input type="radio" id="corner" name="profileType" value="3" ng-model="profileType">
                                    <label for="corner">
                                        <span></span>
                                    </label>
                                </div>
                                <div class="images-style-bg">
                                    <img alt="your image" ng-src="@{{myCroppedImage}}" id="my picture"> {{--
                                    <img alt="your image" src="{{ url() }}/public/images/profile-img.jpg" id="blah"> --}}
                                    <div class="profile-btm-shedow"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-9" style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
                    <div class="" id="signup_form_first" style="width: 100%; margin-top: 20px;">
                        <div class="form-group">
                            <input type="text" name="email" class="form-control" placeholder="Email address" ng-model="user.email" required autofocus>
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" placeholder="Password" ng-model="user.password" required>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="next" class="next action-button" value="Next" />
                        </div>
                    </div>

                </fieldset>
                <fieldset>
                    <h2 class="fs-title">Social Profiles</h2>
                    <h3 class="fs-subtitle">Your presence on the social network</h3>
                    <input type="text" name="twitter" placeholder="Twitter" />
                    <input type="text" name="facebook" placeholder="Facebook" />
                    <input type="text" name="gplus" placeholder="Google Plus" />
                    <input type="button" name="previous" class="previous action-button" value="Previous" />
                    <input type="button" name="next" class="next action-button" value="Next" />
                </fieldset>
                <fieldset>
                    <h2 class="fs-title">Personal Details</h2>
                    <h3 class="fs-subtitle">We will never sell it</h3>
                    <input type="text" name="fname" placeholder="First Name" />
                    <input type="text" name="lname" placeholder="Last Name" />
                    <input type="text" name="phone" placeholder="Phone" />
                    <textarea name="address" placeholder="Address"></textarea>
                    <input type="button" name="previous" class="previous action-button" value="Previous" />
                    <input type="submit" name="submit" class="submit action-button" value="Submit" />
                </fieldset>

                <ul id="progressbar">
                    <li class="active">Account Setup</li>
                    <li>Social Profiles</li>
                    <li>Personal Details</li>
                </ul>
            </form>
        </div>
    </div>

    <script type="text/ng-template" id="loading-modal.html">
        <div>
            <p class="lead text-center">
                <i class="fa fa-spinner fa-spin fa-3x" aria-hidden="true"></i>
            </p>
        </div>

    </script>

</div>

@endsection