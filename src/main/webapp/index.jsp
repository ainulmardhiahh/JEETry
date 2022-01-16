<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<%@ include file="Menu.html"%>
<img src="https://media.giphy.com/media/E1w0yvMxBIv5M8WkL8/giphy.gif" alt="Paris" width="300" height="300">

<h1><%= "Hi! My name is " + session.getAttribute("MyName") %>
</h1>
<br/>

<a href="hello-servlet">Hello Servlet</a>
<a href="myselfServlet">Myself servlet</a>
<a href="myfamilyServlet">MyFamily servlet</a>
<a href="myStudentServlet">MyStudent servlet</a>
<a href="MyVehicleServlet">MyVehicle servlet</a>
</body>
</html>