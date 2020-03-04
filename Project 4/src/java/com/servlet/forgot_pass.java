/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class forgot_pass extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String email = request.getParameter("email");
            
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                    Statement st = conn.createStatement();
                    String Query = "SELECT firstname, lastname FROM login_cred WHERE user_id =?";
                    PreparedStatement pm = conn.prepareStatement(Query);
                    pm.setString(1, email);
                    ResultSet rs = pm.executeQuery();
                    
                    if (rs.next()) {
                        String firstname = rs.getString("firstname").toLowerCase();
                        String lastname = rs.getString("lastname").toLowerCase();
                        String new_pass = firstname.charAt(0)+"."+lastname;
                        
                        String update_pass = "UPDATE login_cred SET password=? WHERE user_id='"+email+"' ";
                        PreparedStatement ps = conn.prepareStatement(update_pass);
                        ps.setString(1, new_pass);
                        int i = ps.executeUpdate();
                        if (i > 0){
                        out.println("<Script>");
                        out.println("alert(New password is Firstname initial + . + Lastname)");
                        out.println("</Script>");
                        response.sendRedirect("login.jsp");
                        }
                    }
            } catch (Exception e) {
                    out.println("Exception :"+e.getMessage());
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


}
