<%-- 
    Document   : acc_update
    Created on : Dec 12, 2019, 10:35:56 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile: <%= session.getAttribute("firstname").toString() %> </title>
        <link href="mdl/material.css" rel="stylesheet" type="text/css">
        <script src="mdl/material.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="mdl/getmdl-select.min.css">
        <script defer src="mdl/getmdl-select.min.js"></script>
        <link rel="stylesheet" href="mdl/getmdl-select.min.css" type="text/css">
        <script src="mdl/jquery.mCustomScrollbar.concat.min.js" type="text/javascript"></script>
	
	<style> 
         .graybox {
            background-color:#ddd;
         }
		.wide-card.mdl-card {
            width: auto;
			         }
      </style>
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
                        <span class="material-icons mdl-list__item-avatar" style="margin: 100px 16px 0 0;"></span>
                        <span><%= session.getAttribute("firstname").toString() %> </span>
                        <span class="mdl-list__item-sub-title"><%= session.getAttribute("role").toString() %> </span>	
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

                        <a class="mdl-navigation__link" href="add_project.jsp">
                            <i class="material-icons">developer_board</i>
                            <span id="report">Report</span>
							<span class="mdl-tooltip" for="report">
								Add New Report
                            </span>
                        </a>

                        <a class="mdl-navigation__link mdl-navigation__link--current" href="acc_update.jsp">
                        <i class="material-icons" role="presentation">person</i>
							<span id="account">User Profile</span>
							<span class="mdl-tooltip" for="account">
								Update Profile Details
                            </span>
                      </a>

                        <a class="mdl-navigation__link" href="viewproject.jsp">
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
            <div class="mdl-card mdl-shadow--2dp" action="#" style="width: 900px; height:auto; left: 15%; position: relative;">

                <div class="mdl-card__title" style="background-color: #2E395E; color: white;">
                    <h4>Update Your Account Details</h4>
                </div>


                  

                <div class="mdl-card__supporting-text" style="background-color: #202940; width: 900px; color: white;">
					
                    <form action="${pageContext.request.contextPath}/acct_update" method="post" class="form">
                        <div class="form__article">
                            <h4 style="margin: 0 0 0 40px;">Personal data</h4>



                            <div class="mdl-grid" style="margin:0 0 0 40px;">

                                <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                    <input class="mdl-textfield__input" type="text" id="firstName" value="<%= session.getAttribute("firstname").toString() %> "/>

                                    <label class="mdl-textfield__label" for="firstName" style="color: white;">First name</label>

                                </div>



                                <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                    <input class="mdl-textfield__input" type="text" id="secondName" value="<%= session.getAttribute("lastname").toString() %> "/>

                                    <label class="mdl-textfield__label" for="secondName" style="color: white;">Last name</label>

                                </div>

                            </div>
							
							
                            <div class="mdl-grid" style="margin: 0 0 0 40px">
								
                                <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                    <input class="mdl-textfield__input" type="text" id="birthday" value="" name="birthday"/>
                                  <label class="mdl-textfield__label" for="birthday" style="color: white;">Birthday</label>
                                </div>



                                <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select">
                                    <input class="mdl-textfield__input" value="" type="text" id="gender" readonly tabIndex="-1"/>
                                    <input type="hidden" value="">
                                    <label for="gender" class="mdl-textfield__label" style="color: white;">Gender</label>
									  
                                    <ul for="gender" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                                        <li class="mdl-menu__item" value="Male" data-selected="true" name="gender">Male</li>
                                        <li class="mdl-menu__item" value="Female" name="gender">Female</li>
                                    </ul>
                                </div>
                            </div>

                        </div>



                        <div class="form__article">

                            <h4 style="margin: 0 0 0 40px;">Employment</h4>



                            <div class="mdl-grid" style="margin:0 0 0 50px;">   

                                <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                    <input class="mdl-textfield__input" type="text" value="SKYLINE constructions LLC" id="company" style="color: #D6D6D6; font-size: 20px;" disabled/>

                                    <label class="mdl-textfield__label" for="company" style="color: #D6D6D6; font-size: 14px;">Company</label>

                                </div>

                                <div class="mdl-cell mdl-cell--6-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                    <input class="mdl-textfield__input" type="text" id="company_email" value="<%= session.getAttribute("id").toString() %>" name="userid" style="color: #D6D6D6; font-size: 20px;" disabled/>

                                    <label class="mdl-textfield__label" for="company_email" style="color: #D6D6D6; font-size: 14px;">Company email</label>

                                </div>

                            </div>



                            <div class="mdl-grid" style="margin: 0 0 0 40px">

                                <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" value="<%= session.getAttribute("role").toString() %> " id="position"/>
                                    <label class="mdl-textfield__label" for="position" style="color: white;">Position</label>
                                </div>

                                
                                <div class="mdl-cell mdl-cell--6-col">
                                        <!--<span>Managerial Level:</span>-->
<!--							Level 1 Manager-->
                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="partition-fulltime">
                                            <input type="radio" id="partition-fulltime" class="mdl-radio__button" name="level" value="1" checked/>
                                            <span class="mdl-radio__label">Level 1</span>
                                        </label>
            <!--							Level 2 Manager-->
                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="partition-partTime">
                                            <input type="radio" id="partition-partTime" class="mdl-radio__button" name="level" value="2"/>
                                            <span class="mdl-radio__label">Level 2</span>
                                        </label>
            <!--							Level 3 Manager-->
                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="partition-remote">
                                            <input type="radio" id="partition-remote" class="mdl-radio__button" name="level" value="3"/>
                                            <span class="mdl-radio__label">Level 3</span>
                                        </label>

                                </div>  
                                    
                            </div>

                            

                        </div>



                        <div class="form__article employer-form__contacts">
                            <h4 style="margin: 25px 0 0 40px;">Contacts</h4>
<!--								Phone Number-->
                            <div class="mdl-grid" style="margin: 0 0 0 40px">
                                <div class="mdl-cell mdl-cell--6-col input-group">
                                    <i class="material-icons pull-left">call</i>
                                    <div class="mdl-textfield mdl-js-textfield pull-left">
                                        <input class="mdl-textfield__input" type="text" id="phone" maxlength="11" name="phone_num">
                                        <label class="mdl-textfield__label" for="phone" style="color: #D6D6D6;">XXXX-XXX-XXXX</label>
                                    </div>
                                </div>
<!--								PhoneNumber Category-->
                                <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield getmdl-select mdl-textfield--floating-label">
									<input type="text" value="" class="mdl-textfield__input" id="phone_category" style="width: auto;" readonly>
                                    <input type="hidden" value="" name="phone_category">
                                    <label for="phone_category" class="mdl-textfield__label" style="color: white;">Category</label>
                                    <ul for="phone_category" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                                        <li class="mdl-menu__item" data-val="Mobile" data-selected="true">Mobile</li>
                                        <li class="mdl-menu__item" data-val="Home">Home</li>
                                        <li class="mdl-menu__item" data-val="Work">Work</li>
                                    </ul>
                                </div>

                            </div>
							
<!--							Email-->
                            <div class="mdl-grid" style="margin: 0 0 0 40px">
                                <div class="mdl-cell mdl-cell--6-col input-group">
                                    <i class="material-icons pull-left">mail_outline</i>
                                    <div class="mdl-textfield mdl-js-textfield pull-left">
                                        <input class="mdl-textfield__input" type="text" id="email" value="lukeskywalker.com" name="person_ mail"/>
                                        <label class="mdl-textfield__label" for="email">Email</label>
                                    </div>
                                </div>
<!--							Email Category-->
                                <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield getmdl-select mdl-textfield--floating-label">
									<input type="text" value="" class="mdl-textfield__input" id="email_category" style="width: auto;" readonly>
                                    <input type="hidden" value="" name="email_category">
                                    <label for="email_category" class="mdl-textfield__label" style="color: white;">Category</label>
                                    <ul for="email_category" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                                        <li class="mdl-menu__item" data-val="Personal" data-selected="true">Personal</li>
                                        <li class="mdl-menu__item" data-val="Work">Work</li>
                                    </ul>
                                </div>
                            </div>


<!--							Address-->
                            <div class="mdl-grid" style="margin: 0 0 0 40px">

                                <div class="mdl-cell mdl-cell--6-col input-group">

                                    <i class="material-icons pull-left">place</i>
                                    <div class="mdl-textfield mdl-js-textfield pull-left">
                                        <input class="mdl-textfield__input" type="text" id="address" name="address"/>
                                        <label class="mdl-textfield__label" for="address">Address</label>
                                    </div>
                                </div>


<!--							Address Category-->
                                <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield getmdl-select mdl-textfield--floating-label">
									<input type="text" value="" class="mdl-textfield__input" id="address_category" style="width: auto;" readonly>
                                    <input type="hidden" value="" name="address_category">
                                    <label for="address_category" class="mdl-textfield__label" style="color: white;">Category</label>
                                    <ul for="address_category" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                                        <li class="mdl-menu__item" data-val="Home" data-selected="true">Home</li>
                                        <li class="mdl-menu__item" data-val="Work">Work</li>
                                    </ul>
                                </div>

                            </div>

                        </div>


<!--						General skills section-->
                      <div class="form__article employer-form__general_skills">
                        <h4 style="margin: 0 0 0 40px;">General skills</h4>



                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width: 700px; margin: 0 0 0 85px;">

                                <textarea class="mdl-textfield__input" type="text" rows="5" id="AboutMe" name="about"></textarea>

                                <label class="mdl-textfield__label" for="AboutMe" style="color: white;">About me</label>

                            </div>

                        </div>


                        <div class="form__action" style="margin: 30px 0 80px 15px;">

                            <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="isInfoReliable" style="width: 250px; margin:  0 0 0 430px;">
                                <input type="checkbox" id="isInfoReliable" class="mdl-checkbox__input" required/>
                                      <span class="mdl-checkbox__label">Entered information is reliable</span>
                            </label>

                            <button class="mdl-button mdl-js-button mdl-button--raised" style="color:#03DAC5;" type="submit" name="signin">Submit</button>

                        </div>

                    </form>

                </div>

            </div>

        </main>



</div>



<!-- inject:js -->

<!-- endinject -->



</body>
</html>
