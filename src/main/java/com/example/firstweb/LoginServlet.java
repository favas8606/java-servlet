package com.example.firstweb;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("admin") && password.equals("admin")) {
            RequestDispatcher rd = request.getRequestDispatcher("welcome-servlet");
            rd.forward(request, response);
        }
        else {
            out.println("<h2 style='color:red;'>Credentials are incorrect</h2>");
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.include(request, response);
        }
    }
}
