<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023/5/12
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
   <h1>Accessing Collections</h1>
   <ul>
       <li>${fName[0]} ${lName[0]}-->${company["Ellison"]}</li>
       <li>${fName[1]} ${lName[1]}-->${company["Gates"]}</li>
       <li>${fName[2]} ${lName[2]}-->${company["McNealy"]}</li>
       <li>${fName[3]} ${lName[3]}-->${company["Yiqiang"]}</li>
   </ul>
</body>
</html>
