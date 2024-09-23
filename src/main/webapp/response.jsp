<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21-09-2024
  Time: 03:50 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%! String username, password; %>
<% username =  request.getParameter("username");
    password =  request.getParameter("password");
%>

<h1>Login Details</h1>
<h2> UserName = <%= username %></h2>
<h2> Password = <%= password %></h2>

</body>
</html>
