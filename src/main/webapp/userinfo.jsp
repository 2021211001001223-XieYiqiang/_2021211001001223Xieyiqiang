<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/4/2
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>User info</title>
</head>
<body>
   <h1>User info</h1>
   <table>
     <tr>
       <td>id:</td>
       <td><%=request.getAttribute("id")%></td>
     </tr>
     <tr>
       <td>username</td>
       <td><%=request.getAttribute("username")%></td>
     </tr>
     <tr>
       <td>passwords</td>
       <td><%=request.getAttribute("passwords")%></td>
     </tr>
     <tr>
       <td>email</td>
       <td><%=request.getAttribute("email")%></td>
     </tr>
     <tr>
       <td>gender </td>
       <td><%=request.getAttribute("gender")%></td>
     </tr>
     <tr>
       <td>birthdate</td>
       <td><%=request.getAttribute("birthdate")%></td>
     </tr>
   </table>
</body>
</html>
<%@include file="footer.jsp"%>
