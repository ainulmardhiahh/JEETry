<%--
Created by IntelliJ IDEA.
User: user
Date: 9/11/2021
Time: 5:12 PM
To change this template use File | Settings | File Templates.
--%>
<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mystudent</title>
</head>
<body>
<%@ include file="Menu.html"%>
<div style="text-align: center;"><h1><%= "My Student Page" %>
<form name="MyStudent Form" method="post" action="MyStudent.jsp">
    <br/>
    Matric No: <input type="text" name="matricNo"><br/>
    Program Code: <input type="text" name="programCode"><br/>
    Campus: <input type="text" name="campus"><br/>
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
    String myText = request.getParameter("matricNo");

    if(myText == null)
    {

    }
    else
    {
        session.setAttribute("MatricNo",request.getParameter("matricNo"));
        session.setAttribute("ProgramCode",request.getParameter("programCode"));
        session.setAttribute("Campus",request.getParameter("campus"));

        out.println(getMessage());
    }
%>
</h1>
    <jsp:include page="myStudentServlet"/>
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
    <div style="text-align: center;"> <h3>My Student Page </h3> </div>
    <div>
            <form name="MyStudent Form" method="post" action="MyStudent.jsp">
            <label for="matricNo">My Dad</label>
            <input type="text" id="matricNo" name="matricNo" placeholder="Your matric no..">

            <label for="programCode">Program Code</label>
            <input type="text" id="programCode" name="programCode" placeholder="Your program code..">

            <label for="campus">Campus</label>
            <input type="text" id="campus" name="campus" placeholder="Your campus name..">

            <input type="submit" value="Submit">
        </form>
    </div>

<c:url value="/display.jsp" var="displayUrl">
    <c:param name="code" value="3"></c:param>
</c:url>
<h4><a href="${displayUrl}">Display</a></h4>

    <%! String getMessage()
    {
        return "Session created in declaration";
    }
    %>

    <%
        String myText = request.getParameter("matricNo");

        if(myText == null)
        {

        }
        else
        {
            session.setAttribute("MatricNo",request.getParameter("matricNo"));
            session.setAttribute("ProgramCode",request.getParameter("programCode"));
            session.setAttribute("Campus",request.getParameter("campus"));

            out.println(getMessage());
        }
    %>
</h1>

</div>
</body>
</html>