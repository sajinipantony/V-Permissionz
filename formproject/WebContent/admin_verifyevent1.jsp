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
<title>V - Permissions</title>
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
													
						<li><a href="adminprincipalapptview.jsp" class="active"> VIEW APPOINTMENT</a></li>
								<li><a href="adminviewevents.jsp" class="active"> VIEW EVENTS</a></li>
								<li><a href="admin_verifyevent.jsp" class="active">VERIFY EVENTS</a></li>
								<li><a href="adminsearch.jsp" class="active">SEARCH STUDENT</a></li>	
								<li><a href="serachtime.jsp" class="active">UPDATE  TIMESHEET</a></li>						
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
				<h3><font color="red">UPDATE EVENTS DETAILS</font></h3>
				<p class="sub"></p>
			</div>
			<div class="w3layouts-grids">
				<div class="col-md-8 contact-form">
				<table>
					<form action="adminupdateevent" method="get"  >
					
			<%
try{
	

	
	String eventname=null;
	String hallname=null;
	String dept=null;
	String incharge=null;
	String date=null;
	String id=request.getParameter("id");
	
	String status=null;
	
	
	//double price=0;


ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","");
	Statement st=con.createStatement();
	rs=st.executeQuery("select * from event where id='"+id+"'");
	while(rs.next())
	{
		
		eventname=rs.getString(2);
		hallname=rs.getString(3);
		dept=rs.getString(4);
		incharge=rs.getString(5);
		date=rs.getString(6);
		id=rs.getString(1);
		status=rs.getString(7);
		
		
		
		
	
		
         
	//	price=rs.getDouble(7);
		
		%>		
					
					
					
						
						<div class="clearfix"> </div>	
						
							<td><input type="hidden" class="phone" name="id1" placeholder="Event id" required="" value="<%=id %>">
						<tr><td>
						<font color="gray">Event Name  </font> <br><br></td>	
					<td>	<input type="text" class="phone" name="eventname" placeholder="Event Name" required="" value="<%=eventname %>">
						</td></tr>
						<tr><td><font color="gray">Hall Name  </font> <br><br></td>
						<td><input type="text" class="phone" name="hallname" placeholder="Hall Name" required="" value="<%=hallname %>">
						<br><br></td></tr>
						<tr><td><font color="gray">Department Name  </font><br><br> </td>
					<td><input  type="text" class="phone" name="deptname" placeholder="Department Name" required="" value="<%=dept %>">
						<br><br></td></tr>
						<tr><td><font color="gray">Department In-Charge </font> <br><br></td>
						<td><input type="text" class="phone" name="incharge" placeholder="In charge" required="" value="<%=incharge %>"></td></tr>
						<br><br>
				<tr><td><font color="gray">Date  </font> <br><br></td>
						<td><input type="date"    name="date"  value="<%=date %>"></td></tr>
				<br><br><br><br>
				<tr><td>
				<font color="gray">Status  </font> <br><br></td>
					<td>	<input type="text"    name="status"  value="<%=status %>"></td></tr>
				<br><br>
				<tr><td>
				<input type="submit" value="Update Event">		</td>
				</form> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
					
				<form action="admindeleteevent" method="get"  >
				<input type="hidden" class="phone" name="id" placeholder="Event Name" required="" value="<%=id %>">
							
				<td><input type="submit" value="Delete Event">	</td>
			</tr>
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
						
				</form>
				</table>
				
				
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