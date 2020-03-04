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
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="mdl/application.min.css" rel="stylesheet" type="text/css">
        <script src="mdl/material.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="mdl/getmdl-select.min.css">
        <script defer src="mdl/getmdl-select.min.js"></script>
        <link rel="stylesheet" href="mdl/getmdl-select.min.css" type="text/css">
        <link rel="stylesheet" href="mdl/show_time.css" type="text/css">
        <script>
            
            // Document ready function
$(function() {
	
	// Time function to get the date/time
	function time() {
		
		// Create new date var and init other vars
		var date = new Date(),
			hours = date.getHours(), // Get the hours
			minutes = date.getMinutes().toString(), // Get minutes, convert to string
			ante, // Will be used for AM and PM later
			greeting, // Set the appropriate greeting for the time of day
			dd = date.getDate().toString(), // Get the current day
			userName = "<%= session.getAttribute("firstname").toString() %>"; // Can be used to insert a unique name

		/* Set the AM or PM according to the time, it is important to note that up
			to this point in the code this is a 24 clock */
		if (hours < 12) {
			ante = "AM";
			greeting = "Morning";
		} else if (hours === 12 && hours >= 3) {
			ante = "PM";
			greeting = "Afternoon"
		} else {
			ante = "PM";
			greeting = "Evening";
		}

		/* Since it is a 24 hour clock, 0 represents 12am, if that is the case
		then convert that to 12 */
		if (hours === 0) {
			hours = 12;
			
			/* For any other case where hours is not equal to twelve, let's use modulus
			to get the corresponding time equivilant */
		} else if (hours !== 12) {
			hours = hours % 12;
		}

		// Minutes can be in single digits, hence let's add a 0 when the length is less than two
		if (minutes.length < 2) {
			minutes = "0" + minutes;
		}

		// Let's do the same thing above here for the day
		if (dd.length < 2) {
			dd = "0" + dd;
		}

		// Months
		Date.prototype.monthNames = [
			"January",
			"February",
			"March",
			"April",
			"May",
			"June",
			"July",
			"August",
			"September",
			"October",
			"November",
			"December"
		];

		// Days
		Date.prototype.weekNames = [
			"Sunday",
			"Monday",
			"Tuesday",
			"Wednesday",
			"Thursday",
			"Friday",
			"Saturday"
		];
		
		// Return the month name according to its number value
		Date.prototype.getMonthName = function() {
			return this.monthNames[this.getMonth()];
		};
		
		// Return the day's name according to its number value
		Date.prototype.getWeekName = function() {
			return this.weekNames[this.getDay()];
		};

		// Display the following in html
		$("#time").html(hours + ":" + minutes + " " + ante);
		$("#day").html(date.getWeekName() + ", " + date.getMonthName() + " " + dd);
		$("#greeting").html("Good " + greeting + ", " + userName + ".");
		
		// The interval is necessary for proper time syncing
		setInterval(time, 1000);
	}
	time();
});

        </script>
    </head>
    
            <body background="images/right--.jpg" style="background-size: cover;">

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
						
                        <a class="mdl-navigation__link mdl-navigation__link--current" href="user_dash.jsp">
                            <i class="material-icons" role="presentation">dashboard</i>
                            <span id="dash">Dashboard</span>
							<span class="mdl-tooltip" for="dash">
								Visit Dashboard
                            </span>
                        </a>

                        <a class="mdl-navigation__link" href="user_issuesearch.jsp">
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



<main class="mdl-layout__content">

    <div>   <!-- Due to the codepen sandboxing the form will not submit properly in this environment -->
<div class="background">
 <div class="container">
  <div class="row flex-column justify-content-center align-items-center text-center">
   <div class="col-sm-12 col-md-10 col-lg-8">
    <h1 id="time">12:00 AM</h1>
    <h3 id="day" class="display-5">Monday, January 01</h3>
    <h2 id="greeting">Good Morning, User.</h2>
    <h3>What would you like to search for today?</h3>
   </div><!-- /.col -->
   
  </div><!-- /.row -->
  <style>
      .btn {
	background: #34b3a0;
	color: white;
	font-size: 1.2rem;
	padding: 1rem 2rem;
	text-decoration: none;
	border-radius: 6.5px;
}
      </style>
 </div><!-- /.container -->
      <a class="btn" href="user_issuesearch.jsp" style="z-index:3; margin-top: 24%; margin-left: 25px;">Begin Search</a>

</div>


</main>


</body>
</html>
