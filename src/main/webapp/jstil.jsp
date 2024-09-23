<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1>Hello World!</h1>
<br/>
<!-- JSTL core tag -->
<c:out value="Welcome to JSTL"/>
<!-- Loop example using c:forEach -->
<c:forEach var="i" begin="1" end="10">
  <h2>Item : <c:out value="${i}"/></h2>
</c:forEach>
<!-- Error handling using c:catch -->
<c:catch var="e">
  <c:set var="res" value="${1 div 0}"/>
</c:catch>
<!-- Displaying the exception details if any -->
<c:if test="${e != null}">
  <h3 style="color: #ff3500"> The type of exception : <c:out value="${e}"/> </h3>
  <h4 style="color: orangered"> Actual reason of the exception : <c:out value="${e.message}"/></h4>
</c:if>
<!-- Formatting date using f:formatDate -->
<h1>Formatting dates using JSTL formatting tags</h1>
<c:set var="date" value="${pageContext.request.time}"/>
<h3>Formatted Time: <f:formatDate type="time" value="${date}"/></h3>
</body>
</html>