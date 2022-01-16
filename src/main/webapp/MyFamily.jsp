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
    <title>Myfamily</title>
</head>
<body>
<%@ include file="Menu.html"%>
<div style="text-align: center;"><h1><%= "My Family Page" %>
<form name="MyFamily Form" method="post" action="MyFamily.jsp">
    <br/>
    My Dad: <input type="text" name="myDad"><br/>
    My Mom: <input type="text" name="myMom"><br/>
    My Siblings: <input type="text" name="mySiblings"><br/>
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
    String myText = request.getParameter("myDad");
    //String myText = request.getParameter("myAge");

    if(myText == null)
    {

    }
    else
    {
        session.setAttribute("MyDad",request.getParameter("myDad"));
        session.setAttribute("MyMom",request.getParameter("myMom"));
        session.setAttribute("MySiblings",request.getParameter("mySiblings"));

        out.println(getMessage());
    }
%>

</h1>
    <jsp:include page="myfamilyServlet"/>
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


<%@ include file="Menu.html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="text-align: center;"> <h3>My Family Page </h3> </div>
<div>
    <form name="MyFamily Form" method="post" action="MyFamily.jsp">
        <label for="myDad">My Dad</label>
        <input type="text" id="myDad" name="myDad" placeholder="Your dad name..">

        <label for="myMom">My Mom</label>
        <input type="text" id="myMom" name="myMom" placeholder="Your mom name..">

        <label for="mySiblings">my Siblings</label>
        <input type="text" id="mySiblings" name="mySiblings" placeholder="Your siblings name..">

        <input type="submit" value="Submit">
    </form>
</div>
<c:forEach var = "i" begin = "1" end = "5">
    <c:out value="berjaya install"/>
</c:forEach>
<c:url value="/display.jsp" var="displayUrl">
    <c:param name="code" value="2"></c:param>
</c:url>
<h4><a href="${displayUrl}">Display</a></h4>
<%! String getMessage()
{
    return "Session created in declaration";
}
%>

<%
    String myText = request.getParameter("myDad");
    //String myText = request.getParameter("myAge");

    if(myText == null)
    {

    }
    else
    {
        session.setAttribute("MyDad",request.getParameter("myDad"));
        session.setAttribute("MyMom",request.getParameter("myMom"));
        session.setAttribute("MySiblings",request.getParameter("mySiblings"));

        out.println(getMessage());
    }
%>
<c:set var="test" value="2"/>
</h1>

</div>
</body>
</html>
