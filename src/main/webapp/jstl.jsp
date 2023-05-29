<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/5/19
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>jstl demo</title>
</head>
<body>
     This is my JSP pag.<br>
     <h2>The "if" Tag</h2>
     <c:forEach var="i" begin="1" end="10">
         <li>${i}
         <c:if test="${i>7}">
             {greater than 7}
         </c:if>
     </c:forEach>
    <hr/>
    <h2>The "choose" Tag</h2>
    <ul>
        <c:forEach var="i" begin="1" end="10">
            <li>${i}
            <c:choose>
                <c:when test="${i<4}">
                    {small}
                </c:when>
                <c:when test="${i<8}">
                    {medium}
                </c:when>
                <c:otherwise>
                    {large}
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </ul>
</body>
</html>
