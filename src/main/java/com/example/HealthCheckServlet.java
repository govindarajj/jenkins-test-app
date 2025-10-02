package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

public class HealthCheckServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        
        String healthStatus = "{\n" +
            "  \"status\": \"UP\",\n" +
            "  \"timestamp\": \"" + new Date() + "\",\n" +
            "  \"version\": \"1.0.0\",\n" +
            "  \"application\": \"Jenkins Test App\",\n" +
            "  \"checks\": [\n" +
            "    {\n" +
            "      \"name\": \"database\",\n" +
            "      \"status\": \"UP\"\n" +
            "    },\n" +
            "    {\n" +
            "      \"name\": \"diskSpace\",\n" +
            "      \"status\": \"UP\"\n" +
            "    }\n" +
            "  ]\n" +
            "}";
        
        out.println(healthStatus);
    }
}