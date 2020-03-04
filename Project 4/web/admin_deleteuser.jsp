<%-- 
    Document   : admin_deleteuser
    Created on : Dec 21, 2019, 11:42:26 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%
    String id = request.getParameter("d");
            
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                
                Statement st = con.createStatement();
                Statement st2 = con.createStatement();
                
                String sql="DELETE FROM `login_cred` WHERE `user_id`= '"+id+"'";
                String sql2 = "DELETE FROM `accounts` WHERE `user_id`='"+id+"'";
                
                out.println("alert(User '"+id+"' is about to be deleted");
                st.executeUpdate(sql);
                st2.executeUpdate(sql2);
                
                response.sendRedirect("admin_reg_users.jsp");
            } catch (Exception e) {
                out.println("Error: "+e.getMessage());
            }
%>