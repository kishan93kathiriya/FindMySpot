<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0064)http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html -->
<html lang="en" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Eden Garden -  HTML5 Template</title>
    <link rel="shortcut icon" type="image/png" href="http://demo.wpthemeshaper.com/eden-garden/images/favicon.png">

    <!-- Animation -->
    <link rel="stylesheet" type="text/css" href="css/animations.css">

    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<script src = "https://maps.googleapis.com/maps/api/js"></script>
      
      <script>
         function loadMap() {
			
            var mapOptions = {
               center:new google.maps.LatLng(20.593684, 78.96288), zoom:12,
               mapTypeId:google.maps.MapTypeId.ROADMAP
            };
				
            var map = new google.maps.Map(document.getElementById("sample"),mapOptions);
         }
      </script>
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
	<style type="text/css">.fancybox-margin{margin-right:17px;}</style><style type="text/css">.fancybox-margin{margin-right:17px;}</style>
</head>
<body onload = "loadMap()">

    <!-- Preloader -->
    <div class="preloader" style="display: none;"></div>
    <!-- header top start -->
    
    <!-- modal start -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="modal fade bs-example-modal-md" tabindex="-1">
                  <div class="modal-dialog modal-md" role="document">
                    <div class="modal-content">
                        <h3>Free Consultation</h3>
                        <div class="small-line"></div>
                        <form id="contact_form" action="<%=request.getContextPath()%>/Main?flag=login" name="contact_form" class="" method="post">
                            <div class="row">
                              <div class="col-sm-6">
                                <div class="form-group">
                                  <input id="form_name" name="form_name" class="form-control" type="text" placeholder="your Name" required="">
                                </div>
                              </div>
                              <div class="col-sm-6">
                                <div class="form-group">
                                  <input id="form_email" name="form_email" class="form-control required" type="email" placeholder="your Email">
                                </div>
                              </div>
                            </div>                
                            <div class="row">
                              <div class="col-sm-6">
                                <div class="form-group">
                                  <input id="form_phone" name="form_phone" class="form-control" type="text" placeholder="your Phone">
                                </div>
                              </div>
                              <div class="col-sm-6">
                                <div class="form-group">
                                  <select name="form_service" class="form-control">
                                    <option>Select Your Services</option>
                                    <option>Office Cleaning</option>
                                    <option>Room Cleaning</option>
                                    <option>Glass Cleaning</option>
                                    <option>Hotel Cleaning</option>
                                  </select>
                                </div>
                              </div>
                            </div>

                            <div class="form-group">
                              <input name="form_botcheck" class="form-control" type="hidden" value="">
                              <button type="submit" class="btn theme-btn cs-my-btn" data-loading-text="Please wait...">Register</button>
                            </div>
                        </form>
                    </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Main Header / Style Three-->
    <header class="main-header header-style-three style-2">
      <!--Header-Lower-->
      <div class="header-lower">
          <div class="container">
              <div class="nav-outer clearfix">
                  <!--Logo-->
                  <div class="logo">
                      <a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-1.html"><img class="img-responsive" src="img/logo.png" alt=""></a>
                  </div>

                  <!-- Main Menu -->
                  <nav class="main-menu">
                      <div class="navbar-header">
                          <!-- Toggle Button -->      
                          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          </button>
                      </div>
                      
                      <div class="navbar-collapse collapse clearfix">
                          <ul class="navigation clearfix pull-right">
                              <li class="current dropdown"><a href="index.jsp">Home</a><div class="dropdown-btn"></div></li>
                              <li class="dropdown"><a href="index.jsp">About Us</a><div class="dropdown-btn"></div></li>
                              <li class="dropdown"><a href="#">Register</a>
                                  <ul>
                                      <li><a href="index.jsp#" data-toggle="modal" data-target=".bs-example-modal-md">Login</a></li>
                                      <li><a href="index.jsp#">SignUp</a></li>
                                  </ul>
                              <div class="dropdown-btn"></div></li>
                             <!--  <li class="dropdown">
                              	<a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#" class="btn btn-quate" data-toggle="modal" data-target=".bs-example-modal-md"><i class="flaticon-shovel"></i>Register</a>
                              </li> -->
                          </ul>
                      </div>
                  </nav>
                  <!-- Main Menu End-->
              </div>
          </div>
      </div>
      
      <!--Bounce In Header-->
      <div class="bounce-in-header hidden-xs">
          <div class="container clearfix">
              <!--Logo-->
              <div class="logo pull-left">
                  <a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-1.html" class="img-responsive"><img src="img/logo.png" alt=""></a>
              </div>
              
              <!--Right Col-->
                  <!-- Main Menu -->
                  <nav class="main-menu pull-right">
                      <div class="navbar-header">
                          <!-- Toggle Button -->      
                          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                          </button>
                      </div>
                      
                      <div class="navbar-collapse collapse clearfix">
                          
                          <ul class="navigation clearfix">
                              <li class="current dropdown"><a href="index.jsp">Home</a><div class="dropdown-btn"></div></li>
                              <li class="dropdown"><a href="http://demo.wpthemeshaper.com/eden-garden/about-1.html">About Us</a><div class="dropdown-btn"></div></li>
                              <li class="dropdown"><a href="http://demo.wpthemeshaper.com/eden-garden/service-1.html">Register</a>
                                  <ul>
                                      <li><a href="http://demo.wpthemeshaper.com/eden-garden/service-1.html#" data-toggle="modal" data-target=".bs-example-modal-md">Login</a></li>
                                      <li><a href="http://demo.wpthemeshaper.com/eden-garden/service-details.html">SignUp</a></li>
                                  </ul>
                              <div class="dropdown-btn"></div></li>
                             <!--  <li class="dropdown">
                              	<a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#" class="btn btn-quate" data-toggle="modal" data-target=".bs-example-modal-md"><i class="flaticon-shovel"></i>Register</a>
                              </li> -->
                          </ul>
                      </div>
                  </nav>
                  <!-- Main Menu End-->
          </div>
      </div>
    </header>
        
    <!--Main Slider-->
    <section class="main-slider">
        <div id="slider" class="flexslider">
            <ul class="slides">
                <li style="width: 100%; float: left; margin-right: -100%; position: relative; opacity: 0; display: block; z-index: 1;" class="">
                    <div class="slide-overlay-1">
                        <img class="img-responsive" src="img/1.jpg" alt="" draggable="false">
                    </div>
                    <div class="flex-caption">
                       <h2>Extend Your Home<br> With a Beautiful Garden</h2>
                       <p>culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit  eaque<br> ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta</p> 
                    </div>
                </li>
                <li style="width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; display: block; z-index: 2;" class="flex-active-slide">
                    <div class="slide-overlay-1">
                        <img class="img-responsive" src="img/2.jpg" alt="" draggable="false">
                    </div>
                    <div class="flex-caption">
                        <h2>Extend Your Home<br> With a Beautiful Garden</h2>
                        <p>culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit  eaque<br> ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta</p> 
                    </div>
                </li>
                
            </ul>
            <ul class="flex-direction-nav"><li class="flex-nav-prev"><a class="flex-prev" href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#">Previous</a></li><li class="flex-nav-next"><a class="flex-next" href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#">Next</a></li></ul>
     <ol class="flex-control-nav flex-control-paging"><li><a class="">1</a></li><li><a class="flex-active">2</a></li></ol><ul class="flex-direction-nav"><li class="flex-nav-prev"><a class="flex-prev" href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#">Previous</a></li><li class="flex-nav-next"><a class="flex-next" href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#">Next</a></li></ul></div>
    </section>
    
    <section class="black-overlay-two app-request" style="background-image: url(images/bg/5.jpg);">
        <div class="container">
            <div class="section-wrap">
                <div class="row">
                    <div class="col-md-4">
                        <div class="request">
                            <div class="content">
                                <h2>Request an estimate</h2>
                                <p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="row">
                          <div class="col-sm-4">
                            <div class="form-group">
                              <input name="name" class="form-control" type="text" required="" placeholder="Name" aria-required="true">
                            </div>
                          </div>
                          <div class="col-sm-4">
                            <div class="form-group">
                              <input name="email" class="form-control required email" type="email" placeholder="Email" aria-required="true">
                            </div>
                          </div>
                          <div class="col-sm-4">
                            <div class="form-group">
                              <input name="phone" class="form-control required" type="tel" placeholder="Phone Number" aria-required="true">
                            </div>
                          </div>
                          <div class="col-sm-4">
                            <div class="form-group">
                                <select id="form_service" name="form_service" class="form-control">
                                    <option>Select Your Services</option>
                                    <option>Tree Surgery</option>
                                    <option>Lawn Mowing</option>
                                    <option>Garden design</option>
                                    <option>Hedge triming</option>
                                </select>
                            </div>
                          </div>
                          <div class="col-sm-5">
                            <div class="form-group">
                              <input name="form_appontment_date" class="form-control required" type="text" placeholder="Choose A Date" aria-required="true">
                            </div>
                          </div>
                          <div class="col-sm-3">
                              <a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#" class="btn btn-app btn-block">Get a Quate</a>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- start-work -->
    
    <!-- end-work -->

    <!--Section : About And Add -->
    

    <section class="client-say" style="background-image: url(images/bg/bg2.jpg);"> 
      <div class="container">
        <div class="row">
          <div class="col-md-12">
		  	  	 
		            <div class="client-info">
		              <h2>Find My Spot</h2>
		              <h6>totam rem aperiam </h6>
		            </div>
		         
		            <div class="client-info">
		              <div id = "sample" style = "width:100%; height:580px;"></div>
		            </div>
          </div>
        </div>
      </div>
    </section>

   
    <!-- team start-->
    <section class="team-two">
        <div class="container">
            <div class="section-title">
              <div class="row">
                <div class="col-md-offset-3 col-md-6 text-center"> 
                    <h2>Experienced <span>team</span></h2>
                    <i class="flaticon-technology"></i>
                    <p>magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia </p>
                </div>
              </div>
            </div>
            <div class="section-wrap">
                <div class="row">
                    <div class="col-md-11 col-md-offset-1">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="team-two-col">
                                    <div class="team-content-box content-box-bg text-center">
                                        <img class="img-responsive" src="img/6(1).jpg" alt="">
                                        <div class="team-content-inside">
                                            <h2>Afrere Nasil</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo </p>
                                            <div class="team-socila">
                                                <a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                                <a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                                <a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                            </div>
                                            <a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#" class="btn btn-default btn-black hvr-bounce-to-right">Read More <i class="fa fa-chevron-circle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="team-two-col">
                                    <img class="img-responsive" src="img/2(3).png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- team end -->

    <!-- Footer -->
    <footer class="black-overlay-two" style="background-image: url(images/bg/footer.jpg);">
        <div class="container">
        <div class="row ">
        <div class="col-sm-6 col-md-3">
          <div class="footer-widget content-center">
            <h4>about us</h4>
            <div class="small-line"></div>
            <p>We will create a unique and visually pleasing logo to reflect your overall brand to be used in all areas of your marketing.</p>
            <img alt="" src="img/footer-logo.png">
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="footer-widget content-center">
            <h4>twitter feed</h4>
            <div class="small-line"></div>
            <div class="twitter-content">
              <i class="fa fa-twitter"></i>
                <p>@envato  Creating a new theme for wordpress section<br><span># 2 hours ago</span></p>
            </div>
            <div class="twitter-content">
                <i class="fa fa-twitter"></i>
                <p>@envato  Creating a new theme for wordpress section<br><span># 2 hours ago</span></p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="footer-widget content-center">
            <h4>flickr gallery</h4>
            <div class="small-line"></div>
            <img alt="" src="img/4.jpg" class="img-responsive">
          </div>
        </div>
        <div class="col-sm-6 col-md-3">
          <div class="footer-widget content-center">
            <h4>get in touch</h4>
            <div class="small-line"></div>
            <div class="contact-content">
                <i class="pe-7s-home"></i>
                <p>Eden Garden Business Agency<br>Highroad 141, LA City<br>Venice Beach 64713
                </p>
            </div>
            <div class="widget-content">
              <p><i class="pe-7s-call"></i> +49 123475914</p>
              <a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#"><p><i class="pe-7s-mail"></i> yourmail@email.com</p></a>
            </div>
          </div>
        </div>
        </div>
        <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
          <div class="footer-icon">
            <ul class="list-inline">
              <li><a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#"><i class="fa fa-skype"></i></a></li>
              <li><a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#"><i class="fa fa-youtube"></i></a></li>
              <li><a href="http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html#"><i class="fa fa-instagram"></i></a></li>
            </ul>
          </div>
        </div>
        </div>
        <div class="row">
        <div class="col-md-12 text-center copyright-text">
            <p>© Copyright 2017 - <a href="https://themeforest.net/user/cmsoft/portfolio" target="_blank">Cmsoft.</a> by Designer <a href="https://themeforest.net/item/greenlawn-gardening-and-landscaping-psd-template/17451851?s_rank=2" target="_blank">wpthemeshaper.</a></p>
        </div>
        </div>
        </div>
    </footer>


    <!-- scroll-to-top start -->
    <div class="scroll-to-top scroll-to-target" data-target=".header-top" style="display: none;"><i class="fa fa-angle-double-up" aria-hidden="true"></i></div>
    <!-- scroll-to-top end -->


    
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js.download"></script> 
<script src="js/bootstrap.min.js.download"></script> 
<script src="js/all-js-plugin.js.download"></script> 
<script src="js/custom.js.download"></script> 



</body></html>