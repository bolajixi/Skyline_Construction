<%-- 
    Document   : add_project
    Created on : Dec 15, 2019, 5:58:44 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Projects: <%= session.getAttribute("firstname").toString() %> </title>
        <link href="mdl/material.css" rel="stylesheet" type="text/css">
        <link href="mdl/material.css" rel="stylesheet" type="text/css">
        <script src="mdl/material.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="mdl/getmdl-select.min.css">
        <script defer src="mdl/getmdl-select.min.js"></script>
	
	<style> 
         .graybox {
            background-color:#ddd;
         }
		.wide-card.mdl-card {
            width: auto;
			         }
		label.input-custom-file input[type=file] {
          display: none;
        }
      </style>
	<script>
                function validate() {
                    var p_title = document.myform.proj_title.value;
                    var p_id = document.myform.proj_id.value;
                    var p_loca = document.myform.proj_loca.value;
                    var p_mang = document.myform.proj_mang.value;
                    var p_descr = document.myform.proj_descr.value;
                    var c_theme = document.myform.chall_theme.value;
                    var c_descr = document.myform.chall_descr.value;
                    var c_solu = document.myform.chall_solu.value;
                    var c_reso = document.myform.chall_reso.value;
                    if (p_title == ""){
                        alert("ERROR: Project Title can not be empty")
                        document.myform.proj_title.focus();
                        return false;
                    }
                    if (p_id == ""){
                        alert("ERROR: Project ID can not be empty")
                        document.myform.proj_id.focus();
                        return false;
                    }
                    if (p_loca == ""){
                        alert("ERROR: Project Location can not be empty")
                        document.myform.proj_loca.focus();
                        return false;
                    }
                    if (p_mang == ""){
                        alert("ERROR: Project Manager can not be empty")
                        document.myform.proj_mang.focus();
                        return false;
                    }
                    if (p_descr == ""){
                        alert("ERROR: Project Description can not be empty")
                        document.myform.proj_descr.focus();
                        return false;
                    }
                    if (document.getElementById('yesbtn').checked){
                        if (c_theme == ""){
                        alert("ERROR: Challenge Theme can not be empty")
                        document.myform.chall_theme.focus();
                        return false;
                        }
                        if (c_descr == ""){
                        alert("ERROR: Challenge Description can not be empty")
                        document.myform.chall_descr.focus();
                        return false;
                        }
                        if (c_solu == ""){
                        alert("ERROR: Challenge Solution can not be empty")
                        document.myform.chall_solu.focus();
                        return false;
                        }
                        if (c_reso == ""){
                        alert("ERROR: Challenge Resources can not be empty")
                        document.myform.chall_reso.focus();
                        return false;
                        }
                    }
                }
		function setfilename(val){
			var filename = val.substr(val.lastIndexOf("\\")+1, val.length);
			document.getElementById("uploadFile").value = filename;
		}
		
		function disable(){
			var y = document.getElementById("chall-descr");
			var z = document.getElementById("chall-solu");
			var az = document.getElementById("chall-reso");
                        var x = document.getElementById("chall-theme");
			
			y.disabled = true;
			z.disabled = true;
			az.disabled = true;
                        x.disabled = true;
		}
		function enable(){
			var y = document.getElementById("chall-descr");
			var z = document.getElementById("chall-solu");
			var az = document.getElementById("chall-reso");
                        var x = document.getElementById("chall-theme");
			
			y.disabled = false;
			z.disabled = false;
			az.disabled = false;
                        x.disabled = false;
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

                        <a class="mdl-navigation__link mdl-navigation__link--current" href="add_project.jsp">
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
								Update Profile Details
                            </span>
                      </a>

                        <a class="mdl-navigation__link" href="viewproject.jsp">
                        <i class="material-icons" role="presentation">map</i>
                            View Projects
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
    <form action="${pageContext.request.contextPath}/addproj" method="post" name="myform">
            <div class="mdl-card mdl-shadow--2dp" style="width: 1200px; height:1254px; left: 3%; position: relative;">

                <div class="mdl-card__title" style="background-color: #2E395E; color: white;">
                    <h3>Add New Project</h3>
<!--                    <div class="mdl-card__subtitle">Please complete the form</div>-->
                </div>

                <div class="mdl-card__supporting-text" style="background-color: #202940; width: 1200px; color: white;">
					
                    
                                <div class="form__article">
                                    <h4 style="margin: 0 0 0 40px;">Project Details</h4>


                                    <!--Project detail-->
                                    <div class="mdl-grid" style="margin:0 0 0 60px;">

                                        <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                            <input class="mdl-textfield__input" type="text" id="proj-title" name="proj_title"/>

                                            <label class="mdl-textfield__label" for="proj-title" style="color: white;">Project Title</label>

                                        </div>



                                        <div class="mdl-cell mdl-cell--2-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                            <input class="mdl-textfield__input" type="text" id="proj-id" name="proj_id"/>

                                            <label class="mdl-textfield__label" for="proj-id" style="color: white;">Project ID</label>

                                        </div>

                                        <div class="mdl-cell mdl-cell--3-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                            <input class="mdl-textfield__input" type="text" id="proj-location" name="proj_loca"/>

                                            <label class="mdl-textfield__label" for="proj-location" style="color: white;">Project Location</label>

                                        </div>

                                    </div>

                                    <!--Project details-->			
                                    <div class="mdl-grid" style="margin: 0 0 0 60px">

                                        <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                            <input class="mdl-textfield__input" type="text" id="proj-manager" value="<%= session.getAttribute("firstname").toString()+" "+session.getAttribute("lastname").toString()%>" name="proj_mang"/>
                                          <label class="mdl-textfield__label" for="proj-manager" style="color: white;">Project Manager</label>
                                        </div>



                                        <div class="mdl-cell mdl-cell--6-col mdl-cell--top">
        <!--									Project Status-->
                                          <div align="left"><span>Status:</span>
          <!--							Open Project-->
                                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="proj-open">
                                              <input type="radio" id="proj-open" class="mdl-radio__button" name="status" value="Open" checked/>
                                              <span class="mdl-radio__label">Open</span>
                                            </label>
          <!--							Closed Project-->
                                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="proj-closed" style="margin: 0 0 0 25px;">
                                              <input type="radio" id="proj-closed" class="mdl-radio__button" name="status" value="Closed"/>
                                              <span class="mdl-radio__label">Closed</span>
                                            </label>
          <!--							Project On Hold-->
                                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="proj-onhold" style="margin: 0 0 0 25px;">
                                              <input type="radio" id="proj-onhold" class="mdl-radio__button" name="status" value="On Hold"/>
                                              <span class="mdl-radio__label">On Hold</span>
                                            </label>
        <!--							Project On Hold-->
                                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="proj-archived" style="margin: 0 0 0 25px;">
                                              <input type="radio" id="proj-archived" class="mdl-radio__button" name="status" value="Archived"/>
                                              <span class="mdl-radio__label">Archived</span>
                                            </label>
                                          </div>

                                        </div>
                                    </div>

                                </div>



                                <div class="form__article">

                                    <h4 style="margin: 0 0 0 40px;">Project Description</h4>
                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width: 910px; margin: 0 0 0 85px;">

                                        <textarea class="mdl-textfield__input" type="text" rows="5" id="proj-descr" name="proj_descr"></textarea>

                                        <label class="mdl-textfield__label" for="proj-descr" style="color: white;">Type description</label>

                                    </div>
                                </div>


        <!--						Challenge Section-->
                                <div id="challenge">
                                        <h4 style="margin: 25px 0 0 40px;">Challenge</h4>

            <!--				Was there an issue during proj-->
                                        <span style="margin:  0 0 0 85px;">Was there an issue during the project:</span>
            <!--				Yes Option-->

                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="iss-yes">
                                            <input onClick="enable()" type="radio" id="iss-yes" class="mdl-radio__button" name="issue" value="Yes" id="yesbtn"/>
                                            <span class="mdl-radio__label">Yes</span>
                                        </label>
            <!--				No option-->
                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="iss-no" style="margin: 0 0 0 25px;">
                                            <input onClick="disable()" type="radio" id="iss-no" class="mdl-radio__button" name="issue" value="No"/>
                                            <span class="mdl-radio__label">No</span>
                                        </label>

            <!--				Fill issue section-->

                                            <!--Challenge Topic-->
                                        <div style="margin:20px 0 0 85px;" class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                                <input class="mdl-textfield__input" type="text" id="chall-theme" name="chall_theme"/>

                                                <label class="mdl-textfield__label" for="firstName" style="color: white;">Challenge Theme</label>

                                        </div>

                                            <!--Challenge description-->			
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width: 910px; margin: 0 0 0 85px;">

                                                <textarea class="mdl-textfield__input" type="text" rows="6" id="chall-descr" name="chall_descr"></textarea>

                                                <label class="mdl-textfield__label" for="proj-descr" style="color: white;">Challenge description</label>

                                        </div

                                            <!--Challenge solutions-->
                                        <div class="mdl-grid" style="margin:0 0 0 85px;">
                                            <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                                    <textarea class="mdl-textfield__input" type="text" rows="7" id="chall-solu" name="chall_solu"></textarea>

                                                    <label class="mdl-textfield__label" for="proj-solu" style="color: white;">Challenge solutions</label>

                                            </div>

                                            <!--Challenge resources-->
                                            <div class="mdl-cell mdl-cell--5-col mdl-textfield mdl-js-textfield mdl-textfield--floating-label">

                                                        <textarea class="mdl-textfield__input" type="text" rows="7" id="chall-reso" name="chall_reso"></textarea>

                                                        <label class="mdl-textfield__label" for="proj-solu" style="color: white;">Challenge resources</label>

                                            </div>
                                        </div>

                                </div> <!--End of challenge container-->


        <!--			Contact details section-->

                            <div class="form__article employer-form__general_skills">
                                    <h4 style="margin: 0 0 0 40px;">Contact Details</h4>
        <!--			Contact details section-->
                                    <div class="mdl-grid" style="margin: 0 0 0 85px">

                                        <!--Phone number section-->
                                        <div class="mdl-cell mdl-cell--5-col">
                                                    <i class="material-icons pull-left">call</i>
                                                    <div class="mdl-textfield mdl-js-textfield pull-left">
                                                        <input class="mdl-textfield__input" type="text" id="phone" maxlength="11" name="phone_num">
                                                        <label class="mdl-textfield__label" for="phone" style="color: #D6D6D6;">XXXX-XXX-XXXX</label>
                                                    </div>
                                        </div>

                                        <!--Upload file section-->
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--file mdl-cell mdl-cell--5-col">
                                                <div>
                                                  <input class="mdl-textfield__input" placeholder="Attach accompanying documentation (if applicable)" type="text" id="uploadFile" readonly/>
                                                </div>
                                                <div style="margin:0 0 0 400px;">
                                                    <label class="input-custom-file mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect" style="color:#03DAC5; text-transform: none;">
                                                            <i class="material-icons">attach_file</i>
                  <!--                                  Attach accompanying documentation (if applicable)-->
                                                          <input type="file" id="uploadBtn" onChange="setfilename(this.value);" name="file_upload"/>
                                                    </label>
                                                </div>
                                        </div>
                                    </div>



                                    <div class="mdl-cell mdl-cell--11-col mdl-cell--stretch" align="center">

                                        <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="isInfoReliable" style="width: 250px;">
                                            <input type="checkbox" id="isInfoReliable" class="mdl-checkbox__input" required/>
                                             <span class="mdl-checkbox__label">Entered information is reliable</span>
                                        </label>

                                        <button class="mdl-button mdl-js-button mdl-button--raised" style="color:#03DAC5;" onclick="return validate();" type="submit" name="signin">Submit</button>

                                    </div>

                            </div>
                        
                </div>
            
            </div>   
        </form>

</main>



</div>

</body>
</html>
