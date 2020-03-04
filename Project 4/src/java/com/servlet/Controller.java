package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

public class Controller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
                String userName = request.getParameter("userid");
                String password = request.getParameter("pass");

                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                    String Query = "SELECT user_id, password, firstname, lastname, user_role FROM login_cred WHERE user_id =? AND password=? ";
                    PreparedStatement pm = conn.prepareStatement(Query);
                    pm.setString(1, userName);
                    pm.setString(2, password);
                    ResultSet rs = pm.executeQuery();
                    

                    if (rs.next()) {
                        HttpSession session = request.getSession();
                        String firstname = rs.getString("firstname");
                        String user_role = rs.getString("user_role");
                        String lastname = rs.getString("lastname");
                        
//                        Cookie username = new Cookie("auth", userName);
//                        username.setMaxAge(-1);
//                        Cookie fname = new Cookie("firstname", firstname);
//                        fname.setMaxAge(-1);
//                        Cookie role = new Cookie("role", user_role);
//                        fname.setMaxAge(-1);
//                        Cookie lname = new Cookie("lastname", lastname);
//                        fname.setMaxAge(-1);
                        if( user_role.equals("Manager")){
                            
//                            response.addCookie(username);
//                            response.addCookie(fname);
//                            response.addCookie(role);
//                            response.addCookie(lname);
                            session.setAttribute("firstname", firstname);
                            session.setAttribute("role", user_role);
                            session.setAttribute("id", userName);
                            session.setAttribute("lastname", lastname);
                            response.sendRedirect("manager_dash.jsp");
                            return;
                        } else if( user_role.equals("Admin")) {
//                            response.addCookie(username);
//                            response.addCookie(fname);
//                            response.addCookie(role);
//                            response.addCookie(lname);
                            session.setAttribute("firstname", firstname);
                            session.setAttribute("role", user_role);
                            session.setAttribute("id", userName);
                            session.setAttribute("lastname", lastname);
                            response.sendRedirect("admin_dash.jsp");
                            return;
                        } else if( user_role.equals("User")) {
//                            response.addCookie(username);
//                            response.addCookie(fname);
//                            response.addCookie(role);
//                            response.addCookie(lname);
                            session.setAttribute("firstname", firstname);
                            session.setAttribute("role", user_role);
                            session.setAttribute("id", userName);
                            session.setAttribute("lastname", lastname);
                            response.sendRedirect("user_dash.jsp");
                            return;
                        } else {
                            out.println("<script>");
                            out.println("alert('Incomplete Account Setup\n\nContact admin for more details!!')");
                            out.println("</script>");
                            response.sendRedirect("login.jsp");
                        }
                    } else {
//                        request.setAttribute("login-failed", "Invalid credentials");
                        out.println("<script>");
                        out.println("alert('Invalid Credentials!!')");
                        out.println("</script>");
                        RequestDispatcher rd =  request.getRequestDispatcher("login.jsp");
                        rd.include(request, response);
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
