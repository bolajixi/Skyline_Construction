<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 12/4/2019
  Time: 5:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Project 4</title>
    <!--	Auto-redirect to main page(index.html)-->
    <meta http-equiv="Refresh" content="3.9; url=login.jsp" />
    <link href="mdl/material.css" rel="stylesheet" type="text/css">
    <!--	CSS loading animation-->
    <style>
      .box {
        perspective: 120px;
      }

      .plane {
        width: 2em;
        height: 2em;
        background-color: #03DAC5;
        transform: rotate(0);
        animation: flip 1s infinite;
      }

      @keyframes flip {
        50% {
          transform: rotateY(180deg);
        }
        100% {
          transform: rotateY(180deg) rotateX(180deg);
        }
      }
    </style>
  </head>
  <body background="images/login-img_edited.jpg" style="background-size: cover;">
  <div align="center" style="position: absolute; top: 48%; left: 48%;">
    <div class="box">
      <div class="plane"></div>
    </div>
  </div>
  </body>
</html>
