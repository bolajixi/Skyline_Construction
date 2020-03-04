package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class admin_005fdash_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin</title>\n");
      out.write("        <link href=\"mdl/material.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"mdl/application.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script src=\"mdl/material.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://fonts.googleapis.com/css?family=Roboto:300,400,500,700\" type=\"text/css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"mdl/getmdl-select.min.css\">\n");
      out.write("        <script defer src=\"mdl/getmdl-select.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"mdl/getmdl-select.min.css\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("    \n");
      out.write("    <body background=\"images/Dark_background_1920x1080.png\" style=\"background-size: cover;\">\n");
      out.write("\n");
      out.write("<div class=\"mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header is-small-screen\">\n");
      out.write("\n");
      out.write("    <header class=\"mdl-layout__header\" style=\"background-color: #424242 !important;\">\n");
      out.write("        <div class=\"mdl-layout__header-row\">\n");
      out.write("            <div class=\"mdl-layout-spacer\"></div>\n");
      out.write("<!--            Expandable Search Button-->\n");
      out.write("            <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--expandable\">\n");
      out.write("                <label class=\"mdl-button mdl-js-button mdl-button--icon\" for=\"search\">\n");
      out.write("                    <i class=\"material-icons\">search</i>\n");
      out.write("                </label>\n");
      out.write("<!--\t\t\t\tSearch Button Textfield-->\n");
      out.write("                <div class=\"mdl-textfield__expandable-holder\">\n");
      out.write("                    <input class=\"mdl-textfield__input\" type=\"text\" id=\"search\"/>\n");
      out.write("                    <label class=\"mdl-textfield__label\" for=\"search\">Enter your query...</label>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--\t\t\tNotification button-->\n");
      out.write("            <div class=\"material-icons mdl-badge mdl-badge--overlap\" id=\"notification\"\n");
      out.write("                 data-badge=\"23\">\n");
      out.write("\t\t\t\t<i class=\"material-icons\">notifications_none</i>\n");
      out.write("            </div>\n");
      out.write("<!-- \t\t\tNotifications dropdown List-->\n");
      out.write("            <ul class=\"mdl-menu mdl-list mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right mdl-shadow--2dp notifications-dropdown\"\n");
      out.write("                for=\"notification\">\n");
      out.write("<!--\t\t\t\tNotification Header-->\n");
      out.write("                <li class=\"mdl-list__item\">\n");
      out.write("                    You have 23 new notifications!\n");
      out.write("                </li>\n");
      out.write("\t\t\t\t<hr>\n");
      out.write("<!--\t\t\tNotification List-->\n");
      out.write("\t\t\t\t\n");
      out.write("<!--\t\t\t\tNotification1-->\n");
      out.write("                <li class=\"mdl-menu__item mdl-list__item list__item--border-top\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content mdl-\">\n");
      out.write("                        <span class=\"mdl-list__item-avatar background-color--primary\" style=\"align-content: center;\">\n");
      out.write("                            <i class=\"material-icons mdl-list__item-avatar\">plus_one</i>\n");
      out.write("                        </span>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                        <span>You have 3 new orders.</span>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("<!--\t\t\t\tNotification2-->\n");
      out.write("                <li class=\"mdl-menu__item mdl-list__item list__item--border-top\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <span class=\"mdl-list__item-avatar background-color--secondary\">\n");
      out.write("                            <i class=\"material-icons mdl-list__item-avatar\">error_outline</i>\n");
      out.write("                        </span>\n");
      out.write("                      <span>Database error</span>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("<!--\t\t\t\tNotification3-->\n");
      out.write("                <li class=\"mdl-menu__item mdl-list__item list__item--border-top\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <span class=\"mdl-list__item-avatar background-color--primary\">\n");
      out.write("                            <i class=\"material-icons mdl-list__item-avatar\">new_releases</i>\n");
      out.write("                        </span>\n");
      out.write("                      <span>The Death Star is built!</span>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("<!--\t\t\t\tNotification4-->\n");
      out.write("                <li class=\"mdl-menu__item mdl-list__item list__item--border-top\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <span class=\"mdl-list__item-avatar background-color--primary\">\n");
      out.write("                            <i class=\"material-icons mdl-list__item-avatar\">mail_outline</i>\n");
      out.write("                        </span>\n");
      out.write("                      <span>You have 4 new mails.</span>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("<!--\t\t\t\tAll Notification Button-->\n");
      out.write("                <li class=\"mdl-list__item list__item--border-top\">\n");
      out.write("                    <button href=\"#\" class=\"mdl-button mdl-js-button mdl-js-ripple-effect\">ALL NOTIFICATIONS</button>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("<!--\t\t\tMessages Button-->\n");
      out.write("            <div class=\"material-icons mdl-badge mdl-badge--overlap\" id=\"inbox\" data-badge=\"4\">\n");
      out.write("                mail_outline\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Messages dropdown-->\n");
      out.write("            <ul class=\"mdl-menu mdl-list mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right mdl-shadow--2dp messages-dropdown\" for=\"inbox\" style=\"width: 245px;\">\n");
      out.write("                <li class=\"mdl-list__item\">\n");
      out.write("                    You have 4 new messages!\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li class=\"mdl-menu__item mdl-list__item mdl-list__item--two-line list__item--border-top\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <span class=\"mdl-list__item-avatar background-color--primary\" align=\"center\">\n");
      out.write("                            <text>A</text>\n");
      out.write("                        </span>\n");
      out.write("                        <span>Alice</span>\n");
      out.write("                        <span class=\"mdl-list__item-sub-title\">Birthday Party</span>\n");
      out.write("                    </span>\n");
      out.write("\n");
      out.write("                </li>\n");
      out.write("\t\t\t\t\n");
      out.write("                <li class=\"mdl-menu__item mdl-list__item mdl-list__item--two-line list__item--border-top\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <span class=\"mdl-list__item-avatar background-color--baby-blue\">\n");
      out.write("                            <text>M</text>\n");
      out.write("                        </span>\n");
      out.write("                        <span>Mike</span>\n");
      out.write("                        <span class=\"mdl-list__item-sub-title\">No theme</span>\n");
      out.write("                    </span>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\n");
      out.write("                <li class=\"mdl-menu__item mdl-list__item mdl-list__item--two-line list__item--border-top\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <span class=\"mdl-list__item-avatar background-color--cerulean \">\n");
      out.write("                            <text>D</text>\n");
      out.write("                        </span>\n");
      out.write("                        <span>Darth</span>\n");
      out.write("                        <span class=\"mdl-list__item-sub-title\">Suggestion</span>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li class=\"mdl-menu__item mdl-list__item mdl-list__item--two-line list__item--border-top\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <span class=\"mdl-list__item-avatar background-color--mint\">\n");
      out.write("                            <text>D</text>\n");
      out.write("                        </span>\n");
      out.write("                        <span>Don McDuket</span>\n");
      out.write("                        <span class=\"mdl-list__item-sub-title\">NEWS</span>\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("\t\t\t\t\n");
      out.write("                <li class=\"mdl-list__item list__item--border-top\">\n");
      out.write("                    <button href=\"#\" class=\"mdl-button mdl-js-button mdl-js-ripple-effect\">SHOW ALL MESSAGES</button>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--\t\t\tUserAccout Details-->\n");
      out.write("            <div class=\"avatar-dropdown\" id=\"icon\">\n");
      out.write("                <span>");
      out.print( session.getAttribute("firstname").toString() );
      out.write(" </span>\n");
      out.write("                <img src=\"images/Icon_header.png\">\n");
      out.write("            </div>\n");
      out.write("            <!-- Account dropdown-->\n");
      out.write("\n");
      out.write("            <ul class=\"mdl-menu mdl-list mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect mdl-shadow--2dp account-dropdown\" for=\"icon\" style=\"width: 245px;\">\n");
      out.write("\t\t\t\t\n");
      out.write("              <li class=\"mdl-list__item mdl-list__item--two-line\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <span class=\"material-icons mdl-list__item-avatar\" style=\"margin: \"100px 16px 0 0;\"></span>\n");
      out.write("                        <span>");
      out.print( session.getAttribute("firstname").toString() );
      out.write(" </span>\n");
      out.write("                        <span class=\"mdl-list__item-sub-title\">");
      out.print( session.getAttribute("role").toString() );
      out.write(" </span>\t\n");
      out.write("                    </span>\n");
      out.write("\n");
      out.write("              </li>\n");
      out.write("\n");
      out.write("                <li class=\"list__item--border-top\"></li>\n");
      out.write("<!--\t\t\t\tMy Account-->\n");
      out.write("                <li class=\"mdl-menu__item mdl-list__item\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <i class=\"material-icons mdl-list__item-icon\">account_circle</i>\n");
      out.write("                        My account\n");
      out.write("                    </span>\n");
      out.write("                </li>\n");
      out.write("<!--\t\t\t\tMy Tasks-->\n");
      out.write("              <li class=\"mdl-menu__item mdl-list__item\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <i class=\"material-icons mdl-list__item-icon\">check_box</i>\n");
      out.write("                        My tasks\n");
      out.write("                    </span>\n");
      out.write("              </li>\n");
      out.write("<!--\t\t\t\tMy Event-->\n");
      out.write("              <li class=\"mdl-menu__item mdl-list__item\">\n");
      out.write("                    <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                        <i class=\"material-icons mdl-list__item-icon\">perm_contact_calendar</i>\n");
      out.write("                        My events\n");
      out.write("                    </span>\n");
      out.write("              </li>\n");
      out.write("\n");
      out.write("                <li class=\"list__item--border-top\"></li>\n");
      out.write("\t\t\t\t<hr>\n");
      out.write("<!--\t\t\t\tSettings & Logout-->\n");
      out.write("\t\t\t\t<a href=\"#\" style=\"text-decoration: none;\">\n");
      out.write("                  <li class=\"mdl-menu__item mdl-list__item\">\n");
      out.write("                      <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                          <i class=\"material-icons mdl-list__item-icon\">settings</i>\n");
      out.write("                          Settings\n");
      out.write("                      </span>\n");
      out.write("                  </li>\n");
      out.write("\t\t\t\t</a>\n");
      out.write("<!--\t\t\t\tLog out-->\n");
      out.write("                <a href=\"logout.jsp\" style=\"text-decoration: none;\">\n");
      out.write("                    <li class=\"mdl-menu__item mdl-list__item\">\n");
      out.write("                        <span class=\"mdl-list__item-primary-content\">\n");
      out.write("                            <i class=\"material-icons mdl-list__item-icon text-color--secondary\">exit_to_app</i>\n");
      out.write("                            Log out\n");
      out.write("                        </span>\n");
      out.write("                    </li>\n");
      out.write("                </a>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  <div class=\"mdl-layout__drawer\" style=\"border-right: none;\">\n");
      out.write("\t\t\n");
      out.write("        <header style=\"margin-bottom: 80px;\"><img src=\"images/logo_text.svg\" width=\"60%;\"/></header>\n");
      out.write("        <div class=\"scroll__wrapper\" id=\"scroll__wrapper\">\n");
      out.write("            <div>\n");
      out.write("                <div class=\"scroll__container\" id=\"scroll__container\">\n");
      out.write("                    <nav class=\"mdl-navigation\">\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                        <a class=\"mdl-navigation__link mdl-navigation__link--current\" href=\"admin_dash\">\n");
      out.write("                            <i class=\"material-icons\" role=\"presentation\">dashboard</i>\n");
      out.write("                            <span id=\"dash\">Dashboard</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"mdl-tooltip\" for=\"dash\">\n");
      out.write("\t\t\t\t\t\t\t\tVisit Dashboard\n");
      out.write("                            </span>\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                        <a class=\"mdl-navigation__link\" href=\"admin_reg_users.jsp\">\n");
      out.write("                            <i class=\"material-icons\">person</i>\n");
      out.write("                            <span id=\"report\">View Users</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"mdl-tooltip\" for=\"report\">\n");
      out.write("\t\t\t\t\t\t\t\tView Registered Users\n");
      out.write("                            </span>\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                        <a class=\"mdl-navigation__link\" href=\"admin_view_issue.jsp\">\n");
      out.write("                        <i class=\"material-icons\" role=\"presentation\">developer_board</i>\n");
      out.write("\t\t\t\t\t\t\t<span id=\"account\">View Project Issue</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"mdl-tooltip\" for=\"account\">\n");
      out.write("\t\t\t\t\t\t\t\tProject Issue Reports\n");
      out.write("                            </span>\n");
      out.write("                      </a>\n");
      out.write("                        <br>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t<br>\n");
      out.write("                                                <br>\n");
      out.write("                                                <br>\n");
      out.write("                                                <br>\n");
      out.write("                                                <br>\n");
      out.write("                                                <br>\n");
      out.write("                                                <br>\n");
      out.write("                                                <br>\n");
      out.write("                                                <br>\n");
      out.write("                      <div class=\"mdl-layout-spacer\"></div>\n");
      out.write("                      <a style=\"margin:0 0 2px 0;\" class=\"mdl-navigation__link\" href=\"index.html\">\n");
      out.write("                      <i class=\"material-icons\" role=\"presentation\">home</i>\n");
      out.write("                            Go Home\n");
      out.write("                      </a>\n");
      out.write("\n");
      out.write("                    </nav>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("            <div class=\"scroller__bar\" id=\"scroller__bar\"></div>\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<main class=\"mdl-layout__content\">\n");
      out.write("            <div class=\"mdl-card mdl-shadow--2dp\" action=\"#\" style=\"width: 1200px; height:auto; left: 280px; top: 10%; position: fixed;\">\n");
      out.write("\n");
      out.write("                <div class=\"mdl-card__title\" style=\"background-color: #333333; color: white; height: 70px;\">\n");
      out.write("                    <h4>Website Overview</h4>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"mdl-card__supporting-text\" style=\"background-color: #4D4D4D; width: auto; color: white;\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("                    <form action=\"#\" class=\"form\">\n");
      out.write("                ");

                                try {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                                    String Query = "SELECT COUNT(user_role) FROM login_cred WHERE `user_role` = 'Admin'";
                                    String Query2 = "SELECT COUNT(user_role) FROM login_cred WHERE `user_role` = 'User' or `user_role` = 'Manager'";
                                    String Query3 = "SELECT COUNT(title) FROM projects";
                                    PreparedStatement pm = conn.prepareStatement(Query);
                                    PreparedStatement pm2 = conn.prepareStatement(Query2);
                                    PreparedStatement pm3 = conn.prepareStatement(Query3);
                                    ResultSet rs = pm.executeQuery();
                                    ResultSet rs2 = pm2.executeQuery();
                                    ResultSet rs3 = pm3.executeQuery();
                
                                    while(rs.next()) {
                
      out.write("\n");
      out.write("                       <div class=\"mdl-grid\">\n");
      out.write("\t\t\t<div class=\"mdl-cell mdl-cell--3-col\">\n");
      out.write("                            <a class=\"mdl-navigation__link mdl-navigation__link--current\" href=\"admin_reg_users.jsp\">\n");
      out.write("                                   <div class=\"well dash-box\" style=\"color: black;\" align=\"center\">\n");
      out.write("                                      <div style=\"top: 50%;\">\n");
      out.write("                                          <h4><i class=\"material-icons\" role=\"presentation\" style=\"width: 40%; font-size:60px;\">person</i>");
      out.print( rs.getString("COUNT(user_role)"));
      out.write("</h4>\n");
      out.write("                                      <h4>Admin(s)</h4>\n");
      out.write("                                      </div>\n");
      out.write("                                    </div>\n");
      out.write("                            </a>\n");
      out.write("\t\t\t</div>\n");
      out.write("                ");

                            }

                            while(rs2.next()){                        
                
      out.write("\n");
      out.write("\t\t\t\t\t\t   \n");
      out.write("\t\t\t<div class=\"mdl-cell mdl-cell--3-col\">\n");
      out.write("                            <a class=\"mdl-navigation__link mdl-navigation__link--current\" href=\"admin_reg_users.jsp\">\n");
      out.write("                                   <div class=\"well dash-box\" style=\"color: black;\" align=\"center\">\n");
      out.write("                                      <div style=\"top: 50%;\">\n");
      out.write("                                          <h4><i class=\"material-icons\" role=\"presentation\" style=\"width: 40%; font-size:60px;\">people_alt</i>");
      out.print( rs2.getString("COUNT(user_role)"));
      out.write("</h4>\n");
      out.write("                                      <h4>Users</h4>\n");
      out.write("                                      </div>\n");
      out.write("                                    </div>\n");
      out.write("                            </a>\n");
      out.write("\t\t\t</div>\n");
      out.write("                \n");
      out.write("                ");

                            }

                            while(rs3.next()){                        
                
      out.write("\n");
      out.write("                \n");
      out.write("\t\t\t\t\t\t   \n");
      out.write("\t\t\t<div class=\"mdl-cell mdl-cell--3-col\">\n");
      out.write("                            <a class=\"mdl-navigation__link mdl-navigation__link--current\" href=\"admin_view_issue.jsp\">\n");
      out.write("                                   <div class=\"well dash-box\" style=\"color: black;\" align=\"center\">\n");
      out.write("                                      <div style=\"top: 50%;\">\n");
      out.write("                                          <h4><i class=\"material-icons\" role=\"presentation\" style=\"width: 40%; font-size:60px;\">file_copy</i>");
      out.print( rs3.getString("COUNT(title)"));
      out.write("</h4>\n");
      out.write("                                      <h4>Projects</h4>\n");
      out.write("                                      </div>\n");
      out.write("                                    </div>\n");
      out.write("                            </a>\n");
      out.write("\t\t\t</div>\n");
      out.write("                ");

                            }                       
                
      out.write("\n");
      out.write("\t\t\t\t\t\t   \n");
      out.write("\t\t\t<div class=\"mdl-cell mdl-cell--3-col\">\n");
      out.write("                            <a class=\"mdl-navigation__link mdl-navigation__link--current\" href=\"#\">\n");
      out.write("                                   <div class=\"well dash-box\" style=\"color: black;\" align=\"center\">\n");
      out.write("                                      <div style=\"top: 50%;\">\n");
      out.write("                                          <h4><i class=\"material-icons\" role=\"presentation\" style=\"width: 40%; font-size:60px;\">trending_up</i>246</h4>\n");
      out.write("                                      <h4>Visitors</h4>\n");
      out.write("                                      </div>\n");
      out.write("                                    </div>\n");
      out.write("                            </a>\n");
      out.write("\t\t\t</div>\t\t   \n");
      out.write("\t\t\t");

                    } catch (Exception e){
                    out.println("Error: "+e.getMessage());
                    }
                    
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\t\n");
      out.write("\t<div class=\"mdl-card mdl-shadow--2dp\" action=\"#\" style=\"width: 1200px; height:auto; left: 280px; top: 53.5%; position: fixed;\">\n");
      out.write("\n");
      out.write("                <div class=\"mdl-card__title\" style=\"background-color: #333333; color: white; height: 70px;\">\n");
      out.write("                    <h4>Latest Users</h4>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"mdl-card__supporting-text\" style=\"background-color: #4D4D4D; width: auto; color: white;\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("                    <form action=\"#\" class=\"form\">\n");
      out.write("                         <table class=\"mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp projects-table\">\n");
      out.write("\n");
      out.write("                        <thead>\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("\n");
      out.write("                            <th class=\"mdl-data-table__cell--non-numeric\">First Name</th>\n");
      out.write("\n");
      out.write("                            <th class=\"mdl-data-table__cell--non-numeric\">Last Name</th>\n");
      out.write("\n");
      out.write("                            <th class=\"mdl-data-table__cell--non-numeric\">User ID</th>\n");
      out.write("\n");
      out.write("                            <th class=\"mdl-data-table__cell--non-numeric\">Role</th>\n");
      out.write("\n");
      out.write("                            <th class=\"mdl-data-table__cell--non-numeric\">Joined</th>\n");
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                        </thead>\n");
      out.write("\n");
      out.write("                        <tbody>\n");
      out.write("                            ");

                                try {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                                    String Query = "SELECT * FROM login_cred LIMIT 0,4 ";
                                    PreparedStatement pm = conn.prepareStatement(Query);
                                    ResultSet rs = pm.executeQuery();
                
                                    while(rs.next()) {
                            
      out.write("\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("\n");
      out.write("                            <td class=\"mdl-data-table__cell--non-numeric\">");
      out.print( rs.getString("firstname"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                            <td class=\"mdl-data-table__cell--non-numeric\">");
      out.print( rs.getString("lastname"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                            <td class=\"mdl-data-table__cell--non-numeric\">");
      out.print( rs.getString("user_id"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                            <td class=\"mdl-data-table__cell--non-numeric\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"label label--mini background-color--primary\">");
      out.print( rs.getString("user_role"));
      out.write("</span>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\n");
      out.write("                            <td class=\"mdl-data-table__cell--non-numeric\">1 Jan, 2019</td>\n");
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                            }
                            rs.close();
                            conn.close();  
                        } catch (Exception e) {
                            out.println("Error: "+ e.getMessage());
}
                        
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                        </tbody>\n");
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\t\n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
