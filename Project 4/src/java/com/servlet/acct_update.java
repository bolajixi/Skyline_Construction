package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class acct_update extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

                    String userid = "";
                    HttpSession session = request.getSession();
                    userid = session.getAttribute("id").toString();
                    
//                    String userid = request.getParameter("userid");
                    String birthday = request.getParameter("birthday");
                    String gender = request.getParameter("gender");
                    String level = request.getParameter("level");
                    String phone_num = request.getParameter("phone_num");
                    String email = request.getParameter("person_ mail");
                    String address = request.getParameter("address");
                    String about = request.getParameter("about");
            try {
                
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                    
                    PreparedStatement pm = null;
                    String sql="Update accounts set birthday=?,gender=?,level=?,phone_num=?,email=?,address=?,about=? where user_id='"+userid+"'  ";
//                    String Query = "UPDATE `accounts` SET `birthday`= ?, `gender`= ?, `level`= ?, `phone_num`= ?, `email`= ?, `address`= ?, `about`=? WHERE `user_id`="+userid;
                    pm = con.prepareStatement(sql);
                    
                    pm.setString(1, birthday);
                    pm.setString(2, gender);
                    pm.setString(3, level);
                    pm.setString(4, phone_num);
                    pm.setString(5, email);
                    pm.setString(6, address);
                    pm.setString(7, about);
                    
                    int i = pm.executeUpdate();
                    
                    if(i > 0){
                        out.print("alert(Your details have been updated)");
                        response.sendRedirect("acc_update.jsp");
                    } else {
                        out.print("There is a problem in updating Record.");
                    } 
                    
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
