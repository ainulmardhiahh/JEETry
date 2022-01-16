<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 18/11/2021
  Time: 12:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Myvehicle</title>
</head>
<body>
<%@ include file="Menu.html"%>
<div style="text-align: center;"><h1><%= "My Vehicle Page" %>
<form name="MyVehicle Form" method="post" action="myVehicle.jsp">
    <br/>
    Vehicle Type: <input type="text" name="vehicleType"><br/>
    Vehicle Brand: <input type="text" name="vehicleBrand"><br/>
    Vehicle ID: <input type="text" name="vehicleId"><br/>
    <br/>
    <input type="submit" value="Submit">
    <br>
</form>

    <%! String getMessage()
    {
        return "Session created in declaration";
    }
    %>
<%
    String myText = request.getParameter("vehicleType");

    if(myText == null)
    {

    }
    else
    {
        session.setAttribute("VehicleType",request.getParameter("vehicleType"));
        session.setAttribute("VehicleBrand",request.getParameter("vehicleBrand"));
        session.setAttribute("VehicleId",request.getParameter("vehicleId"));

        out.println(getMessage());
    }
%>
</h1>
    <jsp:include page="MyVehicleServlet"/>
</div>
</body>
</html>
--%>

<!DOCTYPE html>
<html>
<style>
    input[type=text], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    div {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
    }
</style>
<body>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="Menu.html"%>
    <div style="text-align: center;"> <h3>My Vehicle Page </h3> </div>
    <div>
        <form name="MyVehicle Form" method="post" action="myVehicle.jsp">
            <label for="vehicleType">Vehicle Type</label>
            <input type="text" id="vehicleType" name="vehicleType" placeholder="Your vehicle type..">

            <label for="vehicleBrand">Vehicle brand</label>
            <input type="text" id="vehicleBrand" name="vehicleBrand" placeholder="Your vehicle brand..">

            <label for="vehicleId">Campus</label>
            <input type="text" id="vehicleId" name="vehicleId" placeholder="Your vehicle id..">

            <input type="submit" value="Submit">
        </form>
    </div>
<c:url value="/display.jsp" var="displayUrl">
    <c:param name="code" value="4"></c:param>
</c:url>
<h4><a href="${displayUrl}">Display</a></h4>
    <%! String getMessage()
    {
        return "Session created in declaration";
    }
    %>

    <%
        String myText = request.getParameter("vehicleType");

        if(myText == null)
        {

        }
        else
        {
            session.setAttribute("VehicleType",request.getParameter("vehicleType"));
            session.setAttribute("VehicleBrand",request.getParameter("vehicleBrand"));
            session.setAttribute("VehicleId",request.getParameter("vehicleId"));

            out.println(getMessage());
        }
    %>
</h1>
</div>
</body>
</html>
