<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<%
String user = (String)session.getAttribute("user");
%>
<html>
<title>All Services</title>
<head>
  	
  	
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/Footer-with-social-icosss.css">
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="css/w3css.css">
  <style>
  .navbar-brand {
    font-family: "Lobster", serif;
    font-size: 30px;
  }
  * The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 15% auto; /* 15% from the top and centered */
    padding: 20px;
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
  </style>


</head>
<body>
  <%
if(user==null){
  %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">Kountonous</a>
    </div>
   <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="index.html">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">My account
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="login.html">Login</a></li>
          <li><a href="register.html">Signup</a></li>
        </ul>
      </li>
      <li><a href="services.jsp">Services</a></li>
    </ul>
  </div>
</nav>

<%
} else {
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="services.jsp">Kountonous</a>
    </div>
   <ul class="nav navbar-nav navbar-right">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">My account
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a id="myBtn">Profile</a></li>
          <li><a href="settings.html">Settings</a></li>
          <li><a href="logout.jsp">Logout</a></li>
        </ul>
      </li>
      <li><a href="services.jsp">Services</a></li>
      <li><a href="cart.html">Cart</a></li>
    </ul>
  </div>
</nav>

<% } %>

<!-- Trigger/Open The Modal -->

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p class="w3-lobster">Profile</p>
  </div>

</div>
<script>
  // Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>



</body>
</html>