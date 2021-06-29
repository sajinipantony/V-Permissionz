
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
					<h1><a href="teacher_homepg.jsp"><span>V</span>Permissionz... <i class="fa fa-graduation-cap" aria-hidden="true"></i></a></h1>
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
							<ul class="nav navbar-nav">							
						<li class="active" ><a href="studenthomepage.jsp">Home</a></li>								
								<li ><a href="studentviewoutpass.jsp" class="active">View Out Pass</a></li>
								<li><a href="studentleaveformview.jsp" class="active">View Leave Form</a></li>
								
								<li><a href="studentviewappt.jsp" class="active">View Appointment</a></li>
								
								<li><a href="student_change_pwd.jsp" class="active">Update  Password</a></li>
							
								
								
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
				<h3><font color="red"> View Approved Leave</font></h3>
				
			</div>
			<div class="w3layouts-grids">
				
				<div class="col-md-8 contact-form">
					<form action="teacher_add_student" method="post">
						
				<table width=1200px style="margin-left: 10px">
				
				
<tr height="70px">

<td width="200px" ><center><font color="red"> FIRST NAME</font></center></td>

<td width="300px"><center><font color="red">LAST NAME</font></center></td>
<td width="300px"><center><font color="red">DATE</font></center></td>

<td width="300px"><center><font color="red">PURPOSE</font></center></td>

<td width="300px"><center><font color="red">DEPARTMENT</font></center></td>

<td width="300px"><center><font color="red">STATUS</font></center></td>

</tr>		
	
	
	
	
	<%
	try{
		
		HttpSession session1=request.getSession();
		String fname=	(String) session.getAttribute("uname");
		String email= (String) session.getAttribute("email");
		String id=null;
		
		String lname=null;
		String date=null;
		String purpose=null;
		String dept=(String) session.getAttribute("dept");
		String status="approved";
		//double price=0;

//System.out.println("dept   : "+dept);
	ResultSet rs=null;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","");
		Statement st=con.createStatement();
		rs=st.executeQuery("select * from leaveform where fname='"+ fname+"' and status='"+status+"' ");
		while(rs.next())
		{
			id=rs.getString(1);
			fname=rs.getString(2);
			lname=rs.getString(3);
			dept=rs.getString(4);
			date=rs.getString(6);
	          purpose=rs.getString(5);
	          
	
			
			%>
			 <tr style="color: black;" align="center" >

	<td width="300px"><%=fname %></td>
	<td width="300px"><%=lname%></td>
	<td width="300px"><%=date %></td>
	<td width="300px"><%=purpose %></td>
	
	
	<td width="300px"><%=dept %></td>
	<td width="300px"><%=status %></td>
	
	</tr>
			
			<%
		
		}
		
		%>
		
		
		</table>
		<%
	st.close();
	con.close();

	}
	catch(Exception e){
		System.out.println("exceptn occure"+e);
	}

	 %>
		
		
		
		
		
							
							
			</table>				
							
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
				<p>&copy; 2017 V-permissionz. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
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
				</div>
			</div>
		</div>
		
	</div>
	 

	<!-- Footer -->	
		
		
		
		


		
	</body>
	</html>