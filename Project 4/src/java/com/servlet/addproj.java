package com.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

public class addproj extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
                    String userid = "";
                    HttpSession session = request.getSession();
                    userid = session.getAttribute("id").toString();
            try {
                
                    String proj_title = request.getParameter("proj_title");
                    String proj_id = request.getParameter("proj_id");
                    String proj_loca = request.getParameter("proj_loca");
                    String proj_mang = request.getParameter("proj_mang");
                    String proj_stat = request.getParameter("status");
                    String proj_descr = request.getParameter("proj_descr");
                    String issue = request.getParameter("issue");
                    String chall_descr = request.getParameter("chall_descr");
                    String chall_solu = request.getParameter("chall_solu");
                    String chall_reso = request.getParameter("chall_reso");
                    String phone_num = request.getParameter("phone_num");
                    String chall_theme = request.getParameter("chall_theme");
            
//                    Part filepart = request.getPart("file_upload");
            
//                    InputStream inputstream = null;
            
//                    if (filepart != null) {
//                        long filesize = filepart.getSize();
//                        String filecontent = filepart.getContentType();
//                        inputstream = filepart.getInputStream();
//                    }
                    
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                    
                    PreparedStatement pm = null;
                    String query = "INSERT INTO projects (user_id, title, proj_id, location, manger, status, proj_descr, ch_check, ch_descr, ch_solution, ch_resource, phone_num, ch_theme) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                    pm = con.prepareStatement(query);
                    pm.setString(1, userid);
                    pm.setString(2, proj_title);
                    pm.setString(3, proj_id);
                    pm.setString(4, proj_loca);
                    pm.setString(5, proj_mang);
                    pm.setString(6, proj_stat);
                    pm.setString(7, proj_descr);
                    pm.setString(8, issue);
                    pm.setString(9, chall_descr);
                    pm.setString(10, chall_solu);
                    pm.setString(11, chall_reso);
                    pm.setString(12, phone_num);
                    pm.setString(13, chall_theme);
                    
                    int returnCode = pm.executeUpdate();
                    
                    if (returnCode == 0) {
                        request.setAttribute("Message", "Error inserting into file");
                        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
                    } else {
                        request.setAttribute("Message", "Your record inserted successfully");
                        getServletContext().getRequestDispatcher("/manager_dash.jsp").forward(request, response);
                    }
            }  catch (IOException | ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException | ServletException e) {
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
