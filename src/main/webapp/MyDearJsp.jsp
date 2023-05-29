<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/5/12
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <h1>Ger request parameter using EL</h1>
  Name:${param.name}<br>
  ID:${param.id}<br>
  Subject:${paramValues.subject[0]},${paramValues.subject[1]},${paramValues.subject[2]}
  <h1>Get request header using EL</h1>
   Host:${header.host}
   <h1>Get cookies using EL</h1>
   JSESSIONID:${cookie.JSESSIONID.value}
   <h1>Get context init parameters EL</h1>
    driver:${initParam.driver}<br>
   <h1>Get Url</h1>
   uil:${initParam.url}
   <h1>Get username</h1>
   username:${initParam.username}
   <h1>Get password</h1>
   password:${initParam.password}
   <h1>Get att from 4 scopes</h1>
   <%
       pageContext.setAttribute("attName","in page");
       request.setAttribute("attName","in request");
       session.setAttribute("attName","in session");
       application.setAttribute("attName","in application");
   %>
   Att value:<%=pageContext.getAttribute("attName")%><br/>
   Att value:<%=request.getAttribute("attName")%><br/>
   Att value:<%=session.getAttribute("attName")%><br/>
   Att value:<%=application.getAttribute("attName")%><br/>
</body>
</html>
