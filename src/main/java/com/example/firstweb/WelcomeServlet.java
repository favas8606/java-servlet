package com.example.firstweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="WelcomeServlet", urlPatterns="/welcome-servlet")
public class WelcomeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();


        String username = req.getParameter("username");

        writer.println("<h2 style='color:green;'>Welcome " + username + "</h2>");
        writer.flush();
    }
}