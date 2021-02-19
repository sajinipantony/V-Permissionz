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
					<h1><a href="teacher_homepg.jsp"><span>A</span>NNS COLLEGE OF TECHNICAL ENGINEERING <i class="fa fa-graduation-cap" aria-hidden="true"></i></a></h1>
				</div>
				<div class="agileits_w3layouts_sign_in">
					<ul>
						
						<li><a href="index.jsp" >Sign Out</a></li>
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
					<!-- Collect the nav links, forms, and other content for toggling -->
					
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					
						<nav> 
							<ul>	
								<li class="active" ><a href="clubdepthomepage.jsp">HOME</a></li>								
								<li ><a href="clubdeptaddevent.jsp" class="active">ADD EVENT</a></li>
								<li><a href="clubdeptviewevent.jsp" class="active">VIEW EVENT</a></li>
							<li><a href="clubdeptviewleaveform.jsp" class="active">VIEW LEAVE APPLICATION</a></li>
							<li><a href="clubdeptviewoutpass.jsp" class="active">VIEW OUT PASS</a></li>
							<li><a href="clubupdate.jsp" class="active">UPDATE PROFILE</a></li>
						<li><a href="clubchngpassword.jsp" class="active">CHANGE PASSWORD</a></li>
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
				<h3><font color="red">VIEW & UPDATE PROFILE</font></h3>
				
			</div>
			<div class="w3layouts-grids">
				
				<div class="col-md-8 contact-form">
					<form action="clubupdate" method="get">
					
					
					
					<%
try{
	

	
		HttpSession ses=request.getSession();
			String dept=(String) ses.getAttribute("deptname");
			String username= (String) ses.getAttribute("email");	
			String email = (String) ses.getAttribute("username");
			String id = (String) ses.getAttribute("id");
			String id1=null;
	String name=null;
	
System.out.println("id="+id);

ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","");
	Statement st=con.createStatement();
	rs=st.executeQuery("select * from login where id='"+id+"'");
	while(rs.next())
	{
		id1=rs.getString(1);
		name=rs.getString(2);
		dept=rs.getString(6);
	//	price=rs.getDouble(7);
		
		%>
		<font color="red">	NAME: </font>
		<input type="hidden" class="phone" name="id1" placeholder="First Name" required="" value="<%=id %>">
		
	<font color="red">	EMAIL: </font>
		<br>
		<input type="text"  class="phone" name="email" placeholder="	Name" required="" value="<%=name %>">
				<font color="red">	DEPARTMENT : </font>
		<br>
	
							
		<br><input type="text" class="phone" name="dept" placeholder="Department" required="" value="<%=dept %>" readonly="readonly">
						<br>
						
		
						<input type="submit" value="UPDATE">
						
						</form>
						
						
						
						<%
		
	}
	
	%>
	
	
	
	<%
st.close();
con.close();

}
catch(Exception e){
	System.out.println("exceptn occure"+e);
}

 %>
					
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