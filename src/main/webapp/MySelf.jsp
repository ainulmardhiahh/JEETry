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
    <title>Myself</title>
</head>
<body>
<%@ include file="Menu.html"%>
<div style="text-align: center;"><h1><%= "Myself Page" %>


<form name="MySelf Form" method="post" action="MySelf.jsp">
    <br/>
    Name: <input type="text" name="myName"><br/>
    Age: <input type="text" name="myAge"><br/>
    Hobbies: <input type="text" name="myHobbies"><br/>
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
     String myText = request.getParameter("myName");
     //String myText = request.getParameter("myAge");

    if(myText == null)
    {

    }
    else
    {
        session.setAttribute("MyName",request.getParameter("myName"));
        session.setAttribute("MyAge",request.getParameter("myAge"));
        session.setAttribute("MyHobbies",request.getParameter("myHobbies"));

        out.println(getMessage());
    }
%>

</h1>
    <jsp:include page="myselfServlet"/></div>
</body>
</html>

--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
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


<%@ include file="Menu.html"%>
<div style="text-align: center;"> <h3>Myself Page </h3> </div>
<div>
    <form name="MySelf Form" method="post" action="MySelf.jsp">
        <label for="myName">Name</label>
        <input type="text" id="myName" name="myName" placeholder="Your name..">

        <label for="myAge">Age</label>
        <input type="text" id="myAge" name="myAge" placeholder="Your age..">

        <label for="myHobbies">Hobbies</label>
        <input type="text" id="myHobbies" name="myHobbies" placeholder="Your hobbies..">

        <input type="submit" value="Submit">
    </form>

</div>

<sql:setDataSource var="ic" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/myinfo" user="root" password=""/>
<sql:query dataSource="${ic}" var="oc">
    SELECT * from myself;
</sql:query>
<c:forEach var="result" items="${oc.rows}">
    <c:out value="${result.myname}"/>
    <c:out value="${result.myage}"/>
    <c:out value="${result.myhobbies}"/>
</c:forEach>
<c:forEach var = "i" begin = "1" end = "5">
    <c:out value="berjaya install"/>
</c:forEach>

<c:url value="/display.jsp" var="displayUrl">
    <c:param name="code" value="1"></c:param>
</c:url>

<h4><a href="${displayUrl}">Display</a></h4>
<%! String getMessage()
{
    return "Session created in declaration";
}
%>

<%
    String myText = request.getParameter("myName");
    //String myText = request.getParameter("myAge");

    if(myText == null)
    {

    }
    else
    {
        session.setAttribute("MyName",request.getParameter("myName"));
        session.setAttribute("MyAge",request.getParameter("myAge"));
        session.setAttribute("MyHobbies",request.getParameter("myHobbies"));

        out.println(getMessage());
    }
%>

</body>
</html>