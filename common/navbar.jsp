<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<%
String user = (String)session.getAttribute("user");
%>

<head>
  <style>
    a{
      font-family: "Segoe UI";
      font-weight: bold;
    }
</style>
</head>
<%
if(user==null){
  %>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="home.jsp"><i><b>Kountonous</b></i></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">

      <li><a href="login.jsp">Signup/Signin</a></li>
       <li><a href="admin/cpanel.jsp">Admin Login</a></li>

      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Services
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="services.jsp">All Services</a></li>
          <li><a href="services/cleaning_base.jsp">Cleaning</a></li>
          <li><a href="services/repairs_base.jsp">Repairs</a></li>
          <li><a href="services/carspa_base.jsp">Car Spa</a></li>
          <li><a href="services/pestcontrol_base.jsp">Pest Control</a></li>
          <li><a href="services/handyman_base.jsp">Handyman</a></li>
        </ul>
      </li>
        
      </ul>
    </div>
  </div>
</nav>

<%} else {%>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
    	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="home.jsp"><i><b>Kountonous</b></i></a>
    </div>
     <div class="collapse navbar-collapse" id="myNavbar">
   <ul class="nav navbar-nav navbar-right">
   	
      
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">My account
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="settings.jsp">Settings</a></li>
          <li><a href="logout.jsp">Logout</a></li>
           <li><a href="orders.jsp">Orders</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Services
        <span class="caret"></span></a>
        <ul style="padding-top: 10px;" class="dropdown-menu">
           <li><a href="services.jsp">All Services</a></li>
          <li><a href="services/cleaning_base.jsp">Cleaning</a></li>
          <li><a href="services/repairs_base.jsp">Repairs</a></li>
          <li><a href="services/carspa_base.jsp">Car Spa</a></li>
          <li><a href="services/pestcontrol_base.jsp">Pest Control</a></li>
          <li><a href="services/handyman_base.jsp">Handyman</a></li>
        </ul>
      </li>
    
    </ul>
  </div>
</nav>

<% } %>


