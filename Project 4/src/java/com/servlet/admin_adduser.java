package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class admin_adduser extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             String first = request.getParameter("firstname");
             String last = request.getParameter("lastname");
             String id = request.getParameter("userid");
             String user_role = request.getParameter("role");
    
    try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                if (first != null && last != null && id != null && user_role != null) {
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                
                PreparedStatement pm = null;
                String query = "INSERT INTO `login_cred`(`firstname`, `lastname`, `user_id`, `user_role`, `password`) VALUES ( ?, ?, ?, ?, ?)";
                pm = con.prepareStatement(query);
                pm.setString(1, first);
                pm.setString(2, last);
                pm.setString(3, id);
                pm.setString(4, user_role);
                pm.setString(5, "0000");
                
                pm.executeUpdate();
                
                PreparedStatement ps = null;
                String query2 = "INSERT INTO `accounts`(`user_id`, `firstname`, `lastname`) VALUES ( ?, ?, ?)";
                ps = con.prepareStatement(query2);
                ps.setString(1, id);
                ps.setString(2, first);
                ps.setString(3, last);
                
                ps.executeUpdate();
                
                response.sendRedirect("admin_reg_users.jsp");
                con.close();
                }
            } catch (Exception e) {
                out.println("Error: "+e.getMessage());
            }
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
