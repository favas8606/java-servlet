package com.example.firstweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalTime;
import java.util.Date;

@WebServlet("/demo-session")
public class DemoSession extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       HttpSession session = req.getSession(true);
        Date sessionCreationTime = new Date(session.getCreationTime());
        Date lastAccessedTime = new Date(session.getLastAccessedTime());
        System.out.println("Session Creation Time: " + sessionCreationTime);
        System.out.println("Last Accessed Time: " + lastAccessedTime);
        String message = "Welcome to session management";
        Integer visitorCount = 0;
        String userId = "userId";
        if(session.isNew()){
            session.setAttribute("userId",userId);
            session.setAttribute("creationTime",sessionCreationTime);
            var writer = resp.getWriter();
            writer.println("userId: "+ userId);
            writer.println("creationTime "+ sessionCreationTime);
        }
        else {
            session.setAttribute("count",visitorCount);
            visitorCount++;
            var writer = resp.getWriter();
            writer.println("Visitor Count: "+ visitorCount);
            writer.println("Last Accessed Time: "+ lastAccessedTime);


            writer.flush();
        }


    }
}
