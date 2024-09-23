package com.example.firstweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String searchKey = req.getParameter("search-key");

        // Properly encode the search key to handle special characters
        String encodedSearchKey = URLEncoder.encode(searchKey, StandardCharsets.UTF_8);

        // Redirect to Google search with the encoded search key
        resp.sendRedirect("https://www.google.com/search?q=" + encodedSearchKey);
    }
}