<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/20/2023
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<h1>User Registration</h1>
<form method="post" action="register.jsp"><!--action to link jsp  to servlet -->
    Username <input type="text" name="username"/><br/>
    password <input type="password" name="password"/><br/>
    Email <input type="text" name="email"/><br/>

    Gender <input type="radio" name="gender" value="male">male <input type="radio" name="gender" value="female">Female
    <br/>
    Birth Date <input type="text" name="birthDate"/>(yyyy-mm-dd)<br/>
    <input type="submit" value="Register"/>
</form>
<sql:setDataSource var="myDs" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                    url="jdbc:sqlserver://localhost:1433;database=userdb;encrypt=false" user="sa" password="123456"/>
<c:if test="${!empty param.username}">
    <sql:update var="newUser" dataSource="${myDs}">
        insert into usertable values(?,?,?,?,?);
        <sql:param value="${param.username}"/>
        <sql:param value="${param.password}"/>
        <sql:param value="${param.email}"/>
        <sql:param value="${param.gender}"/>
        <sql:param value="${param.birthDate}"/>
    </sql:update>
</c:if>
<sql:query var="selectUsers"  dataSource="${myDs}">
    select * from usertable
</sql:query>
<table>
    <tr></tr>
    <c:forEach var="row" items="${selectUsers.rows}">
        <tr>
            <td><c:out value="${row.id}"/></td>
            <td><c:out value="${row.username}"/></td>
            <td><c:out value="${row.Password}"/></td>
            <td><c:out value="${row.Email}"/></td>
            <td><c:out value="${row.gender}"/></td>
            <td><c:out value="${row.birthDate}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
