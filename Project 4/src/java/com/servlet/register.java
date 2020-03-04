package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;

public class register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String fullname = request.getParameter("fullname");
            String[] name = fullname.split("\\s");
            
            String firstname = name[0];
            String lastname = name[1];
            String userid;
            
            if ("".equals(lastname)){
                userid = firstname.toLowerCase()+"@skyline.biz";
            } else {
                userid = firstname.toLowerCase()+"."+lastname.toLowerCase().charAt(0)+"@skyline.biz";
            }
            String email = request.getParameter("email");
            String password = request.getParameter("pwd1");
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                
                PreparedStatement pm = null;
                String query = "INSERT INTO `login_cred`(`firstname`, `lastname`, `user_id`, `password`, `user_role`) VALUES (?,?,?,?,?)";
                pm = con.prepareStatement(query);
                pm.setString(1, firstname);
                pm.setString(2, lastname);
                pm.setString(3, userid);
                pm.setString(4, password);
                pm.setString(5, "");
                
                pm.executeUpdate();
                
                PreparedStatement ps = null;
                String query2 = "INSERT INTO `accounts`(`user_id`, `firstname`, `lastname`, `email`) VALUES ( ?, ?, ?, ?)";
                ps = con.prepareStatement(query2);
                ps.setString(1, userid);
                ps.setString(2, firstname);
                ps.setString(3, lastname);
                ps.setString(4, email);
                
                ps.executeUpdate();
                
                RequestDispatcher rd =  request.getRequestDispatcher("login.jsp");
                rd.include(request, response);
                con.close();
            }
            catch (IOException | ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException | ServletException e)
            {
                out.println("Exception: "+e.getMessage());
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
