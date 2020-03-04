<%-- 
    Document   : signup
    Created on : Dec 6, 2019, 6:06:23 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project 4</title>
        <link href="mdl/material.css" rel="stylesheet" type="text/css">
        <script src="mdl/material.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
	function reset(){
		document.getElementById("signup").reset();
	}
	function validate(form){
		if(form.pwd1.value != form.pwd2.value) {
        alert("Error: Confirm that password's are the same!");
        form.pwd1.focus();
        return false;
        } else {
            return true;
            }
	}
	</script>
    </head>
    

<body background="images/login-img_edited.jpg" style="background-size: cover;">
    <img src="images/logo-line.svg" width="32%;" style="top: 50%; transform: translate(50%, 50%)"/>
        <!--	This is the Sign-up card container-->
<form id="signup" onSubmit="return validate(this)" action="${pageContext.request.contextPath}/register" method="post">
  <div class="mdl-card" style="background: rgba(0,0,0,0.50); border-radius: 24px; width:380px; height: 500px; position: absolute; top: 50%; left: 50%; transform: translate(7%,-52%);">
    <div style="margin:30px 0 0 0;">
      <div align="center">
        <div style="margin: 0 0 0 140px;">
          <!--<font color="#FFFFFF" class="mdl-typography--display-1" style="font-size: 22px;">Sign Up</font>-->
          <span class="mdl-card__title-text" style="color: white">Sign Up</span>
        </div>
        <!--		  Fullname Textfield-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input type="text" class="mdl-textfield__input" name="fullname" style="color: #FFFFFF;" required autofocus>
          <label for="fullname" class="mdl-textfield__label" style="color: #FFFFFF ;">Name</label>
        </div>
        <br>
        <!--		  Email Textfield-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
            <input type="text" class="mdl-textfield__input" name="email" style="color: #FFFFFF;" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" required>
            <label for="email" class="mdl-textfield__label" style="color: #FFFFFF;">Email</label>
          <span class="mdl-textfield__error">Invalid Username</span>
        </div>
        <!--		  Password Textfield-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
            <input type="password" class="mdl-textfield__input" style="color: #FFFFFF;" required name="pwd1">
            <label for="pwd1" class="mdl-textfield__label" style="color: #FFFFFF;">Password</label>
        </div>
        <!--		  Confirm password field-->
	<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
            <input type="password" class="mdl-textfield__input" style="color: #FFFFFF;" required name="pwd2">
            <label for="pwd2" class="mdl-textfield__label" style="color: #FFFFFF;">Confirm Password</label>
        </div>
      </div>
      <!--		Sign up button & Forgot password link-->
      <div style="margin:5px 0px 20px 20px">
        <button name="signin" type="submit" class="mdl-button mdl-js-button mdl-button--raised" style="margin: 0 0 0 85px; color:#03DAC5;">Sign Up</button>
        
        <a href="#" class="mdl-typography--text-left" id="reset" style="margin: 0 0 0 35px; font-size: 14.2px; color: white; text-decoration: none;" onClick="reset()">Reset</a>
      </div>
      <div style="margin: 10px 0 0 0;">
        <hr width="255">
        
        <font color="#FFFFFF" style="margin: 0 0 0 70px;">Already have an account? </font><a href="login.jsp" class="mdl-typography--text-left" style="font-size: 14.2px; color: #03DAC5; text-decoration: none;">Sign In</a>
      </div>
    </div>
  </div>
</form>
    </body>
</html>
