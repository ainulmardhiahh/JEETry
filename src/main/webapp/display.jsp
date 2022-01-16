<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23/12/2021
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Display</title>

    <c:set var="site" value="This is display Page"/>
    <div style="text-align: center;"> <h3>${fn:toUpperCase(site)}</h3> </div>
    <br>

    <c:if test="${param.code == 1}">
    <jsp:include page="myselfServlet"/>
    </c:if>
    <c:if test="${param.code == 2}">
        <jsp:include page="myfamilyServlet"/>
    </c:if>
    <c:if test="${param.code == 3}">
        <jsp:include page="myStudentServlet"/>
    </c:if>
    <c:if test="${param.code == 4}">
        <jsp:include page="MyVehicleServlet"/>
    </c:if>
</head>
<body>

</body>
</html>
