<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kanimozhi DevOps Blog- Home Page</title>
<link href="images/mithunlogo.jpg" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to Kanimozhi DevOps Blog. Ph No: +91-9773819219  Delhi, India </h1>
<h1 align="center"> Kanimozhi Deovops Engineer</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/kani_logo.jpg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		Kani Devops, 
		Webbee eSolutions pvt Ltd.
		+91-9773819219
		kanidevops20@gmail.com
		<br>
		<a href="mailto:kanidevops20@gmail.com">Mail to KANI</a>
	</span>
</div>
<hr>
<hr>
<hr>
<p align=center>Kanimozhi - Devops Engineer.</p>
<p align=center><small>Copyrights 2022 by <a href="http://mithuntechnologies.com/">Kanimozhi, Delhi</a> </small></p>

</body>
</html>
