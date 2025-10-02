package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

public class HelloServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Jenkins Test Application</title>");
        out.println("<style>");
        out.println("body { font-family: Arial, sans-serif; margin: 40px; }");
        out.println(".container { max-width: 800px; margin: 0 auto; }");
        out.println(".header { background: #f4f4f4; padding: 20px; border-radius: 5px; }");
        out.println(".info { margin: 20px 0; padding: 15px; background: #e7f3ff; border-radius: 5px; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='container'>");
        out.println("<div class='header'>");
        out.println("<h1>🚀 Jenkins Pipeline Test Application</h1>");
        out.println("</div>");
        out.println("<div class='info'>");
        out.println("<h2>Servlet Information</h2>");
        out.println("<p><strong>Server Time:</strong> " + new Date() + "</p>");
        out.println("<p><strong>Build Version:</strong> 1.0.0</p>");
        out.println("<p><strong>Servlet Name:</strong> HelloServlet</p>");
        out.println("<p><strong>Request URL:</strong> " + request.getRequestURL() + "</p>");
        out.println("</div>");
        out.println("<a href='/jenkins-test-app/'>Home</a> | ");
        out.println("<a href='/jenkins-test-app/health'>Health Check</a>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
    }
}