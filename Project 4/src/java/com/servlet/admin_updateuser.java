package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class admin_updateuser extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String id = request.getParameter("userid");
            String first = request.getParameter("firstname");
            String last = request.getParameter("lastname");
            String role = request.getParameter("role");
            
            try {
                
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                    
                    PreparedStatement pm = null;
                    PreparedStatement ps = null;
                    String sql="Update login_cred set firstname=?, lastname=?, user_id=?, user_role=? where user_id='"+id+"'  ";
                    String sql2 = "UPDATE `accounts` SET firstname=?, lastname=?, user_id=? where user_id='"+id+"'";
                    
                    pm = con.prepareStatement(sql);
                    ps = con.prepareStatement(sql2);
                    
                    pm.setString(1, first);
                    pm.setString(2, last);
                    pm.setString(3, id);
                    pm.setString(4, role);
                    
                    ps.setString(1, first);
                    ps.setString(2, last);
                    ps.setString(3, id);
                    
                    pm.executeUpdate();
                    ps.executeUpdate();
                    
                    response.sendRedirect("admin_reg_users.jsp");
                    con.close();
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
