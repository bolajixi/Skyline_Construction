<%-- 
    Document   : logout
    Created on : Jan 3, 2020, 12:15:00 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogOut</title>
    </head>
    <body>
        <%
//            request.getRequestDispatcher("login.jsp").include(request, response);
//            Cookie[] cookies= request.getCookies ();
//    if (cookies != null) {
//            Cookie username = new Cookie("auth", "");
//            username.setMaxAge(0);
//            Cookie fname = new Cookie("firstname", "");
//            fname.setMaxAge(0);
//            Cookie role = new Cookie("role", "");
//            fname.setMaxAge(0);
//            Cookie lname = new Cookie("lastname", "");
//            fname.setMaxAge(0);
//            
//            response.addCookie(username);
//            response.addCookie(fname);
//            response.addCookie(role);
//            response.addCookie(lname);

            out.println("alert('You are about to logged out') ");
            session.invalidate();

            response.sendRedirect("login.jsp");
//    }            
            %>
    </body>
</html>
