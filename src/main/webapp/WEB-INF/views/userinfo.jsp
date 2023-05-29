<%@ page import="com.XieYiqiang.model.User" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/4/2
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<html>
<head>
    <title>User info</title>
</head>
<body>
<%
    User u=(User)request.getAttribute("user");
%>
<h1>User info</h1>
<table>
    <tr>
        <td>id:</td>
        <td><%=u.getId()%>
        </td>
    </tr>
    <tr>
        <td>username</td>
        <td><%=u.getUsername()%>
        </td>
    </tr>
    <tr>
        <td>passwords</td>
        <td><%=u.getPassword()%>
        </td>
    </tr>
    <tr>
        <td>email</td>
        <td><%=u.getEmail()%>
        </td>
    </tr>
    <tr>
        <td>gender</td>
        <td><%=u.getGender()%>
        </td>
    </tr>
    <tr>
        <td>birthdate</td>
        <td><%=u.getBirthdate()%>
        </td>
    </tr>
</table>
</body>
</html>
<%@include file="footer.jsp" %>
