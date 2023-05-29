<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/5/5
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
  <title>el demo #1</title>
</head>
<body>
<%
  pageContext.setAttribute("attName","in page");
  request.setAttribute("attName","in request");
  session.setAttribute("attName","in session");
  application.setAttribute("attName","in application");
%>
<h1>Get att from 4 scopes</h1>
Att value:<%=pageContext.getAttribute("attName")%><br/>
Att value:<%=request.getAttribute("attName")%><br/>
Att value:<%=session.getAttribute("attName")%><br/>
Att value:<%=application.getAttribute("attName")%><br/>
<h1>Find attribute(not get)-->search in page->request->session->application->give null(not in anyone)</h1>
Att value:<%=pageContext.findAttribute("attName")%><br/>
<h1>EL Code example</h1>
:${x}<br/>
att:${attName}<br/>
<h1></h1>
</body>
</html>
