<%@page import="java.io.File"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0064)http://demo.wpthemeshaper.com/eden-garden/index-mp-layout-2.html -->
<html lang="en" class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Find My Spot</title>
    <link rel="shortcut icon" type="image/png" href="img/favicon1.png">

    <!-- Animation -->
    <link rel="stylesheet" type="text/css" href="css/animations.css">
	<link rel="stylesheet" type="text/css" href="css/svg.css">

    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<script src = "https://maps.googleapis.com/maps/api/js"></script>
      
      <script>
      	var x = document.getElementById("demo");

	      function getLocation() {
	          if (navigator.geolocation) {
	              navigator.geolocation.getCurrentPosition(showPosition);
	          } else { 
	              x.innerHTML = "Geolocation is not supported by this browser.";
	          }
	      }
	
	      function showPosition(position) {
	          x.innerHTML = "Latitude: " + position.coords.latitude + 
	          "<br>Longitude: " + position.coords.longitude;
	      }
      </script>
      
      <script>

		function loadParking() {

			var Entrance = document.getElementById("Entrance");
			var x = document.getElementById("loc");

		      function getLocation() {
		          if (navigator.geolocation) {
		              navigator.geolocation.getCurrentPosition(showPosition);
		          } else { 
		              x.innerHTML = "Geolocation is not supported by this browser.";
		          }
		      }
		
		      function showPosition(position) {
		          x.innerHTML = "Latitude: " + position.coords.latitude + 
		          "<br>Longitude: " + position.coords.longitude;
		      }
		     
			var xmlhttp;

			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject(
						"Microsoft.XMLHTTP");
			}

			removeAllState();

			xmlhttp.onreadystatechange = function() 
			{
				if (xmlhttp.readyState == 4) 
				{
					var jsonObj = JSON.parse(xmlhttp.responseText);
					 var trHTML = '';
				        
					for (i = 0; i < jsonObj.length; i++) 
					{
						var createOption = document.createElement("option");

						var value = jsonObj[i].parkingName;
						var text = jsonObj[i].EmptySpot;
						var random = Math.floor(Math.random() * (jsonObj.length-i) * 5) + 1 ;
						var min=3* (Math.floor(Math.random() * (i))+1);
						    
						trHTML = trHTML + '<tr><td>' + value + '</td><td>' + random + '</td><td>' + min + 'min </td></tr>';
						   	   
					}
					 $('#table1').append(trHTML);
					 var f1=document.getElementById("f1");
					 //f1.innerHTML="";
					 var jsp=document.createElement("jsp:include");
					 jsp.setAttribute("page","${sessionScope.usertype}.svg");
					 f1.appendChild(jsp);
				}

			}

			xmlhttp.open("get","${pageContext.request.contextPath}/SearchLocation?flag=search&countryId="+ Entrance.value, true);
			xmlhttp.send();
			/* jQuery(".chosen-select1").chosen({'width':'100%','white-space':'nowrap'}); */
			/* Holds the status of the XMLHttpRequest. Changes from 0 to 4:
				0: request not initialized
				1: server connection established
				2: request received
				3: processing request
				4: request finished and response is ready */
		}

		function removeAllState() {
			var table1 = document.getElementById("table1");
			table1.innerHTML="";
		}
	</script>
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
	<style type="text/css">.fancybox-margin{margin-right:17px;}</style><style type="text/css">.fancybox-margin{margin-right:17px;}</style>
</head>
<body>

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
              <div class="nav-outer clearfix" style="background: none;">
                  <!--Logo-->
                  <div class="logo">
                      <a href="#"><img class="img-responsive" style="width:108px;height:96px;" src="img/logo.png" alt="Find My Spot"></a>
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
                              <li class="current dropdown"><a href="index.jsp">Find My Spot</a><div class="dropdown-btn"></div></li>
                              
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
      <div class="bounce-in-header hidden-xs" style="background: rgba(255,255,255,0.3);border:none;overflow: scroll;">
          <div class="container clearfix" style="background:none">
              <!--Logo-->
              <div class="logo pull-left">
                  <a href="#" class="img-responsive"><img src="img/logo.png" alt="" style="width:90px;height:80px;"></a>
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
                              <li class="current dropdown"><a href="index.jsp">Find My Spot</a><div class="dropdown-btn"></div></li>
                              
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
        <div id="slider" class="flexslider" style="overflow: scroll">
            <ul class="slides">
                <li style="width: 100%; float: left; margin-right: -100%; position: inherit; opacity: 0; display: block; z-index: 1;" class="">
                    <div class="slide-overlay-1">
                        <img class="img-responsive" style="width:100%" src="img/1.jpg" alt="" draggable="false">
                    </div>
					<div class="flex-caption">
					<div style="background-color: rgba(0,62,126,0.3);">
						

						<div class="client-info raw" style="background: none">
							<div style="background-color: rgba(255,255,255,0.3);float: left" id="f1" class="col-md-8">
								<c:choose>
									<c:when test="${sessionScope.usertype eq 'east' }">
										<jsp:include page="east.svg" />
									</c:when>
									<c:when test="${sessionScope.usertype eq 'west' }">
										<jsp:include page="west.svg" />
									</c:when>
									<c:when test="${sessionScope.usertype eq 'north' }">
										<jsp:include page="north.svg" />
									</c:when>
									<c:when test="${sessionScope.usertype eq 'south' }">
										<jsp:include page="south.svg" />
									</c:when>
									<c:otherwise>
										<jsp:include page="SUNY.svg" />
									</c:otherwise>
								</c:choose>
								
							</div>
							<div style="width:2%;float: left">
								-
							</div>
							<div style="background-color: rgba(255,255,255,0.3);;float: left" class="col-md-3">
								<div style="text-align: left;margin: 5px">
								<%-- action="<%=request.getContextPath() %>/SearchLocation" --%>
									<input type="hidden" name="flag" value="search">
										<select id="Entrance"  class="form-control" style="padding: 5px;margin: 10px;width: 95%"> 
											<option value="east">East Entrance</option>
											<option value="west">West Entrance</option>
											<option value="north">North Entrance</option>
											<option value="south" selected>South Entrance</option>
										</select>
									<button class="btn btn-default" onclick="loadParking()" style="padding: 5px;margin: 10px;width: 95%" name="Search Spot">Search Spot</button>
									
									<h5 style="margin: 10px;">Best Route and Parking</h5>
									<table class="table table-bordered" style="padding: 5px;margin: 10px;width: 95%">
										<tr class="tr" style="font-weight: bold;">
											<td class="tr">Parking Name</td>
											<td class="tr">Empty Spot</td>
											<td class="tr">Time</td>
										</tr>
									</table>
									<table id="table1" class="table table-bordered"  style="padding: 5px;margin: 10px;width: 95%">
										
									</table>
								</div>
							</div>
							<div style="clear: both">
							</div>
						</div>
						<div>
							
						</div>
					</div>
					</div>
				</li>
            </ul>
            <div style="height:200px ">
            </div>
       </div>
    </section>
    
   


  

   


    
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js.download"></script> 
<script src="js/bootstrap.min.js.download"></script> 
<script src="js/all-js-plugin.js.download"></script> 
<script src="js/custom.js.download"></script> 



</body></html>