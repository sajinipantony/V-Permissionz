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
<title>V-Permissionz..</title>
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
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Prata" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400i,700,700i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  width:300px;
}

tr:nth-child(even) {
  background-color: #f6ecf0;
  height:70px;
}
</style>
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
								<li class="active"><a href="admin_homepg.jsp">Home</a></li>
													
								
								<li><a href="adminprincipalapptview.jsp" class="active"> VIEW PRINCIPAL APPOINTMENT</a></li>
								<li><a href="adminviewevents.jsp" class="active"> VIEW EVENTS</a></li>
								<li><a href="admin_verifyevent.jsp" class="active">VERIFY EVENTS</a></li>
								<li><a href="adminsearch.jsp" class="active">SEARCH STUDENT</a></li>							
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
															
														</div>
													</div>
													<!-- //Modal1 -->	
													<!-- Modal2 -->
													<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
														<div class="modal-dialog">
														<!-- Modal content-->
															
														</div>
													</div>
													<!-- //Modal2 -->	
													<!-- Modal4 -->
													<div class="modal fade" id="myModal4" tabindex="-1" role="dialog">
														<div class="modal-dialog">
														<!-- Modal content-->
																					</div>
													</div>
													<!-- //Modal4 -->	


<!-- banner -->	
	<form action ="adminprincipalappt" method="post">
	<table>
<tr>
<td>
<label>First Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>

<td>
<input type="text" name="firstname"><br><br></td></tr>

<tr><td>
<label>Last Name: </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><input type="text" name="lastname"><br><br></td></tr>
<tr><td>
<label for="dep">Department/Club:</label>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><select id="dep" name="dep"><br><br>
<option value="English">ENGLISH</option>
<option value="MALAYALAM">MALAYALAM</option>
<option value="HINDI">HINDI</option>
<option value="SANSKRIT">SANSKRIT</option>
<option value="MATHEMATICS">MATHEMATICS</option>
<option value="STATISTICS">STATISTICS</option>
<option value="COMPUTER SCIENCE">COMPUTER SCIENCE</option>
<option value="PHYSICS">PHYSICS</option>
<option value="CHEMISTRY">CHEMISTRY</option>
<option value="BOTANY">BOTANY</option>
<option value="ZOOLOGY">ZOOLOGY</option>
<option value="HOMESCIENCE">HOMESCIENCE</option>
<option value="ECONOMICS">ECONOMICS</option>
<option value="PSYCHOLOGY">PHYSICS</option>
<option value="PHYSICS">PHYSICS</option>
<option value="HISTORY">HISTORY</option>
<option value="POLITICALSCIENCE">POLITICAL SCIENCE</option>
<option value="SOCIOLOGY">SOCIOLOGY</option>
<option value="COMMERCE">COMMERCE</option>
<option value="PHYSICALEDUCATION">PHYSICAL EDUCTION</option>
<option value="SOCIALWORK">SOCIAL WORK</option>
<option value="NATURECLUB">NATURE CLUB</option>
<option value="NCC">NCC</option>
<option value="NSS">NSS</option>
<option value="UBC">UBC</option>
<option value="COLLEGEUNION">COLLEGE UNION</option>
</select><br><br></td></tr>

<tr><td>
<label>Time :  </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><input type="text" name="time"><br><br></td></tr>
<tr><td>
<label>Date : </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><input type="date" name="date" ><br><br></td></tr>
<tr><td>
<label>Enter the Purpose:</label>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><textarea rows="4" cols="50" name="purpose" id="purpose"></textarea><br><br></td></tr>
<tr><td><input type="submit" value="submit"></td></tr>
</table>
</form>


					
					
					
					
					<div class="clearfix"> </div>
					
					
					
					
				</div>
			</div>
		</div>
	</div>



<!-- Footer -->
<div class="footer w3ls">
	<div class="container">
	
		<div class="footer-main">
			<div class="footer-top">
				<div class="col-md-4 ftr-grid fg2">
					
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
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>