<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>V-Permissionz</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Brilliance Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- pop-up-box -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up-box -->
<!-- font-awesome icons -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Prata" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400i,700,700i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
</head>
	
<body>
<!-- header -->
	<div class="header-w3ls-agileinfo">
		
			<div class="wthree_agile_top_header">
				<div class="logo-agileits">
					<h1><a href="contact.jsp"><span>V</span>Permissionz <i class="fa fa-graduation-cap" aria-hidden="true"></i></a></h1>
				</div>
				<div class="agileits_w3layouts_sign_in">
					<ul>
						<li><a class="active" href="index.jsp" data-toggle="modal" data-target="#myModal2" >Sign In</a></li>
						<li><a href="contact.jsp" data-toggle="modal" data-target="#myModal3" >Contact</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="container">
			<div class="w3layouts_agileits_nav_section">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					
						<nav>
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.jsp">Home</a></li>
								
								<li><a href="about.jsp " class="active">About</a></li>
								<li><a href="objectives.jsp" class="active">Objectives</a></li>
								<li><a href="facilities.jsp" class="active">Facilities</a></li>
								<li><a href="contact.jsp" class="active">Contact</a></li>
							</ul>
							
						</nav>
					</div>
				</nav>	
			</div>
		</div>
	</div>
<!-- //header -->

													<!-- Modal1 -->
													<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
														<div class="modal-dialog">
														<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																	
																	<div class="signin-form profile">
																	<h3 class="agileinfo_sign">Sign In</h3>	
																	<form action="login" method="post">
																				<select style="width: 535px;height: 45px" name="role">
																				<option >Select Category</option>
																				<OPTION>ADMIN</option>
																				<option>CLUBS AND DEPARTMENTS</option>
																				<option >STUDENT</option>
																				<option >WATCHMAN</option>      </select>
																					<input type="text" name="username" placeholder="Username" required="" >
																					<input type="password" name="password" placeholder="Password" required="" >
																					<div class="tp">
																						<input type="submit" value="Sign In">
																					</div>
																				</form>
																					</div>
																				
																			</div>
																			<!-- <div class="login-social-grids">
																				<ul>
																					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
																					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
																					<li><a href="#"><i class="fa fa-rss"></i></a></li>
																				</ul>
																			</div> -->
																		</div>
																</div>
															</div>
														</div>
													</div>
													<!-- //Modal1 -->	
													<!-- Modal2 -->
													<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
														<div class="modal-dialog">
														<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																	
																	<div class="signin-form profile">
																	<h3 class="agileinfo_sign">Sign Up</h3>	
																			<div class="login-form">
																				<form action="#" method="post">
																				<input type="text" name="name" placeholder="Name" required="">
																				<select style="width: 535px;height: 45px;" required="required">
																				  <option >Gender</option>
																				  <option >FEMALE</option>
																				  <option >MALE </option>  
																				  </select>
																				 
																				   
																				  
															
																				   <input type="text" name="address" placeholder="Address" required="">
																				   <input type="text" name="mobile number" placeholder="Mobile Number" required="">
																				   <input type="email" name="email" placeholder="Email" required="">
																				   <select style="width: 535px;height: 45px"><option >Select_Category </option>
								
								<option >TEACHERS</option>
								<option >PARENTS</option>        
								<option > STUDENTS </option>       </select>
				
																				   <input type="text" name="username" placeholder="Username" required="">
																					
																					<input type="password" name="password" placeholder="Password" required="">
																					
																					
								
									
															
																					<input type="submit" value="Sign Up">
																				</form>
																			</div>
																			<p><a href="#"> By clicking register, I agree to your terms</a></p>
																		</div>
																</div>
															</div>
														</div>
													</div>
													<!-- //Modal2 -->	
													


<!-- banner -->	
	<div class="w3ls_banner_section">
		<div class="container">
			<h2>Education Needs Complete <span>Solution</span></h2>
			<!--  <p> for Admission Coming soon</p>-->
			
			 <div class="wthree-counter-agile">
			   <!--timer-->
					<section class="examples">
							<div class="simply-countdown-losange" id="simply-countdown-losange"></div>
							<div class="clearfix"></div>
						</section>

				<!--//timer-->

			 </div>
			
			<div class="agileits_more">
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal4" class="w3ls_banner_more hvr-icon-hang scroll ">Admission</a></li>
					<!--  <li><a href="#" class="hvr-icon-hang" data-toggle="modal" data-target="#myModal">Read More</a></li>-->
				</ul>
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
					       <h3 class="agileinfo_sign">Vimala COLLEGE</h3>	
						<img src="images/ab.jpg" alt=" " class="img-responsive" />
						<p>Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit .</i></p>
					</div>
				</section>
			</div>
		</div>
	</div>
<!-- //bootstrap-pop-up -->
											

			<div>
			<br>
									<marquee direction="right" scrollamount="5" >
								
			<div style="width:1000px">
            <img alt="" src="images/vimala1.jpg" height="150px" >
			<img alt="" src="images/vimala2.jpg" height="150px" >
			<img alt="" src="images/g5.jpg" height="150px" >
            
			</div>
			
			
	
			</marquee>
			
			<br><br>
			<div class="clearfix"></div>
			</div></div>
			</div>
			
<!-- //banner-down-->
<!-- banner-bottom -->
	<div class="banner-bottom-agileits" id="about">
			
			<div class="col-md-5 w3l_banner_bottom_right">
			
				<img src="" alt="" width="1500" height="250">
				
		         <img src="images/bg5511.jpg" alt="" width="1180" height="500" style="margin-left: 100px">
		
			</div>
			<div class="">
				<h3></h3>
				

					<span>  
						</span></p>
			</div>
			<div class="clearfix"></div>
	</div>
	
	
	
		
			<div>
			<br>
			
			
			<marquee direction="left"scrollamount="25">
			<img alt="" src="images/vimala1.jpg" height="150px" >
			<img alt="" src="images/vimala2.jpg" height="150px" >
			<img alt="" src="images/g5.jpg" height="150px" >
			<div class="col-md-6 col-sm-6 wow fadeInRight animated animated animated" style="visibility: visible; animation-name: fadeInRight;">
<h3>Locate Us</h3>
 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3922.3329491396303!2d76.22466451479885!3d10.553097492473304!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba7ef1d21ab52ed%3A0x740c75580f212fa6!2sVimala+College!5e0!3m2!1sen!2sin!4v1504244557707" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen=""></iframe>

</div>
			<div class="col-md-5 w3l_banner_bottom_right">
				
				<img src="images/vimala1.jpg" alt="" width="1350" height="250">
				<br>
		         <img src="images/vimala2.jpg" alt="" width="1350" height="250">
		
			</div>
			
		</div>
	</div>
<!-- //banner-bottom -->
	<!-- services -->
	
	<!-- //services -->
<!-- team -->
	
<!-- //team -->
<!-- news -->

<!-- //news -->
<!-- gallery -->
	
	<!-- //gallery --> 
<!-- contact -->
	<div class="contact" id="contact">
		<div class="container">
			
			
		</div>
	</div>
	<!-- //contact -->


<!-- Footer -->
<div class="footer w3ls">
	<div class="container">
	
		<div class="footer-main">
			<div class="footer-top">
				<div class="col-md-4 ftr-grid fg2">
					<h3>our address</h3>
					<div class="right-w3l">
						<ul class="top-links">
						
						</ul>
					</div>
					<div class="right-w3-2">
						<ul class="text-w3">
							<li><a href="">Vimala College</a></li>
							<li><a href="">Ramavarmapuram</a></li>
							<li><a href="">Thrissur</a></li>
							<li><a href="">Kerala,India</a></li>
							
						</ul>
					</div>
				</div>
				<div class="col-md-4 ftr-grid fg2 mid-gd">
					<h3>&nbsp&nbsp&nbsp contact us</h3>
					<div class="ftr-address">
					
						<div class="clearfix"> </div>
					</div>
					<div class="ftr-address">
						<div class="ftr-text">
							<p>&nbsp&nbsp&nbsp +0487 2333088</p>
						</div>
						<div class="ftr-text">
							<p>&nbsp&nbsp&nbsp +0487 2333088</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					
				</div>
				<div class="col-md-4 ftr-grid fg2">
					<h3>&nbsp&nbsp&nbsp Mail Us</h3>
					<div class="right-w3l">
						
					</div>
					<div class="right-w3-2">
						<ul class="text-w3">
							
							<li><a href="">&nbsp&nbsp&nbsp info@vimala.in.edu</a></li>
							<li><a href="">&nbsp&nbsp&nbsp contactus@vimala.in</a></li>
							<li><a href=""></a></li>
						</ul>
					</div>
				</div>
			   <div class="clearfix"> </div>
			</div>
			<div class="copyrights">
				<p>&copy; 2017 ANNS. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
			</div>
		</div>
	</div>
	
</div>
 
	

<!-- Footer -->	

	<!-- start-smoth-scrolling -->
	
<!-- js -->
		<!--//pop-up-box -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

<!--pop-up-box -->
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<script>
					$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
					});

					});
					</script>
<!-- //pop-up-box -->

<!-- //js -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->

			<script src="js/jzBox.js"></script>

			<!-- Countdown-Timer-JavaScript -->
			<script src="js/simplyCountdown.js"></script>
			<script>
				var d = new Date(new Date().getTime() + 948 * 120 * 120 * 2000);

				// default example
				simplyCountdown('.simply-countdown-one', {
					year: d.getFullYear(),
					month: d.getMonth() + 1,
					day: d.getDate()
				});

				// inline example
				simplyCountdown('.simply-countdown-inline', {
					year: d.getFullYear(),
					month: d.getMonth() + 1,
					day: d.getDate(),
					inline: true
				});

				//jQuery example
				$('#simply-countdown-losange').simplyCountdown({
					year: d.getFullYear(),
					month: d.getMonth() + 1,
					day: d.getDate(),
					enableUtc: false
				});
			</script>
		<!-- //Countdown-Timer-JavaScript -->

<!-- smooth scrolling -->


	<script type="text/javascript">
			if (window.location.href.indexOf("fail") > -1) {				
				swal({
					  title: "Login Failed!",
					  text: "Mismatch in Username & Password!!!",
					  type: "error",
					  confirmButtonText: "OK"
					},
					function(isConfirm){
					  if (isConfirm) {
					   // window.location.href = "http://localhost:8081/hypermarketmanagementsystem/adm_login.jsp";
					  }
					});
			}
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/
		$().UItoTop({ easingType: 'easeOutQuart' });
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>