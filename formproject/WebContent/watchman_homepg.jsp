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
<%@ page import="javax.servlet.http.HttpSession" %>
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
<title>Brillance  An Education Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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

<link href="para_css/para.css"  type="text/css" media="all" />
</head>
	
<body>
<!-- header -->
<div class="header-w3ls-agileinfo">
		
			<div class="wthree_agile_top_header">
				<div class="logo-agileits">
					<h1><a href="parent_homepg.jsp"><span>A</span>NNS COLLEGE OF TECHNICAL ENGINEERING <i class="fa fa-graduation-cap" aria-hidden="true"></i></a></h1>
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
								<li class="active" ><a href="watchman_homepg.jsp">HOME</a></li>
								
								<li><a href="watchmanviewoutpass.jsp" class="active"> VIEW OUTPASS</a></li>
								<li><a href="watchmanviewleaveform.jsp" class="active"> VIEW LEAVEFORM</a></li>					
								
								<li><a href="Watchmanupdatepassword.jsp" class="active"> UPDATE PASSWORD</a></li>
						
						
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
	<div class="services" id="services">
		<div class="container">
		<div class="w3ls-heading">
				
			</div>
			<div class="w3layouts-grids">
			
				<div class="services-right-grids">
					<div class="col-sm-12 services-right-grid">
				<h1><font color="white"> You have 
				<img alt="" src="pics/3.gif" height="200px">Notification 
				</font></h1>	
				<br>	
							
					<marquee bgcolor="">
				
			<%
try{
	

	String id=null;
	String note=null;
	String date=null;
	String dept=null;
	String name=null;
	HttpSession session1=request.getSession();
	String dept1=	(String) session.getAttribute("dept");


ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root","root");
	Statement st=con.createStatement();
	rs=st.executeQuery("select * from tbl_note where dept='"+dept1+"' or dept='All' ");
	while(rs.next())
	{
		id=rs.getString(1);
		note=rs.getString(2);
		date=rs.getString(3);
		dept=rs.getString(5);
		name=rs.getString(4);
         
	//	price=rs.getDouble(7);
		
		%>
		
		
		<img alt="" src="pics/4.gif" height="80px">
	    <font color="red" size="4">	<%=note %></font>
	  <font color="white" size="4">	From 
	  <img alt="" src="pics/5.png" height="30px">::  </font>
      <font color="white" size="4">	<%=name %>	</font>
     <%--  <font color="white" size="4">		Announced On : </font> 
      <font color="red" size="4"><%=date %>	</font> --%>
			
		
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
			</marquee>		
					<div class="col-sm-4 services-right-grid">
						
						
						
						
							<p></p>
						</div>
					</div>
					
					<div class="clearfix"> </div>
					
					
					
					
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	<div class="w3layouts-grids" style="background-color: #E8E1E1">
			
				<div class="services-right-grids" >
					<div class="col-sm-12 services-right-grid">
				<h1>  
			
				<br>
				<font color="red">EVENTS Waiting For You
				</font></h1>	
				<br>	
							
					<marquee  direction="right" >
				<table>
				<tr>
				
			<%
try{
	

	String id=null;
	String event=null;
	String place=null;
	String des=null;
	String date=null;
	HttpSession session1=request.getSession();
	String dept1=	(String) session.getAttribute("dept");


ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root","root");
	Statement st=con.createStatement();
	rs=st.executeQuery("select * from tbl_event  ");
	while(rs.next())
	{
		id=rs.getString(1);
		event=rs.getString(2);
		place=rs.getString(3);
		des=rs.getString(4);
		date=rs.getString(5);
		
		
         
	//	price=rs.getDouble(7);
		
		%>
		
		<td style="width: 300px;height: 150px">
		<div  >
		<font color="#E23F3F" size="3">	<%=date %></font>
		
		<div style="width: 80px;height: 40px" >
		<font color="green" size="5" >
		<a href="student_view_event.jsp?id=<%=id %>">
			<%=event %>
			</a></font>
		</div>
		
		<div style="width: 80px;height: 40px" >
	<font color="#F31886" size="3">	Place : <%=place %>	</font>
		</div>
		
	<font color="#97406B" size="4"><a href="student_view_event.jsp?id=<%=id %>"><u> More Info</u> </a> 	</font>
	
		
		</div>
		</td>
	
		
		
		 <td>
	<a href="student_view_event.jsp?id=<%=id %>">		<img alt="" src="admin_view_allevents?id=<%=id %>" width="150px" height="150px"> 
	
	</a>	</td>
		
		 
		 
		  
	   
	 
      
    
     <%--  <font color="white" size="4">		Announced On : </font> 
      <font color="red" size="4"><%=date %>	</font> --%>
			
		
			
	<%
		
	}
	
	%>
	</tr>
	</table>
	<%
st.close();
con.close();

}
catch(Exception e){
	System.out.println("exceptn occure"+e);
}

 %>	
	
	
	
			</marquee>		
					<div class="col-sm-4 services-right-grid">
						
						
						
						
							<p></p>
						</div>
					</div>
					
					<div class="clearfix"> </div>
					
					
					
					
				</div>
			</div>
			
			
			
			

<	
			
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
					       <h3 class="agileinfo_sign">ANNS COLLEGE OF TECHNICAL ENGINEERING</h3>	
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
											
<!-- banner-down-->
			
<!-- //banner-down-->
<!-- banner-bottom -->
	<div class="banner-bottom-agileits" id="about">
			
			
		
			
			
			<div class="clearfix"></div>
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