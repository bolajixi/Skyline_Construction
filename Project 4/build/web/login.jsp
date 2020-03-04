<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 12/4/2019
  Time: 5:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="javax.jms.Session"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Project 4</title>
    <meta charset="utf-8">
    <link href="mdl/material.css" rel="stylesheet" type="text/css">
    <script src="mdl/material.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link href="mdl/preload.css" rel="stylesheet" type="text/css">
    <script>
        function checkSession() {
             var username = Session["id"].toString();
             var fname = Session["firstname"].toString();
             if ((!username) && (document.getElementsByName("userid").value == username)) {
              alert("Welcome back," + fname + "/n Continue from previous Session");
              return true;
             }
        }
        
        function validate(form)
          {
            // validation fails if the input is blank
            if(form.userid.value == "") {
              alert("Error: Username is empty!");
              form.userid.focus();
              return false;
            } else if(form.pass.value == "") {
              alert("Error: Password is empty!");
              form.pass.focus();
              return false;
            }

           // validation was successful
            return true;
          }
        
        $(window).load(function() {
            $('.loader').fadeOut('slow');
        });
    </script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
</head>
<body background="images/login-img_edited.jpg" style="background-size: cover;">
 <!--Page preloader-->   
<!--    <div class="loader">
		
		<img src="images/logo.svg">
	
    </div>-->
    <!--End of Page Preloader-->
    <img src="images/logo-line.svg" width="32%;" style="top: 50%; transform: translate(50%, 50%)"/></pa
<!--	This is the Login card container-->
<form action="${pageContext.request.contextPath}/Controller" method="post" onsubmit="return validate(this)">
    <div class="mdl-card card-anim" style="background: rgba(0,0,0,0.50); border-radius: 24px; width:380px; height: 415px; position: absolute; top: 50%; left: 50%; transform: translate(7%,-54%);">
        <div style="margin: 80px 0 0 0;">
            <div align="center">
                <div style="margin: 0 0 10px 0;">
                    <font color="#FFFFFF" class="mdl-typography--display-1" style="font-size: 22px;">Login to your account</font>
                </div>
                <!--		  Username Textfield-->
                <br>
                <i class="material-icons" style="color: white; margin: 0 10px 0 0;">person</i>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <input class="mdl-textfield__input" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" style="color: #FFFFFF;" type="text" name="userid" autofocus>
                    <label class="mdl-textfield__label" style="color: #FFFFFF ;" for="userid">Username</label>
                    <span class="mdl-textfield__error">Invalid Username</span>
                </div>
                <br>
                <!--		  Password Textfield-->
                <i class="material-icons" style="color: white; margin: 0 10px 0 0;">lock</i>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <input class="mdl-textfield__input" style="color: #FFFFFF;" type="password" name="pass">
                    <label class="mdl-textfield__label" style="color: #FFFFFF;" for="pass">Password</label>
                </div>
            </div>
            <!--		Login button & Forgot password link-->
            <div style="margin:4px 0 10px 0">
                <button name="signin" type="submit" class="mdl-button mdl-js-button mdl-button--raised" style="margin: 0 0 0 85px; color:#03DAC5;">Login</button>
        
                <a href="pass_reset.jsp" class="mdl-typography--text-left" style="margin: 0 0 0 32px; font-size: 14.2px; color: white; text-decoration: none;">Forgot password?</a>
            </div>
            <div style="margin: 10px 0 0 0;">
                <hr width="255" style="opacity: .5;">

                <font color="#FFFFFF" style="margin: 0 0 0 80px;">Don't have an account? </font><a href="signup.jsp" class="mdl-typography--text-left" style="font-size: 14.2px; color: #03DAC5; text-decoration: none;">Sign Up</a>
            </div>
        </div>
            
    </div>
</form>

</html>
