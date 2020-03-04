<%-- 
    Document   : user_issuesearch
    Created on : Dec 28, 2019, 11:59:51 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
        <link href="mdl/material.css" rel="stylesheet" type="text/css">
        <link href="mdl/searchbox.css" rel="stylesheet" type="text/css">
        <link href="mdl/application.min.css" rel="stylesheet" type="text/css">
        <script src="mdl/material.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="mdl/getmdl-select.min.css">
        <script defer src="mdl/getmdl-select.min.js"></script>
        <link rel="stylesheet" href="mdl/getmdl-select.min.css" type="text/css">
    </head>
    
            <body background="../images/right--.jpg" style="background-size: cover;">

<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header is-small-screen">

    <header class="mdl-layout__header" style="background-color: #424242 !important;">
        <div class="mdl-layout__header-row">
            <div class="mdl-layout-spacer"></div>
<!--            Expandable Search Button-->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                <label class="mdl-button mdl-js-button mdl-button--icon" for="search">
                    <i class="material-icons">search</i>
                </label>
<!--				Search Button Textfield-->
                <div class="mdl-textfield__expandable-holder">
                    <input class="mdl-textfield__input" type="text" id="search"/>
                    <label class="mdl-textfield__label" for="search">Enter your query...</label>
                </div>
            </div>


<!--			Notification button-->
            <div class="material-icons mdl-badge mdl-badge--overlap" id="notification"
                 data-badge="23">
				<i class="material-icons">notifications_none</i>
            </div>
<!-- 			Notifications dropdown List-->
            <ul class="mdl-menu mdl-list mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right mdl-shadow--2dp notifications-dropdown"
                for="notification">
<!--				Notification Header-->
                <li class="mdl-list__item">
                    You have 23 new notifications!
                </li>
				<hr>
<!--			Notification List-->
				
<!--				Notification1-->
                <li class="mdl-menu__item mdl-list__item list__item--border-top">
                    <span class="mdl-list__item-primary-content mdl-">
                        <span class="mdl-list__item-avatar background-color--primary" style="align-content: center;">
                            <i class="material-icons mdl-list__item-avatar">plus_one</i>
                        </span>
						
                        <span>You have 3 new orders.</span>
                    </span>
                </li>
<!--				Notification2-->
                <li class="mdl-menu__item mdl-list__item list__item--border-top">
                    <span class="mdl-list__item-primary-content">
                        <span class="mdl-list__item-avatar background-color--secondary">
                            <i class="material-icons mdl-list__item-avatar">error_outline</i>
                        </span>
                      <span>Database error</span>
                    </span>
                </li>
<!--				Notification3-->
                <li class="mdl-menu__item mdl-list__item list__item--border-top">
                    <span class="mdl-list__item-primary-content">
                        <span class="mdl-list__item-avatar background-color--primary">
                            <i class="material-icons mdl-list__item-avatar">new_releases</i>
                        </span>
                      <span>The Death Star is built!</span>
                    </span>
                </li>
<!--				Notification4-->
                <li class="mdl-menu__item mdl-list__item list__item--border-top">
                    <span class="mdl-list__item-primary-content">
                        <span class="mdl-list__item-avatar background-color--primary">
                            <i class="material-icons mdl-list__item-avatar">mail_outline</i>
                        </span>
                      <span>You have 4 new mails.</span>
                    </span>
                </li>
<!--				All Notification Button-->
                <li class="mdl-list__item list__item--border-top">
                    <button href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">ALL NOTIFICATIONS</button>
                </li>
            </ul>

<!--			Messages Button-->
            <div class="material-icons mdl-badge mdl-badge--overlap" id="inbox" data-badge="4">
                mail_outline
            </div>

            <!-- Messages dropdown-->
            <ul class="mdl-menu mdl-list mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right mdl-shadow--2dp messages-dropdown" for="inbox" style="width: 245px;">
                <li class="mdl-list__item">
                    You have 4 new messages!
                </li>

                <li class="mdl-menu__item mdl-list__item mdl-list__item--two-line list__item--border-top">
                    <span class="mdl-list__item-primary-content">
                        <span class="mdl-list__item-avatar background-color--primary" align="center">
                            <text>A</text>
                        </span>
                        <span>Alice</span>
                        <span class="mdl-list__item-sub-title">Birthday Party</span>
                    </span>

                </li>
				
                <li class="mdl-menu__item mdl-list__item mdl-list__item--two-line list__item--border-top">
                    <span class="mdl-list__item-primary-content">
                        <span class="mdl-list__item-avatar background-color--baby-blue">
                            <text>M</text>
                        </span>
                        <span>Mike</span>
                        <span class="mdl-list__item-sub-title">No theme</span>
                    </span>
				</li>

                <li class="mdl-menu__item mdl-list__item mdl-list__item--two-line list__item--border-top">
                    <span class="mdl-list__item-primary-content">
                        <span class="mdl-list__item-avatar background-color--cerulean ">
                            <text>D</text>
                        </span>
                        <span>Darth</span>
                        <span class="mdl-list__item-sub-title">Suggestion</span>
                    </span>
                </li>

                <li class="mdl-menu__item mdl-list__item mdl-list__item--two-line list__item--border-top">
                    <span class="mdl-list__item-primary-content">
                        <span class="mdl-list__item-avatar background-color--mint">
                            <text>D</text>
                        </span>
                        <span>Don McDuket</span>
                        <span class="mdl-list__item-sub-title">NEWS</span>
                    </span>
                </li>
				
                <li class="mdl-list__item list__item--border-top">
                    <button href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">SHOW ALL MESSAGES</button>
                </li>
            </ul>


<!--			UserAccout Details-->
            <div class="avatar-dropdown" id="icon">
                <span><%= session.getAttribute("firstname").toString() %> </span>
                <img src="images/Icon_header.png">
            </div>
            <!-- Account dropdown-->

            <ul class="mdl-menu mdl-list mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect mdl-shadow--2dp account-dropdown" for="icon" style="width: 245px;">
				
              <li class="mdl-list__item mdl-list__item--two-line">
                    <span class="mdl-list__item-primary-content">
                        <span class="material-icons mdl-list__item-avatar" style="margin: "100px 16px 0 0;"></span>
                        <span><%= session.getAttribute("firstname").toString() %> </span>
                        <span class="mdl-list__item-sub-title"><%= session.getAttribute("role").toString() %> </span>	
                    </span>

              </li>

                <li class="list__item--border-top"></li>
<!--				My Account-->
                <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">account_circle</i>
                        My account
                    </span>
                </li>
<!--				My Tasks-->
              <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">check_box</i>
                        My tasks
                    </span>
              </li>
<!--				My Event-->
              <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">perm_contact_calendar</i>
                        My events
                    </span>
              </li>

                <li class="list__item--border-top"></li>
				<hr>
<!--				Settings & Logout-->
				<a href="#" style="text-decoration: none;">
                  <li class="mdl-menu__item mdl-list__item">
                      <span class="mdl-list__item-primary-content">
                          <i class="material-icons mdl-list__item-icon">settings</i>
                          Settings
                      </span>
                  </li>
				</a>
<!--				Log out-->
                <a style="text-decoration: none;" href="logout.jsp">
                    <li class="mdl-menu__item mdl-list__item">
                        <span class="mdl-list__item-primary-content">
                            <i class="material-icons mdl-list__item-icon text-color--secondary">exit_to_app</i>
                            Log out
                        </span>
                    </li>
                </a>
            </ul>
        </div>
    </header>



  <div class="mdl-layout__drawer" style="border-right: none;">
		
        <header style="margin-bottom: 80px;"><img src="images/logo_text.svg" width="60%;"/></header>
        <div class="scroll__wrapper" id="scroll__wrapper">
            <div>
                <div class="scroll__container" id="scroll__container">
                    <nav class="mdl-navigation">
						
                        <a class="mdl-navigation__link" href="user_dash.jsp">
                            <i class="material-icons" role="presentation">dashboard</i>
                            <span id="dash">Dashboard</span>
							<span class="mdl-tooltip" for="dash">
								Visit Dashboard
                            </span>
                        </a>

                        <a class="mdl-navigation__link mdl-navigation__link--current" href="user_issuesearch.jsp">
                            <i class="material-icons">person</i>
                            <span id="report">Project Issues</span>
							<span class="mdl-tooltip" for="report">
								Search Project Issue
                            </span>
                        </a>

						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                      <div class="mdl-layout-spacer"></div>
                      <a style="margin:0 0 2px 0;" class="mdl-navigation__link" href="index.html">
                      <i class="material-icons" role="presentation">home</i>
                            Go Home
                      </a>

                    </nav>

                </div>
          </div>

            <div class="scroller__bar" id="scroller__bar"></div>
      </div>
  </div>



                    <main class="mdl-layout__content" style="background-size: cover; background: linear-gradient(rgba(0,0,0,.4), rgba(0,0, 0, .4)), url(images/001.jpg) center top no-repeat;">
	
  <div class="mdl-grid project--max-width">
<!--	  Beginning:  Surrounding container for project card-->

                <div class="mdl-cell mdl-cell--11-col-desktop"></div>

                <div class="mdl-cell mdl-cell--11-col-desktop">
                        <div class="mdl-card__title" style="background-color: #333333; color: white; justify-content: center; align-items: center;">
                               <form action="" method="get">
                                <div class="search_box"> <!-- style="width: 500px;" -->
<!--                                  <input class="mdl-textfield__input" type="text" placeholder="What issue are you searching for?">-->
                                  <input type="text" name="squery" placeholder="What issue are you searching for?">
                                  <button type="submit" style="position: absolute;top: 50%; transform: translateY(-50%); right: 12px; font-size: 25px;" class="mdl-button mdl-js-button mdl-button--icon">
                                  <i class="material-icons" role="presentation" >search</i>
                                  </button>
                                </div>
                                   
                              </form>
                        </div>
                </div>

    <div class="mdl-cell mdl-cell--11-col-desktop">
    
          <form action="">
        
              <div class="mdl-cell mdl-cell--11-col-desktop mdl-cell--12-col-tablet mdl-cell--4-col-phone ">

                    <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp projects-table">

                        <thead>

                        <tr>

                            <th class="mdl-data-table__cell--non-numeric">Project ID</th>

                            <th class="mdl-data-table__cell--non-numeric">Project Title</th>
                            
                            <th class="mdl-data-table__cell--non-numeric">Project Location</th>

                            <th class="mdl-data-table__cell--non-numeric">Challenge Theme</th>
                            
                            <th class="mdl-data-table__cell--non-numeric">Challenge Description</th>
                            
                            <th class="mdl-data-table__cell--non-numeric">Action</th>
                        </tr>

                        </thead>

                        <tbody>
                            <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                                    String Query2 = request.getParameter("squery");
                                    String Query;
                                    if (Query2 != null){
                                        Query = "SELECT * FROM projects WHERE ch_theme like '%"+Query2+"%' or ch_descr like '%"+Query2+"%' or location like '%"+Query2+"%' or title like '%"+Query2+"%' or proj_id like '%"+Query2+"%' ";
                                    } else {
                                        Query = "SELECT * FROM projects WHERE ch_check ='Yes'";
                                    }
                                    PreparedStatement pm = conn.prepareStatement(Query);
                                    ResultSet rs = pm.executeQuery();
                
                                    while(rs.next()) {
                            %>
                        <tr>

                            <td class="mdl-data-table__cell--non-numeric"><%= rs.getString("proj_id")%></td>

                            <td class="mdl-data-table__cell--non-numeric"><%= rs.getString("title")%></td>
                            
                            <td class="mdl-data-table__cell--non-numeric"><%= rs.getString("location")%></td>

                            <td class="mdl-data-table__cell--non-numeric"><%= rs.getString("ch_theme")%></td>
                            
                            <td class="mdl-data-table__cell--non-numeric"><%= rs.getString("ch_descr")%></td>
                            
                            <td class="mdl-data-table__cell--non-numeric">
                                <a href="user_viewdetailedsearch.jsp?u=<%= rs.getString("proj_id")%>" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect button--colored-orange" style="margin: 0 2px 0 0;">
                                        <i class="material-icons">pageview</i>View</a>
                            </td>

                        </tr>
                        <%
                            }
                            rs.close();
                            conn.close();  
                        } catch (Exception e) {
                            out.println("Error: "+ e.getMessage());
}
                        %>
                        </tbody>

                    </table>

                </div>
		 
            
        </form>
    </div>
<!--	  End: Close of each project card-->

  </div>

</main>


</body>
</html>
