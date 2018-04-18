<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<%
String user = (String)session.getAttribute("user");
%>


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

      <li><a href="login.jsp">Signup</a></li>
       <li><a href="admin/cpanel.jsp">Admin Login</a></li>
       <li><a href="services.jsp">Services</a></li>
        
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
          <li><a href="settings.html">Settings</a></li>
          <li><a href="logout.jsp">Logout</a></li>
        </ul>
      </li>
      <li><a href="services.jsp">Services</a></li>
    
    </ul>
  </div>
</nav>

<% } %>


