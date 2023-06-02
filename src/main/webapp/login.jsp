<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
</head>
<%
    Cookie[] allCookies=request.getCookies();
    String username="",password="",rememberMeVal="";
    if(allCookies!=null){
        for(Cookie c:allCookies){
            if(c.getName().equals("cUsername")){
                username=c.getValue();
            }
            if(c.getName().equals("cPassword")){
                password=c.getValue();
            }
            if(c.getName().equals("cRememberMe")){
                rememberMeVal=c.getValue();
            }
        }
    }
%>
<body>
<%-- todo 6: use c:out to print message fron request --%>
<c:out value="${message}"/>
<%--todo 1: use c:url to set url in action="validate.jsp" --%>
<form action="<c:url value="validate.jsp"/>">
    Username : <input type="text" value="<%=username%>" name="username"><br>
    Password : <input type="password" value="<%=password%>" name="password" ><br>
    <input type="checkbox" name="rememberMe" value="1" <%=rememberMeVal.equals("1")?"checked":""%> >RememberMe<br/>
    <input type="submit" value="Login"/>
</form>
</body>
</html>
