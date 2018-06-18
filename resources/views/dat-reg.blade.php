<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Match Site</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Matthew Howell" />
    <meta name="description" content="fullPage continuous scrolling demo." />
    <meta name="keywords" content="fullpage,jquery,demo,scroll,loop,continuous" />
    <meta name="Resource-type" content="Document" />
	
    <!-- Bootstrap core CSS -->
    <link href="match/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">	
    <link href="match/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Slide effect -->
    <link rel="stylesheet" type="text/css" href="match/css/jquery.fullPage.css" />
    <!-- <link rel="stylesheet" type="text/css" href="css/examples.css" /> -->

    <!-- SLick Slider effect -->
    <link rel="stylesheet" type="text/css" href="match/css/slick.css">
    <link rel="stylesheet" type="text/css" href="match/css/slick-theme.css">

    <!-- Range Slider css  -->
    <link rel="stylesheet" type="text/css" href="match/css/rangeslider.css">

    <!-- Custom css  -->
    <link rel="stylesheet" type="text/css" href="match/css/style.css">

    <!-- Jquery, Jquery-UI -->
    <!--<script src="match/js/jquery-3.3.1.slim.min.js"></script>-->
    <script src="match/js/jquery-3.2.1.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>

</head>

<body>

    <!-- Home Section -->
    <section class="container-fluid p-0 bg_image main_sec first_block">
        <div class="container home_front">
            <div class="row">
                <div class="col-sm-12">
                    <div class="content text-center">
                        <a class="pb-5 home_title" ><img src="match/images/logo.png" class="image-full" /></a>
                        <p class="title_tag pb-3">Hi, People. <span class="bold_font"> Nice to Meet you.</span></p>
                        <p class="title_sub">Help us get know you so that we can recommend some great people.</p>
                        <a id="started" class="btn_outline">Let's Get Started!</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SLider Steps -->
    <section id="fullpage" class="container-fluid p-0 bg_image main_sec">
	{{csrf_field()}}
        <div class="section active" id="section1">			
			
            <div class="slide active" id="slide1">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center text-white">
                                <h3 class="title_txt">What type of relationship are you looking for?</h3>
                                <p class="title_sub_small">This will not display on your profile.</p>
								<img src="match/images/border.png"/>
                                <p class="click_txt">Click to select</p>

                                <div class="rel_rdo mb-5 pb-5">
                                    <label class="relation_rdo">
                                        <input class="rel-type-radio" type="radio" checked="checked" name="rel_radio" value="sort_term">
                                        <span class="checkmark first_bg"></span>
                                        <p class="red_lbl" id="sort_term">Sort-term Relationship</p>
                                    </label>
                                    <label class="relation_rdo">
                                        <input class="rel-type-radio" type="radio" name="rel_radio" value="mid_term">
                                        <span class="checkmark second_bg"></span>
                                        <p class="red_lbl" id="mid_term">Mid-term Relationship</p>
                                    </label>
                                    <label class="relation_rdo">
                                        <input class="rel-type-radio" type="radio" name="rel_radio" value="pr_term">
                                        <span class="checkmark third_bg"></span>
                                        <p class="red_lbl" id="pr_term">Permenant-term Relationship</p>
                                    </label>
                                    <label class="relation_rdo">
                                        <input class="rel-type-radio" type="radio" name="rel_radio" value="long_term">
                                        <span class="checkmark four_bg"></span>
                                        <p class="red_lbl" id="long_term">Long-term Relationship</p>
                                    </label>
                                </div>

                                <a href="#slide2" id="slide_one" class="btn btn_light_outline">Save & Continue</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide2">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center">
                                <h3 class="title_txt">What is your height?</h3>
                                <div class="r_slider">
                                  <input min="4" max="6" step="0.1" value="6" type="range" data-orientation="vertical">								  
                                </div>
                                <a href="#slide3" id="slide_two" class="btn btn_light_outline">I am  <output></output> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide3">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center nav_arrow_parent">
                                <h3 class="title_txt">Do you want children?</h3>
								<div class="nav_arrow left_nav_arrow"><p>Back <i class="fa fa-long-arrow-left" aria-hidden="true"></i></p></div>
                                <div class="radio_parent">
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="child_radio" value="No">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">No</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="child_radio" value="Definitely">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Definitely</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="child_radio" value="Someday">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Someday</p>
                                    </label>
                                </div>								
								<div id="child_right" class="nav_arrow right_nav_arrow"><p><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Next</p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide4">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center nav_arrow_parent">
                                <h3 class="title_txt">Do you smoke?</h3>
								<div class="nav_arrow left_nav_arrow"><p>Back <i class="fa fa-long-arrow-left" aria-hidden="true"></i></p></div>
                                <div class="radio_parent">
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="smoke_radio" value="No">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">No</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="smoke_radio" value="Yes - occasionally">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Yes - occasionally</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="smoke_radio" value="Yes - daily">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Yes - daily</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="smoke_radio" value="Yes - trying to quit">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Yes - trying to quit</p>
                                    </label>
                                </div>
								<div id="smoke_right" class="nav_arrow right_nav_arrow"><p><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Next</p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide5">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center nav_arrow_parent">
                                <h3 class="title_txt">How often do you drink?</h3>
								<div class="nav_arrow left_nav_arrow"><p>Back <i class="fa fa-long-arrow-left" aria-hidden="true"></i></p></div>
                                <div class="radio_parent">
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="drink_radio" value="Never">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Never</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="drink_radio" value="Social drinker">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Social drinker</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="drink_radio" value="Moderately">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Moderately</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="drink_radio" value="Regularly">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Regularly</p>
                                    </label>
                                </div>
								<div id="drink_right" class="nav_arrow right_nav_arrow"><p><i class="fa fa-long-arrow-right" aria-hidden="true"></i> Next</p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide6">
                <a href="#slide7" class="slide_six skip_txt">skip</a>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center">
                                <h3 class="title_txt">Which ethnicities best describe you?</h3>
                                <div class="chk_checkbox pb-5">
                                    <div class="chk_w mb-3">
                                        <label class="chk_parent"> White / Caucasian
                                            <input type="checkbox" class="ethnicities-chk" value="White / Caucasian">
                                            <span class="chk_check"></span>
                                        </label>
                                    </div>
                                    <div class="chk_w mb-3">
                                        <label class="chk_parent"> Middle Eastern
                                            <input type="checkbox" class="ethnicities-chk" value="Middle Eastern">
                                            <span class="chk_check"></span>
                                        </label>
                                    </div>
                                    <div class="chk_w mb-3">
                                        <label class="chk_parent"> Black / African
                                            <input type="checkbox" class="ethnicities-chk" value="Black / African">
                                            <span class="chk_check"></span>
                                        </label>
                                    </div>
                                    <div class="chk_w mb-3">
                                        <label class="chk_parent"> Pacific Islander
                                            <input type="checkbox" class="ethnicities-chk" value="Pacific Islander">
                                            <span class="chk_check"></span>
                                        </label>
                                    </div>
                                    <div class="chk_w mb-3">
                                        <label class="chk_parent"> Latino / Hispanic
                                            <input type="checkbox" class="ethnicities-chk" value="Latino / Hispanic">
                                            <span class="chk_check"></span>
                                        </label>
                                    </div>
                                    <div class="chk_w mb-3">
                                        <label class="chk_parent"> East Indian
                                            <input type="checkbox" class="ethnicities-chk" value="East Indian">
                                            <span class="chk_check"></span>
                                        </label>
                                    </div>
                                    <div class="chk_w mb-3">
                                        <label class="chk_parent"> Asian
                                            <input type="checkbox" class="ethnicities-chk" value="Asian">
                                            <span class="chk_check"></span>
                                        </label>
                                    </div>
                                    <div class="chk_w mb-3">
                                        <label class="chk_parent"> Other
                                            <input type="checkbox" class="ethnicities-chk" value="Other">
                                            <span class="chk_check"></span>
                                        </label>
                                    </div>
                                    <div class="chk_w mb-3">
                                        <label class="chk_parent"> Native American
                                            <input type="checkbox" class="ethnicities-chk" value="Native American">
                                            <span class="chk_check"></span>
                                        </label>
                                    </div>
                                </div>
                                <a href="#slide7" id="slide_six" class=" btn btn_light_outline btn_disable">Save & Continue</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="related_profile">
                    <div class="users_list">
                        <p class="bottom_txt">Here are some matches
                            <br>you might like</p>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide7">
                <a href="#slide8" class="slide_seven skip_txt">skip</a>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center text-white self_height">
                                <h3 class="title_txt">What is your religion?</h3>
                                <div class="radio_parent religion_rdo pb-3">
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="religion_radio" value="Christian / Other">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Christian / Other</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="religion_radio" value="Other">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Other</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="religion_radio" value="Christian / Catholic">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Christian / Catholic</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="religion_radio" value="Christian / Protestant">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Christian / Protestant</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="religion_radio" value="Spiritual but not religious">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Spiritual but not religious</p>
                                    </label>
                                    <label class="default_rdo_btn">
                                        <input type="radio" name="religion_radio" value="Agnostic">
                                        <span class="rdo_chk"></span>
                                        <p class="radio_label">Agnostic</p>
                                    </label>
                                </div>								 
                                <!--<a href="#slide8" class="text-white more_link pt-5 pb-5">Show more options</a>-->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="related_profile">
                    <div class="users_list">
                        <p class="bottom_txt">Here are some matches
                            <br>you might like</p>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide8">
                <a href="#slide9" class="slide_eight skip_txt">skip</a>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center self_height">
                                <h3 class="title_txt">What are your interests?</h3>
                                <div class="checkbox_interests">
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Alumini connection">
                                            <span class="txt_color">Alumini connection</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Business networking">
                                            <span class="txt_color">Business networking</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Book club">
                                            <span class="txt_color">Book club</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Caping">
                                            <span class="txt_color">Caping</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Cofee and conversation">
                                            <span class="txt_color">Cofee and conversation</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Cooking">
                                            <span class="txt_color">Cooking</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Dining out">
                                            <span class="txt_color">Dining out</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Fishing / Hunting">
                                            <span class="txt_color">Fishing / Hunting</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Gardening / Landscaping">
                                            <span class="txt_color">Gardening / Landscaping</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Hobbies and crafts">
                                            <span class="txt_color">Hobbies and crafts</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Movies / Videos">
                                            <span class="txt_color">Movies / Videos</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Mueseums and art">
                                            <span class="txt_color">Mueseums and art</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Music and conserts">
                                            <span class="txt_color">Music and conserts</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Exploring new areas">
                                            <span class="txt_color">Exploring new areas</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Nightclubs / Dancing">
                                            <span class="txt_color">Nightclubs / Dancing</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Performing arts">
                                            <span class="txt_color">Performing arts</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Playing cards">
                                            <span class="txt_color">Playing cards</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Playing spots">
                                            <span class="txt_color">Playing spots</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Political interests">
                                            <span class="txt_color">Political interests</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Religion / Spiritual">
                                            <span class="txt_color">Religion / Spiritual</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Shopping / Antiques">
                                            <span class="txt_color">Shopping / Antiques</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Travel / Sightseeing">
                                            <span class="txt_color">Travel / Sightseeing</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Video games">
                                            <span class="txt_color">Video games</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Volunteering">
                                            <span class="txt_color">Volunteering</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Watching sports">
                                            <span class="txt_color">Watching sports</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox pb-3">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="int_chk" value="Wine tasting">
                                            <span class="txt_color">Wine tasting</span>
                                            <span class="int_chk"></span>
                                        </label>
                                    </div>
                                </div>
                                <a href="#slide9" id="slide_eight" class="btn btn_light_outline btn_disable"><span class="interests-selected-count">0</span>/5 Selected</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="related_profile">
                    <div class="users_list">
                        <p class="bottom_txt">Here are some matches
                            <br>you might like</p>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide9">
                <a href="#slide10" class="slide_nine skip_txt">skip</a>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center text-white spec_h">
                                <h3 class="title_txt">Looking for something specific?</h3>
                                <div class="checkbox_interests spec_justify pb-5">
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Height">
                                            <div class="txt_color">Age</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Height">
                                            <div class="txt_color">Height</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Body Type">
                                            <div class="txt_color">Body Type</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Wants kids">
                                            <div class="txt_color">Wants kids</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Has kids">
                                            <div class="txt_color">Has kids</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Ethnicity">
                                            <div class="txt_color">Ethnicity</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Drinking">
                                            <div class="txt_color">Drinking</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Education">
                                            <div class="txt_color">Education</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Religion">
                                            <div class="txt_color">Religion</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Smoking">
                                            <div class="txt_color">Smoking</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Marital Status">
                                            <div class="txt_color">Marital Status</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>
                                    <div class="int_checkbox spec_w">
                                        <label class="int_chk_btn">
                                            <input type="checkbox" name="specific_chk" value="Salary">
                                            <div class="txt_color">Salary</div>
                                            <span class="int_chk spec_chk"></span>
                                        </label>
                                    </div>

                                </div>
                                <a href="#slide10" id="slide_nine" class="btn btn_light_outline">Continue</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="related_profile">
                    <div class="users_list">
                        <p class="bottom_txt">Here are some matches
                            <br>you might like</p>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img">
                            <img src="match/images/profile_one.jpg" class="pro_img" />
                            <div class="active_circle"></div>
                        </a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                        <a href="#" class="profile_img default_usr">
							<i class="fa fa-user-o" aria-hidden="true"></i>
						</a>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide10">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center text-white self_height s_h">
                                <h3 class="title_txt">Tell us a little about yourself.</h3>
                                <p class="title_tag_bottom mb-4">No pressure, you can change this later.</p>
                                <div class="detail_tab">
                                    <textarea name="bio_text" rows="6" class="txt_area form-control" placeholder="I have a great sense of humor and laugh at myself all the time i'd like to meet someone who is adventurous and likes having fun."></textarea>
                                </div>                                
                                <div class="text-left detail_sec">
                                    <div class="chk_checkbox pt-3">
                                        <div class="mb-2">
                                            <label class="chk_parent"> Bonus! Double your chances to find a match.
                                                <input type="checkbox" name="bonus_chances_to_find_match">
                                                <span class="chk_check"></span>
                                            </label>
                                        </div>
                                        <p class="text-left small_text">We will send your profile to one of your our siste sites to increase your searches,
                                            <br>matches, and more! <small> (details will arrive in an email soon)</small> </p>
                                    </div>
                                    <div class="chk_checkbox">
                                        <div class="mb-2">
                                            <label class="chk_parent"> Consider my profile for member spotlight.
                                                <input type="checkbox" name="member_spotlight">
                                                <span class="chk_check"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <a href="#" class="info_link">More info</a>
                                </div>
								<a href="#" id="slide_ten" class="btn btn_light_outline">Save & Continue</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slide" id="slide11">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center member_h">
                                <h3 class="title_txt">As a full member you can:</h3>
                                <div class="row pb-5 pt-5 member_opt">
                                    <div class="col-sm-3">
                                        <div class="ico_part">
                                            <i class="fa fa-commenting-o" aria-hidden="true"></i>
                                        </div>
                                        <p class="ico_title">Chat with local
                                            <br> singles</p>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="ico_part">
                                            <i class="fa fa-envelope-o" aria-hidden="true"></i>
                                        </div>
                                        <p class="ico_title">send & receive
                                            <br>messages</p>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="ico_part">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </div>
                                        <p class="ico_title">See who's
                                            <br>viewed you</p>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="ico_part">
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                        </div>
                                        <p class="ico_title">Attend In-Person
											<br>Events & More</p>
                                    </div>
                                </div>
                                <a href="#slide12" id="slide_eleven" class="btn btn_light_outline">Save & Continue</a>
                                <a href="#slide12" class="fade_link">I'll Subscribe Later</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slide active" id="slide12">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center text-white">
                                <h3 class="title_txt">Which sounds most like you?</h3>
                                <section class="regular slider pb-3">
                                    <div>
                                      <label class="sound_radio">
                                        <input type="radio"  name="sound_rdo" value="Analytical">
                                        <div class="txt_slide">
                                          <i class="fa fa-line-chart" aria-hidden="true"></i>
                                          <div class="slide_txt">Analytical</div>
                                        </div>
                                        <span class="slide_rdo"></span>
                                      </label>
                                    </div>
                                    <div>
                                      <label class="sound_radio">
                                        <input type="radio"  name="sound_rdo" value="Artistic">
                                        <div class="txt_slide">
                                          <i class="fa fa-paint-brush" aria-hidden="true"></i>
                                          <div class="slide_txt">Artistic</div>
                                        </div>
                                        <span class="slide_rdo"></span>
                                      </label>
                                    </div>
                                    <div>
                                      <label class="sound_radio">
                                        <input type="radio"  name="sound_rdo" value="Career Focused">
                                        <div class="txt_slide">
                                          <i class="fa fa-briefcase" aria-hidden="true"></i>
                                          <div class="slide_txt">Career Focused</div>
                                        </div>
                                        <span class="slide_rdo"></span>
                                      </label>
                                    </div>
                                    <div>
                                      <label class="sound_radio">
                                        <input type="radio"  name="sound_rdo" value="Community Services">
                                        <div class="txt_slide">
                                          <i class="fa fa-globe" aria-hidden="true"></i>
                                          <div class="slide_txt">Community Services</div>
                                        </div>
                                        <span class="slide_rdo"></span>
                                      </label>
                                    </div>
                                    <div>
                                      <label class="sound_radio">
                                        <input type="radio"  name="sound_rdo" value="Dependable">
                                        <div class="txt_slide">
                                          <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                          <div class="slide_txt">Dependable</div>
                                        </div>
                                        <span class="slide_rdo"></span>
                                      </label>
                                    </div>
                                    <div>
                                      <label class="sound_radio">
                                        <input type="radio"  name="sound_rdo" value="Analytical">
                                        <div class="txt_slide">
                                          <i class="fa fa-users" aria-hidden="true"></i>
                                          <div class="slide_txt">Analytical</div>
                                        </div>
                                        <span class="slide_rdo"></span>
                                      </label>
                                    </div>

                                </section>
                                <p class="font_btm pb-5">After a few not-so-great jobs, i'm lucky enough to have found a career that i love.it's amazing how much of a positive affect it's had on the rest of my life.</p>
                                <a href="#slide13" id="slide_twelve" class="btn btn_light_outline">Save & Continue</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slide active" id="slide13">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="content text-center text-white">
                                <h3 class="last_txt pb-5">A profile in your own words <br/><span>gets more attention.</span></h3>
                                <div class="mb-5 help_mar">
                                  <a href="#slide12" id="slide_therteen" class="btn btn_dark">Help me write it</a>
                                </div>
                                <a href="#slide1" class="slide_therteen btn btn_go_back"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> Go back (add more)</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- Bootstrap js -->
    <script src="match/js/popper.min.js"></script>
    <script src="match/js/bootstrap.min.js"></script>

    <!-- Slider Effect JS -->
    <script type="text/javascript" src="match/js/jquery.fullPage.js"></script>

    <!-- Slick Slider  JS -->
    <script src="match/js/slick.min.js" type="text/javascript" charset="utf-8"></script>

    <!-- Range Slider  JS -->
    <script src="match/js/rangeslider.min.js" type="text/javascript" charset="utf-8"></script>

    <script type="text/javascript">
        // Apply Window Height
        function height_window(){
          var w_h = $(window).height();
          $('.main_sec').css('height', w_h);
        }
        height_window();

        // Responsive Height in jquery
        function height_resize(){
          // Slick SLider 768
          if ($(window).width() >= 768 && $(window).width() <= 1199){
            $(".regular").slick({
              slidesToShow: 3
            });
          };
        }
        function height_resize_425(){
          // Slick SLider 768
          if ($(window).width() >= 425 && $(window).width() <= 767){
            $(".regular").slick({
              slidesToShow: 2
            });
          };
        }
        function height_resize_320(){
          // Slick SLider 768
          if ($(window).width() >= 320 && $(window).width() <= 424){
            $(".regular").slick({
              slidesToShow: 1
            });
          };
        }

        $(window).resize(function(){
            height_window();
            height_resize();
            height_resize_425();
            height_resize_320();
        });

        $(document).ready(function() {

            // Frst page link
            $("#started").click(function() {
                $('#fullpage').show();
                $('.first_block').hide();
            });

            // Slider Slide
            $('#fullpage').fullpage({
                // sectionsColor: ['#1bbc9b', '#4BBFC3', '#7BAABE', 'whitesmoke', '#ccddff'],
                controlArrows: false,
                slidesNavPosition: 'bottom',
                slidesNavigation: true,
                verticalCentered: true,
                responsiveWidth: 0,
            		responsiveHeight: 0,
            		responsiveSlides: true
              });

            // Radio Lable Style relationship
            $("input[name=rel_radio]:radio").click(function() {
                if ($('input[name=rel_radio]:checked').val() == "sort_term") {                    
					$('#sort_term').css("opacity","1");
                    $('#mid_term').css("opacity","0.3");
                    $('#pr_term').css("opacity","0.3");
                    $('#long_term').css("opacity","0.3");
                } else if ($('input[name=rel_radio]:checked').val() == "mid_term") {
                    $('#sort_term').css("opacity","0.3");
                    $('#mid_term').css("opacity","1");
                    $('#pr_term').css("opacity","0.3");
                    $('#long_term').css("opacity","0.3");
                } else if ($('input[name=rel_radio]:checked').val() == "pr_term") {
                    $('#sort_term').css("opacity","0.3");
                    $('#mid_term').css("opacity","0.3");
                    $('#pr_term').css("opacity","1");
                    $('#long_term').css("opacity","0.3");
                } else if ($('input[name=rel_radio]:checked').val() == "long_term") {
                    $('#sort_term').css("opacity","0.3");
                    $('#mid_term').css("opacity","0.3");
                    $('#pr_term').css("opacity","0.3");
                    $('#long_term').css("opacity","1");
                }
            });

            // Range Slider for height
            var $element = $('input[type="range"]');
            var $output = $('output');
            function updateOutput(el, val) {
              el.textContent = val;
            }
            $element
            .rangeslider({
              polyfill: false,
              onInit: function() {
                updateOutput($output[0], this.value);
              }
            })
            .on('input', function() {
              updateOutput($output[0], this.value);
            });

            // Slick Slider
            setTimeout(function(){
              height_resize();
              height_resize_425();
              height_resize_320();
            },2000);

            setTimeout(function(){
              $(".regular").slick({
                dots: false,
                infinite: false,
                slidesToShow: 5,
                slidesToScroll: 1
              });
            },2500);
			
			
			
			$('.ethnicities-chk').change(function(){
				if($('.ethnicities-chk:checked').length==0){
					$('#slide_six').css('pointer-events','none');
					$('#slide_six').addClass('btn_disable');
				}else{
					$('#slide_six').css('pointer-events','all');
					$('#slide_six').removeClass('btn_disable');
				}
			});
			
			$('input[type=checkbox][name=int_chk]').change(function(){
				if($('input[type=checkbox][name=int_chk]:checked').length==0){
					$('#slide_eight').css('pointer-events','none');
					$('#slide_eight').addClass('btn_disable');
				}else if($('input[type=checkbox][name=int_chk]:checked').length==6){
					$(this).prop('checked',false);
				}else{
					$('#slide_eight').css('pointer-events','all');
					$('#slide_eight').removeClass('btn_disable');
				}
				$('.interests-selected-count').text($('input[type=checkbox][name=int_chk]:checked').length);
			});
            // Page Transaction
			function save_values(array){
				//console.log(array);
				$.ajax({
					url:"/register-details-update",
					type: "POST",
					data: {_token:$('input[name=_token]').val(),data:array},
					success: function(response) {
						console.log(response);
					}
				});
			}
			
            $('#slide_one').click(function(e) {
              e.preventDefault();
			  save_values({type_of_relationship:$('.rel-type-radio:checked').val()});
              $('.fp-slidesNav ul li:nth-child(2) a').click();
            });
            $('#slide_two').click(function(e) {
              e.preventDefault();
			  save_values({height:$output.val()});
              $('.fp-slidesNav ul li:nth-child(3) a').click();
            });
			$('input[type=radio][name=child_radio]').change(function(){
				save_values({want_children:$(this).val()});
				$('.fp-slidesNav ul li:nth-child(4) a').click();
			});
			$('input[type=radio][name=smoke_radio]').change(function(){
				save_values({smoking:$(this).val()});
				$('.fp-slidesNav ul li:nth-child(5) a').click();
			});
			$('input[type=radio][name=drink_radio]').change(function(){
				save_values({drink:$(this).val()});
				$('.fp-slidesNav ul li:nth-child(6) a').click();
			});
            $('#slide_six').click(function(e) {
              e.preventDefault();
			  var ethnicities = [];
				$('.ethnicities-chk:checked').each(function () {
					ethnicities.push($(this).val());
				});
			  save_values({ethnicities:ethnicities});
              $('.fp-slidesNav ul li:nth-child(7) a').click();
            });
			
			$('input[type=radio][name=religion_radio]').change(function(){
				save_values({religion:$(this).val()});
				$('.fp-slidesNav ul li:nth-child(8) a').click();
			});
			
            $('#slide_eight').click(function(e) {
              e.preventDefault();
			  var interests = [];
				$('input[type=checkbox][name=int_chk]:checked').each(function () {
					interests.push($(this).val());
				});
			  save_values({interests:interests});
              $('.fp-slidesNav ul li:nth-child(9) a').click();
            });
            $('#slide_nine').click(function(e) {
              e.preventDefault();
			  
			  var specific_chk = [];
				$('input[type=checkbox][name=specific_chk]:checked').each(function () {
					specific_chk.push($(this).val());
				});
			  save_values({looking_something_specific:specific_chk});
              $('.fp-slidesNav ul li:nth-child(10) a').click();
            });
			$('#slide_ten').click(function(e) {
              e.preventDefault();
			  var bonus_chances_to_find_match=0;
			  if($('input[type=checkbox][name=bonus_chances_to_find_match]:checked').length > 0){
				  bonus_chances_to_find_match=1;
			  }
			  var member_spotlight=0;
			  if($('input[type=checkbox][name=member_spotlight]:checked').length > 0){
				  member_spotlight=1;
			  }
			  save_values({bio:$('textarea[name=bio_text]').val(),bonus_chances_to_find_match:bonus_chances_to_find_match,member_spotlight:member_spotlight});
              $('.fp-slidesNav ul li:nth-child(11) a').click();
            });
            $('#slide_eleven').click(function(e) {
              e.preventDefault();
              $('.fp-slidesNav ul li:nth-child(12) a').click();
            });
            $('#slide_twelve').click(function(e) {
              e.preventDefault();
			  var sound_rdo="";
			  if($('input[type=radio][name=sound_rdo]:checked').length > 0){
				  sound_rdo=$('input[type=radio][name=sound_rdo]:checked').val();
			  }
			  save_values({	sounds_most_like:sound_rdo});
              $('.fp-slidesNav ul li:nth-child(13) a').click();
            });
			
            $('#slide_therteen').click(function(e) {
              e.preventDefault();
              $('.fp-slidesNav ul li:nth-child(1) a').click();
            });
            $('.slide_therteen').click(function(e) {
              e.preventDefault();
              $('.fp-slidesNav ul li:nth-child(1) a').click();
            });
			
			$('#child_right').click(function(e) {
              e.preventDefault();
              $('.fp-slidesNav ul li:nth-child(4) a').click();
            });
			$('#smoke_right').click(function(e) {
              e.preventDefault();
              $('.fp-slidesNav ul li:nth-child(5) a').click();
            });
			$('#drink_right').click(function(e) {
              e.preventDefault();
              $('.fp-slidesNav ul li:nth-child(6) a').click();
            });

        });
    </script>

</body>

</html>
