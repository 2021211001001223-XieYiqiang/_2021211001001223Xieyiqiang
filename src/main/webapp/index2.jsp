<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/4/2
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>search</title>
</head>
<body>
    <h2>Welcome to My Online Shop Home Page.</h2>
    <form method="get" target="_blank" action="search">
        <input type="text" name="txt" size="30"/>
        <select name="search">
            <option value="baidu">Baidu</option>
            <option value="bing">Bing</option>
            <option value="google">Google</option>
        </select>
        <input type="submit" value="Search">
    </form>
</body>
</html>
<%@include file="footer.jsp"%>
