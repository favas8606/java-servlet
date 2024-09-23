<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>


<h1><%= "Hello World!" %>
</h1>
<form action="response.jsp" method="post">
  Name: <label>
  <input type="text" name="username"/>
</label> <br>
  Password: <label>
  <input type="password" name="password"/>
</label> <br>
  <button type="submit">Login</button>
</form>
</body>
</html>