<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23-09-2024
  Time: 09:46 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDate, java.time.LocalTime" isELIgnored="true" isErrorPage="true" buffer="64kb" autoFlush="true" %>
<%@ page  %> <!-- Sets the buffer size to 16kb -->

<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%  response.sendRedirect("https://google.com");%>--%>
        <% LocalDate date = LocalDate.now();
        LocalTime time = LocalTime.now();
        response.getWriter().println("Today's Date : "+ date + " Today's Time : " + time);
        %>
<br>
    <h2>Session ID: <%= session.getId() %></h2>


<br>

<%
    // Setting the appName attribute if it's not set
    if (application.getAttribute("appName") == null) {
        application.setAttribute("appName", "My Application");
    }
%>
<br>
<%
    String name = request.getParameter("name");
    response.getWriter().println("Your name is: " + (name != null ? name : "Unknown"));
%>
<br>
<%
    response.getWriter().println("Application Name: " + application.getAttribute("appName"));
%>
<br>

<% String className = page.getClass().getName();
response.getWriter().println("class name = "+ className);
%>

<br>

<%
    // This will throw an exception to demonstrate error handling
    try {
        int num = 10 / 0;
    } catch (Exception e) {
        response.getWriter().println("Error is : "+e);
        response.getWriter().println("Error Class is : " +e.getClass().getName());
    }

%>
<%
    // Simulating large output
    for (int i = 0; i < 10; i++) {
        response.getWriter().println("This is line " + i + "<br>");
    }
%>

            <p>Exception: <%= exception.getMessage() %></p>
            <p>Exception Type: <%= exception.getClass().getName() %></p>
    </body>
</html>
