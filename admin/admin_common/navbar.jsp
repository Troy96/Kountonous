<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<%
String sessAdmin = (String)session.getAttribute("user1");
%>

<style>
  body{
    background-image: url("../images/back.jpg");
    background-size: 100% 100%;

  }
</style>
<%
if(sessAdmin==null){
  %>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="../home.jsp"><i><b>Kountonous</b></i></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">

      <li><a href="../login.jsp">Signup</a></li>
        
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
      <a class="navbar-brand" href="cpanel_dash.jsp"><i><b>Kountonous</b></i></a>
    </div>
     <div class="collapse navbar-collapse" id="myNavbar">
   <ul class="nav navbar-nav navbar-right">
      <li><a href="notifs.jsp">Notifications</a></li>
      <li><a href="admin_logout.jsp">Logout</a></li>
      </ul>
  </div>
</nav>

<% } %>


