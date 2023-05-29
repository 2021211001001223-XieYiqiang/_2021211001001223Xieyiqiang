<%@ page import="com.XieYiqiang.week11.Person" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.XieYiqiang.week11.Dog" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/5/5
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Demo #2</title>
</head>
<body>
<%
  Person person=new Person();
  person.setName("TOM");
  Dog dog=new Dog();
  dog.setName("TOMMY");
  person.setDog(dog);
  pageContext.setAttribute("pAtt",person);
%>
<h1>Get Person dog name-using java code</h1>
<h2>Person Name:</h2>
<%
  Person p=(Person)pageContext.findAttribute("pAtt");
  out.println(p.getName());
%>
<h2>Person Dog Name<%=p.getDog().getName()%></h2>
<h1>Get Person name:${pAtt.name}</h1>
<h2>Get Person Dog Name:${pAtt.dog.name}</h2>
<h1>user []->give you more +array and list</h1>
<h2>Person name:${pAtt["name"]}</h2>
</body>
</html>
