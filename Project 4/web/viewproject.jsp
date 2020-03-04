<%-- 
    Document   : searchpage
    Created on : Dec 19, 2019, 3:04:09 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projects</title>
        <link href="mdl/material.css" rel="stylesheet" type="text/css">
        <link href="mdl/viewproject.css" rel="stylesheet" type="text/css">
        <script src="mdl/material.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="mdl/getmdl-select.min.css">
        <link rel="stylesheet" href="mdl/viewproject-details.css" type="text/css">
        <script defer src="mdl/getmdl-select.min.js"></script>
        <script defer src="mdl/jquery-3.3.1.min.js"></script>
        <link rel="stylesheet" href="mdl/getmdl-select.min.css" type="text/css">
        <script src="mdl/jquery.mCustomScrollbar.concat.min.js" type="text/javascript"></script>
        <script>
            var element = document.getElementById("p.proj");
            var numb = Math.floor(Math.random() * 2);  
            
            if(numb.equals(1)){
                element.classList.add("alt");
            }
            function openNav() {
              document.getElementById("myNav").style.width = "84.5%";
            }

            function closeNav() {
              document.getElementById("myNav").style.width = "0%";
            }
            </script>
    </head>
    
    
    
    
<body style="background-color:#1a2035;">

<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header is-small-screen">

    <header class="mdl-layout__header">
        <div class="mdl-layout__header-row">
            <div class="mdl-layout-spacer"></div>
<!--            Expandable Search Button-->
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable" style="margin: 0 25px 0 0;">
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
                 data-badge="23" style="margin: 0 25px 0 0;">
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
            <div class="material-icons mdl-badge mdl-badge--overlap" id="inbox" data-badge="4" style="margin: 0 25px 0 0;">
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
            <div class="avatar-dropdown" id="icon" style="margin: 0 15px 0 0;">
                <span class="mdl-chip mdl-chip--contact">
                    <span class="mdl-chip__contact mdl-color--teal mdl-color-text--white"><%= session.getAttribute("firstname").toString().charAt(0) %></span>
                    <span class="mdl-chip__text"><%= session.getAttribute("firstname").toString() %></span>
                </span>
            </div>
            <!-- Account dropdawn-->

            <ul class="mdl-menu mdl-list mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect mdl-shadow--2dp account-dropdown" for="icon" style="width: 245px;">
				
              <li class="mdl-list__item mdl-list__item--two-line">
                    <span class="mdl-list__item-primary-content">
                        <span class="material-icons mdl-list__item-avatar" style="margin: "100px 16px 0 0";"></span>
                        <span>Bolaji</span>
                        <span class="mdl-list__item-sub-title">Manager</span>	
                    </span>

              </li>

                <li class="list__item--border-top"></li>
<!--				My Account-->
                <a href="acc_update.jsp" style="text-decoration:none;">
                <li class="mdl-menu__item mdl-list__item">
                    <span class="mdl-list__item-primary-content">
                        <i class="material-icons mdl-list__item-icon">account_circle</i>
                        My account
                    </span>
                </li>
                </a>
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
                <a href="logout.jsp" style="text-decoration: none;">
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
            <div class="scroller" id="scroller">
                <div class="scroll__container" id="scroll__container">
                    <nav class="mdl-navigation">
						
                        <a class="mdl-navigation__link" href="manager_dash.jsp">
                            <i class="material-icons" role="presentation">dashboard</i>
                            <span id="dash">Dashboard</span>
							<span class="mdl-tooltip" for="dash">
								Visit Dashboard
                            </span>
                        </a>

                        <a class="mdl-navigation__link" href="acc_update.jsp">
                            <i class="material-icons">developer_board</i>
                            <span id="report">Add Project</span>
							<span class="mdl-tooltip" for="report">
								Add New Project
                            </span>
                        </a>

                        <a class="mdl-navigation__link" href="acc_update.jsp">
                        <i class="material-icons" role="presentation">person</i>
							<span id="account">User Profile</span>
							<span class="mdl-tooltip" for="account">
								Update Account Details
                            </span>
                      </a>

                        <a class="mdl-navigation__link mdl-navigation__link--current" href="viewproject.jsp">
                        <i class="material-icons" role="presentation">map</i>
                                        <span id="vreports">View Projects</span>
                                        <span class="mdl-tooltip" for="vreports">
								View All Projects
                            </span>
                      </a>

                        <a class="mdl-navigation__link" style="color: red !important;" href="logout.jsp">
                        <i class="material-icons" role="presentation">exit_to_app</i>
                            <span id="analysis"> Log Out</span>
							<span class="mdl-tooltip" for="analysis">
								Logout from <%= session.getAttribute("id").toString() %>
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



<main class="mdl-layout__content">
	
<!-- Simple Select with arrow -->
<!--    <div class="mdl-textfield mdl-js-textfield getmdl-select" style="color:white;">
        <input type="text" value="" name="search" onchange="this.form.submit();" class="mdl-textfield__input" id="sample2" readonly>
        <input type="hidden" value="" name="sample2">
        <i class="mdl-icon-toggle__label material-icons" style="color:white;">keyboard_arrow_down</i>
        <label for="sample2" class="mdl-textfield__label">Select</label>
        <ul for="sample2" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
            <%--
            
            try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                    String Query = "SELECT DISTINCT * FROM projects WHERE ch_check ='Yes' ";
                    PreparedStatement pm = conn.prepareStatement(Query);
                    ResultSet rs = pm.executeQuery();
                    
                    while(rs.next()) {
                        %>
                        <li class="mdl-menu__item" value="<%= rs.getString("ch_theme")%>"><%= rs.getString("ch_theme")%></li>
                        <%
                    }
                    conn.close();
                    rs.close();
            } catch (Exception e){
                out.println("Error message: "+e.getMessage());
            }
            
            
            --%>
        </ul>
    </div>                                 -->
	
  <div class="mdl-grid project--max-width">
<!--	  Beginning:  Surrounding container for project card-->
    <% 
    try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project_4", "root", "");
                String Query = "SELECT * FROM projects WHERE ch_check ='Yes'";
                PreparedStatement pm = conn.prepareStatement(Query);
                ResultSet rs = pm.executeQuery();
                
                while(rs.next()) {
                    %>

      <form action="viewproject.jsp" method="POST">
          
<div class="blog-card" id="p.proj">
    <div class="meta">
      <div class="photo" style="background-image: url('images/4.jpg')"></div>
      <ul class="details">
          <li class="author" style="font-size: 20px;">Manager: <a href="#" style="text-decoration: none;"><%= rs.getString("manger")%></a></li>
        <li class="date" style="font-size: 18px;">Location: <%= rs.getString("location")%></li>
        <li class="tags">
          <ul>
              <li>Project: <a href="#" style="text-decoration: none;"><%= rs.getString("status")%></a></li>
        </li>
      </ul>
    </div>
    <div class="description">
        <div class="watermark" readonly><%= rs.getString("proj_id")%></div>
      <h1><%= rs.getString("title")%></h1>
      <h2><%= rs.getString("proj_descr")%></h2>
      <p style="font-size: 1rem; font-weight: 300; text-transform: uppercase; color: #a2a2a2; margin-bottom: 2px;">Challenge Description</p>
      <p><%= rs.getString("ch_descr").toString().substring(0) + "..." %></p>
      <p class="read-more">
        <a href="#" onClick="openNav()">Read More</a>
      </p>
    </div>
  </div>
      
      <div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
    <div class="right-cont" align="center">
	  <img class="logo" src="images/logo.svg"/>
		<div class="c-details">
                    <p>Project ID: <%= rs.getString("proj_id") %></p>
	  </div>
		   </div>
	  
	<div class="proj-content">
	  <div class="mdl-grid">
		
		  <div class="mdl-cell--12-col">
		  <h1><%= rs.getString("title")%></h1>
	    </div>
        <div class="mdl-cell--10-col">
            <h3><%= rs.getString("proj_descr")%></h3>
          </div>
		<div class="mdl-cell--2-col">
            <h3><%= rs.getString("location")%></h3>
          </div>
		<div class="mdl-cell--6-col"><h3><%= rs.getString("manger")%></h3></div>
        <div class="mdl-cell--3-col"><h3>Status: <%= rs.getString("status")%></h3></div>
        <div class="mdl-cell--3-col"><%= rs.getString("phone_num")%></h3></div>
		  
		<div class="mdl-cell--12-col green-bar" style="margin-top: 10px;">
			<p>Challenge description</p>
			<p style="margin-bottom: 30px;"><%= rs.getString("ch_descr")%></p>
		  </div>
		  <br>
		  <br>
		  <br>
		  <br>
		  <br>
		  <br>
		<div class="mdl-cell--6-col">
			Challenge solution
			<p><%= rs.getString("ch_solution")%></p>
		  </div>
		<div class="mdl-cell--6-col">
			Challenge Resources
			<p><%= rs.getString("ch_resource")%></p>
		  </div>
      </div>
	  </div>
  </div>
</div>
        </form>
                    <%
                }
                rs.close();
                conn.close();   
    } catch(Exception e) {
        out.println("Error Message: "+e.getMessage());
    }   

    %>

<!--	  End: Close of each project card-->

  </div>

</main>


</body>
</html>
