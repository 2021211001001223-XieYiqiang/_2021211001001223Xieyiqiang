<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>validate</title>
</head>
<body>
<%-- todo 2: use el implicit object param to get request parameters- username and password
     todo 3: use c:set var="username" value="${param.username}" to variable set into session
--%>
<%--todo 4: use c:choose ,c:when c:otherwise to validate username is "admin" and password is 123 --%>
<%--todo 4.1: when username == admin and password 123 use c:url and c:param to make url = "welcome.jsp?username=admin"--%>
<%-- todo 4.2.use c:redirect to url= welcome.jsp?username=admin--%>
<%-- todo 5.: use c:otherwise-- else --%>
<%-- todo 5.1:use c:set to set a attribute name message="username password error" in request  --%>
<%--todo 5.2:use c:import to include login.jsp --%>
   <c:choose>
         <c:when test="${param.username=='admin' && param.password=='123'}">
             <c:set var="username" value="${param.username}" scope="session"/>
             <c:url var="url" value="welcome.jsp">
                 <c:param name="username" value="admin"/>
                 <c:param name="password" value="123"/>
             </c:url>
             <c:redirect url="${url}"/>
         </c:when>
       <c:otherwise>
           <c:set var="message" value="username password error" scope="request"/>
         <c:import url="login.jsp"/>
       </c:otherwise>
   </c:choose>
</body>
</html>
