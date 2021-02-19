
<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
					<h1><a href="parent_homepg.jsp"><span>V</span>imala COLLEGE <i class="fa fa-graduation-cap" aria-hidden="true"></i></a></h1>
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
							<li  ><a href="clubdepthomepage.jsp">Home</a></li>								
								<li ><a href="clubdeptaddevent.jsp" class="active">ADD EVENT</a></li>
								<li><a href="clubdeptviewevent.jsp" class="active">VIEW EVENT</a></li>
							<li><a href="clubdeptviewleaveform.jsp" class="active">VIEW LEAVE APPLICATION</a></li>
							<li  class="active"><a href="clubdeptviewoutpass.jsp" >VIEW OUT PASS</a></li>
							<li><a href="clubupdate.jsp" class="active">Profile</a></li>
							<li><a href="clubchngpassword.jsp" class="active">change password</a></li>
						
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
				
				
			</div>
			<div class="w3layouts-grids">
				
				<div class="col-md-8 contact-form">
				
				<%
				try
				{
					
					String id=request.getQueryString();
					System.out.println(id);

					
//String name=session.getAttribute("username").toString();	
	


   
	Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");

	PreparedStatement ps=con.prepareStatement("update outpass set status='rejected' where id='"+id+"' ");


ps.executeUpdate();


%>
<br><p> Outpass Rejected Rejected</p>
</div>
<% 
response.sendRedirect("clubdeptviewoutpass.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>						
	
</div></html>	