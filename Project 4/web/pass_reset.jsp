<%-- 
    Document   : pass_reset
    Created on : Dec 10, 2019, 3:08:57 PM
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
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script>
	function validate(form){
	if(form.email.value == "") {
            alert("Email must be filled!");
            form.email.focus();
            return false;
        } else {
            return true;
            }
	}
	</script>
    </head>
    
<body background="images/login-img_edited.jpg" style="background-size: cover;">
	
<!--	This is the Sign-up card container-->
<form id="forgot_pass" onSubmit="return validate(this)" action="${pageContext.request.contextPath}/forgot_pass" method="post">
  <div class="mdl-card" style="background: rgba(0,0,0,0.50); border-radius: 24px; width:450px; height: 350px; position: absolute; top: 27%; left: 35%;">
    <div style="margin:20px 0 0 0;">
      <div align="center">
        <div>
<!--          <font color="#FFFFFF" class="mdl-typography--display-1" style="font-size: 22px;">Sign Up</font>-->
			<span class="mdl-card__title-text" style="color: white; margin: 50px 0 10px 75px;">Reset Password?</span>
			<span class="mdl-card__subtitle-text" style="color: white;">Enter your email below to recieve your password</span>
        </div>
		  <br>
		  <br>
        <!--		  Email Textfield-->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
            <input class="mdl-textfield__input" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" style="color: #FFFFFF;" type="text" id="email" name="email">
          <label class="mdl-textfield__label" style="color: #FFFFFF;" for="email">Email</label>
          <span class="mdl-textfield__error">Invalid Username</span>
        </div>
      </div>
      <!--		Sign up button & Forgot password link-->
      <div style="margin:5px 0px 20px 150px">
        <button class="mdl-button mdl-js-button mdl-button--raised" style="margin: 0 0 0 82px; color:#03DAC5;" type="submit" name="signin">Send Password</button>
      </div>

      </div>
    </div>
</form>
</body>
</html>
