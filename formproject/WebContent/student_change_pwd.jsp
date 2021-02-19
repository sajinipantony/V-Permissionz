<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>ANNS An Education Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="ANNS Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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
<link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" rel="stylesheet" type="text/css">

<!-- //pop-up-box -->
<!-- font-awesome icons -->
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
					<h1><a href="admin_homepg.jsp"><span>V</span>Permissionz <i class="fa fa-graduation-cap" aria-hidden="true"></i></a></h1>
				</div>
				<div class="agileits_w3layouts_sign_in">
					<ul>
								<li><a href="index.jsp"  >Sign Out</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="container">
			<div class="w3layouts_agileits_nav_section">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">
					<!-- 	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button> -->
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="w3ls__agileinfo_search">
								
							</div>
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					
						<nav>
							<ul class="nav navbar-nav">
								<li class="active"><a href="studenthomepage.jsp">Home</a></li>
													
								<li><a href="studentviewappt.jsp" class="active">View Principal Appointment</a></li>
								<li><a href="studentleaveformview.jsp" class="active">View Leave Form</a></li>
								<li><a href="studentviewoutpass.jsp" class="active">View Student Outpass</a></li>
															
							</ul>
							
							
						</nav>
					</div>
				</nav>	
			</div>
		</div>
	</div>
<!-- //header -->
<div class="contact" id="contact">
		<div class="container">
			<div class="w3ls-heading">
				<h3><font color="red">UPDATE PASSWORD</font></h3>
				
			</div>
			<div class="w3layouts-grids">
				
				<div class="col-md-8 contact-form">
					<form action="student_change_pwd" method="get">
					
					
					
				
		
	<font color="red">	Current Password: </font>
		<br>
		<input type="password" class="phone" name="cur_pwd"  required="" style="height: 40px">
		<br><br>
				<font color="red">New Password	: </font>
		<br>
		
					<input type="password" class="phone" name="new_pwd"  required="" style="height: 40px">
				<br><br>
					<font color="red">	Confirm Password : </font>
		<br>
			
					<input type="password" class="phone" name="con_pwd"  required="" style="height: 40px">
					
				<br><br>
		
						<input type="submit" value="Change Password" >
						
						</form>
						
						
						
					
					
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //contact -->



<!-- Footer -->
<div class="footer w3ls">
	<div class="container">
	
		<div class="footer-main">
			<div class="footer-top">
				
				
				
					<div class="right-w3-2">
						
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
			if (window.location.href.indexOf("updated") > -1) {				
				swal({
					  title: "Password Updated!",
					  text: "Password Updated Successfully!!!",
					  type: "success",
					  confirmButtonText: "OK"
					},
					function(isConfirm){
					  if (isConfirm) {
					   // window.location.href = "http://localhost:8081/hypermarketmanagementsystem/adm_login.jsp";
					  }
					});
			}
			if (window.location.href.indexOf("mismatch") > -1) {				
				swal({
					  title: "Password can't update!",
					  text: "Mismatch Password.please try again.",
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