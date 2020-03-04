package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.jms.Session;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Project 4</title>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <link href=\"mdl/material.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    <script src=\"mdl/material.js\"></script>\r\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js\"></script>\r\n");
      out.write("    <link href=\"mdl/preload.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    <script>\r\n");
      out.write("        function checkSession() {\r\n");
      out.write("             var username = Session[\"id\"].toString();\r\n");
      out.write("             var fname = Session[\"firstname\"].toString();\r\n");
      out.write("             if ((!username) && (document.getElementsByName(\"userid\").value == username)) {\r\n");
      out.write("              alert(\"Welcome back,\" + fname + \"/n Continue from previous Session\");\r\n");
      out.write("              return true;\r\n");
      out.write("             }\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        function validate(form)\r\n");
      out.write("          {\r\n");
      out.write("            // validation fails if the input is blank\r\n");
      out.write("            if(form.userid.value == \"\") {\r\n");
      out.write("              alert(\"Error: Username is empty!\");\r\n");
      out.write("              form.userid.focus();\r\n");
      out.write("              return false;\r\n");
      out.write("            } else if(form.pass.value == \"\") {\r\n");
      out.write("              alert(\"Error: Password is empty!\");\r\n");
      out.write("              form.pass.focus();\r\n");
      out.write("              return false;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("           // validation was successful\r\n");
      out.write("            return true;\r\n");
      out.write("          }\r\n");
      out.write("        \r\n");
      out.write("        $(window).load(function() {\r\n");
      out.write("            $('.loader').fadeOut('slow');\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"http://fonts.googleapis.com/css?family=Roboto:300,400,500,700\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body background=\"images/login-img_edited.jpg\" style=\"background-size: cover;\">\r\n");
      out.write(" <!--Page preloader-->   \r\n");
      out.write("<!--    <div class=\"loader\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<img src=\"images/logo.svg\">\r\n");
      out.write("\t\r\n");
      out.write("    </div>-->\r\n");
      out.write("    <!--End of Page Preloader-->\r\n");
      out.write("    <img src=\"images/logo-line.svg\" width=\"32%;\" style=\"top: 50%; transform: translate(50%, 50%)\"/></pa\r\n");
      out.write("<!--\tThis is the Login card container-->\r\n");
      out.write("<form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Controller\" method=\"post\" onsubmit=\"return validate(this)\">\r\n");
      out.write("    <div class=\"mdl-card card-anim\" style=\"background: rgba(0,0,0,0.50); border-radius: 24px; width:380px; height: 415px; position: absolute; top: 50%; left: 50%; transform: translate(7%,-54%);\">\r\n");
      out.write("        <div style=\"margin: 80px 0 0 0;\">\r\n");
      out.write("            <div align=\"center\">\r\n");
      out.write("                <div style=\"margin: 0 0 10px 0;\">\r\n");
      out.write("                    <font color=\"#FFFFFF\" class=\"mdl-typography--display-1\" style=\"font-size: 22px;\">Login to your account</font>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!--\t\t  Username Textfield-->\r\n");
      out.write("                <br>\r\n");
      out.write("                <i class=\"material-icons\" style=\"color: white; margin: 0 10px 0 0;\">person</i>\r\n");
      out.write("                <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">\r\n");
      out.write("                    <input class=\"mdl-textfield__input\" pattern=\"[^@]+@[^@]+\\.[a-zA-Z]{2,6}\" style=\"color: #FFFFFF;\" type=\"text\" name=\"userid\" autofocus>\r\n");
      out.write("                    <label class=\"mdl-textfield__label\" style=\"color: #FFFFFF ;\" for=\"userid\">Username</label>\r\n");
      out.write("                    <span class=\"mdl-textfield__error\">Invalid Username</span>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("                <!--\t\t  Password Textfield-->\r\n");
      out.write("                <i class=\"material-icons\" style=\"color: white; margin: 0 10px 0 0;\">lock</i>\r\n");
      out.write("                <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--floating-label\">\r\n");
      out.write("                    <input class=\"mdl-textfield__input\" style=\"color: #FFFFFF;\" type=\"password\" name=\"pass\">\r\n");
      out.write("                    <label class=\"mdl-textfield__label\" style=\"color: #FFFFFF;\" for=\"pass\">Password</label>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--\t\tLogin button & Forgot password link-->\r\n");
      out.write("            <div style=\"margin:4px 0 10px 0\">\r\n");
      out.write("                <button name=\"signin\" type=\"submit\" class=\"mdl-button mdl-js-button mdl-button--raised\" style=\"margin: 0 0 0 85px; color:#03DAC5;\">Login</button>\r\n");
      out.write("        \r\n");
      out.write("                <a href=\"pass_reset.jsp\" class=\"mdl-typography--text-left\" style=\"margin: 0 0 0 32px; font-size: 14.2px; color: white; text-decoration: none;\">Forgot password?</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div style=\"margin: 10px 0 0 0;\">\r\n");
      out.write("                <hr width=\"255\" style=\"opacity: .5;\">\r\n");
      out.write("\r\n");
      out.write("                <font color=\"#FFFFFF\" style=\"margin: 0 0 0 80px;\">Don't have an account? </font><a href=\"signup.jsp\" class=\"mdl-typography--text-left\" style=\"font-size: 14.2px; color: #03DAC5; text-decoration: none;\">Sign Up</a>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("            \r\n");
      out.write("    </div>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
