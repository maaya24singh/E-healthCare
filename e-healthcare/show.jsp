<%@page import="com.musk.web.modal.Data" %>
<%@page import="com.musk.web.dao.DataDao" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>

    <!-- Google Fonts -->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;900&display=swap" rel="stylesheet">

    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/77fe48af27.js" crossorigin="anonymous"></script>

    <!-- CSS style sheet -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Bootstrap Scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>

<body>
    <%
       Data d1 = (Data)session.getAttribute("data");
    %>
    <div style="text-align: center; background-color: #007BFF; color: white">
    	<h1 style="padding-top:50px">Welcome to E-Healthcare management Paltform</h1>
    	<br><br>
    	<div class="" style="font-size: x-large">
       	 <h2 style="color: #F97918;">Personal Information</h2><br>
        	<div class=>
           	 <div class="">
               	 <p>Name : <%out.println(d1.getFrst_name()+" "+d1.getLast_name()); %></p>
              </div>
       	    </div>

        <div class=>
            <div class="">
                <p>BirthDate : <%out.println(d1.getBirthdate()); %> </p>
            </div>
            <div>
                <p>Gender : <%out.println(d1.getGender()); %></p>
            </div>
        </div>

        <div class=>
            <div class="">
                <p> Adhaar Id : <%out.println(d1.getAdhaar_No()); %> </p>
            </div>
            <div>
                <p>Email Id : <%out.println(d1.getEmail()); %></p>
            </div>
        </div>

    </div>
    <br><br>
    <div style="font-size: x-large">
        <h2 style="color: #F97918;">Medical Information</h2>
        <br>
        <div>
            <p>Blood Group : <%out.println(d1.getBloodgrp()); %></p>
        </div>
        <div>
            <p>Disease : <%out.println(d1.getDisease()); %></p>
        </div>
        <div>
            <p>Covid vaccination status : <%out.println(d1.getVaccinate()); %></p>
        </div>
    </div>
    <br><br>
    <div class="form-group" style="padding: 0 0 3% 0; text-align: center;">
           <a href="home.html" class="r-btn">Logout</a>
     </div>

</div>

</body>

</html>