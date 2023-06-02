<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<h2>Welcome,<c:out value="${username}"/>
    <%-- todo 4.2.1 use c:out to print username from parammeter --%></h2>
<form>
    <br><input type="submit" value="Logout" name="logout"/>
</form>
<c:if test="${ !empty param.logout and param.logout eq 'Logout'}">
    ${pageContext.session.invalidate()}
    <c:redirect url="login.jsp"/>
</c:if>
<h1>Session info</h1>
Session ID :${pageContext.session.id}<br/>

第一个实验
create Time:${pageContext.session.creationTime}<br/>
Last Accessed Time:${pageContext.session.lastAccessedTime}<br/>
Max Inactive Interval:${pageContext.session.maxInactiveInterval}<br/>

第二个实验
Create Time:<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="<%=new Date(session.getCreationTime())%>"/>
<br/>
Last Access Time:<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="<%=new Date(session.getLastAccessedTime())%>"/>
<br/>
Max Inactive Interval:${pageContext.session.maxInactiveInterval/60}(min)<br/>
</body>
</html>
