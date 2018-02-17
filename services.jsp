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
  
  <link rel="stylesheet" href="css/w3css.css">

  <style>


  .navbar{
    margin-bottom: 0px;
    border-radius: 0px;
  }
  .navbar-brand {
    font-family: "Lobster", serif;
    font-size: 30px;
  }
  .carousel-inner > .item > img {
  width:1340px;
  height:460px;
}

fieldset {
    border: 1px solid #000;
}
#info-block section {
    border: 2px solid black;
    background-color: #e8e3e3c9;
}

.file-marker > div {

  text-align: center;
  font-family: "Lobster";
  font-size: 16.5px;
    padding: 0 3px;
    height: auto;
    margin-top: -3em;
    margin-bottom: 10px;
}
.box-title {
    margin-top: 20px;
    background: white none repeat scroll 0 0;
    display: inline-block;
    padding: 0 2px;
    margin-left: 10px;
}
.text-services{
  position:absolute;
  font-size: 14px;
  margin-top: -223px;
  margin-left:65%;
  text-align: left;
  text-decoration: none;
}
.text-services a{
  color:#000;
}
.text-services a:hover{
  color:red;
}
.text-services a:link{
  text-decoration:none;
}
.row{
  margin-top: 10px;
}
#myFooter .facebook:hover{
  color:#0077e2;
}
#myFooter .footer-copyright{
  background-color: #383737;
  padding-top:3px;
  padding-bottom:3px;
  text-align: center;
}

#myFooter .footer-copyright p{
  margin:10px;
  color: #ccc;
}s
#myFooter .google:hover{
  color:#0077e2;
}
#myFooter h5{
  font-size: 18px;
    color: white;
    font-weight: bold;
    margin-top: 30px;
}
#myFooter a:hover, #myFooter a:focus{
  text-decoration: none;
  color:white;
}
#myFooter .twitter:hover{
  color: #00aced;
}
  
  a{
    color:#ded5d7a1;
  }
  .fa {
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}
#myFooter{
  background-color: #535379;
}
#myFooter .social-networks{
  text-align: center;
  padding-top: 30px;
  padding-bottom: 38px;
}

#myFooter .social-networks a{
    font-size: 32px;
    margin-right: 5px;
    margin-left: 5px;
    color: #f9f9f9;
    padding: 10px;
    transition: 0.2s;
}

#myFooter .social-networks a:hover{
  text-decoration: none;

}
.col-lg-6{
  margin-top: 50px;
  margin-bottom: 100px;
}
/*-------------------------------*/
/*      Code snippet by          */
/*      @maridlcrmn              */
/*-------------------------------*/


section {
    padding-top: 10px;
    padding-bottom: 10px;
}

.quote {
    color: rgba(0,0,0,.1);
    text-align: center;
    margin-bottom: 20px;
}

/*-------------------------------*/
/*    Carousel Fade Transition   */
/*-------------------------------*/

#fade-quote-carousel.carousel {
  padding-bottom: 60px;
}
#fade-quote-carousel.carousel .carousel-inner .item {
  opacity: 0;
  -webkit-transition-property: opacity;
      -ms-transition-property: opacity;
          transition-property: opacity;
}
#fade-quote-carousel.carousel .carousel-inner .active {
  opacity: 1;
  -webkit-transition-property: opacity;
      -ms-transition-property: opacity;
          transition-property: opacity;
}
#fade-quote-carousel.carousel .carousel-indicators {
  bottom: 10px;
}
#fade-quote-carousel.carousel .carousel-indicators > li {
  background-color: #e84a64;
  border: none;
}
#fade-quote-carousel blockquote {
    text-align: center;
    border: none;
}
#fade-quote-carousel .profile-circle {
    width: 200px;
    height: 200px;
    margin-top:0px;
    margin-bottom: 30px;
    margin-left:35%;

    border-radius: 120px;
}
.profile-circle img{
  width:200px;
  height:200px;

}
.random-people{
  color:grey;
}
.heading{
     
     text-align:center;
     font-size:25px;
     font-family: "Lobster" , sans-serif;
}
.carousal{
background-color: red;
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
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">My Account
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
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">My Account
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a data-toggle="modal" data-target="#myModal">Profile</a></li>
          <li><a href="orders.html">My Orders</a></li>
          <li><a href="logout.jsp">Logout</a></li>
        </ul>
      </li>
      <li><a href="services.jsp">Services</a></li>
      <li><a href="cart.html">Cart</a></li>
    </ul>
  </div>
</nav>

<% } %>

<%
String n,m,c,a,p; n=m=c=a=p=" ";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE u_mail=?");
ps.setString(1,user);
ResultSet rs=ps.executeQuery();
while(rs.next()){
   n = rs.getString(2);
   m = rs.getString(3);
   c = rs.getString(4);
   a = rs.getString(5);
   p = rs.getString(6);
}

%>



<!-- Profile -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Profile</h4>
        </div>
        <div class="modal-body">
          <form action="profile_back.jsp" method="POST">
          <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                            <input type="text" name="name" placeholder="<%=n%>" required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input type="email" name="email" placeholder="<%=m%>" required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input type="text" name="address" placeholder="<%=a%>" required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input type="text" name="mobile" placeholder="<%=c%>" required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input  type="password" name="password" placeholder="<%=p%>"  id="myId" required class="form-control" />
                            
                        </div> 
                      </div>
                      <button type="submit" class="btn btn-default">Update</button>
                    </form>
       
      </div>
    </div>
  </div>
</div>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/Cleaning_Home_Image.jpg" alt="Cleaning Home" width="1300" height="150">
    </div>

    <div class="item">
      <img src="images/Handyman_Home_Image.jpg" alt="Handyman Home">
    </div>

    <div class="item">
      <img src="images/Repairs_Home_Image.jpg" alt="Repairs Home">
    </div>


  </div>


  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<br>

<aside id="info-block">
<section class="file-marker">
        <div>
            <div class="box-title">
                <h1>All Services</h1>
            </div>
            
              <p class="heading"> Welcome to Kountonous Services! Choose from a variety of services which perfectly fits your needs.</p>
              
              <div class="row">
              <div class="col-lg-6">
              <a href="services/cleaning/cleaning_base.html"><img class="img-rounded" src="images/clean_home.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/cleaning/cleaning_base.html">Cleaning</a></h3>
              <p><a href="services/cleaning/bathroom.html">Bathroom</a></p>
              <p><a href="services/cleaning/carpet.html">Carpet</a></p>
              <p><a href="services/cleaning/chair.html">Chair</a></p>
              <p><a href="services/cleaning/home.html">Home</a></p>
              <p><a href="services/cleaning/kitchen.html">Kitchen</a></p>
              <p><a href="services/cleaning/office.html">Office</a></p>
              <p><a href="services/cleaning/window.html">Window</a></p>
              <p><a href="services/cleaning/sofa.html">Sofa</a></p>
              
              </div>
              </div>

              <div class="col-lg-6">
              <a href="services/reapairs/repairs_base.html"><img class="img-rounded" src="images/repair-laptop.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/repairs/repairs_base.html">Repairs</a></h3>
              <p><a href="services/repairs/ac.html">AC</a></p>
              <p><a href="services/repairs/chimney.html">Chimney</a></p>
              <p><a href="services/repairs/laptop.html">Laptop</a></p>
              <p><a href="services/repairs/fridge.html">Fridge</a></p>
              <p><a href="services/repairs/microwave.html">Micro-wave</a></p>
              <p><a href="services/repairs/washingmachine.html">Washing-Machine</a></p>
              <p><a href="services/repairs/waterpurifier.html">Water-Purifier</a></p>
        
              
              </div>
              </div>

              </div>

              <div class="row">
              <div class="col-lg-6">
              <a href="services/carspa/carspa_base.html"><img class="img-rounded" src="images/car-spa.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/carspa/carspa_base.html">Car Spa</a></h3>
              <p><a href="services/carspa/complete.html">Complete</a></p>
              <p><a href="services/carspa/interior.html">Interior</a></p>
              
              
              </div>
              </div>

              <div class="col-lg-6">
              <a href="services/pestcontrol/pestcontrol_base.html"><img class="img-rounded" src="images/pest-control.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/pestcontrol/pestcontrol_base.html">Pest Control</a></h3>
              <p><a href="services/pestcontrol/general.html">General</a></p>
              <p><a href="services/pestcontrol/bedbugs.html">Bed Bugs</a></p>
              
              
              </div>
              </div>

              </div>

               <div class="row">
              <div class="col-lg-6">
              <a href="services/paint/paint_base.html"><img class="img-rounded" src="images/painter.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/paint/paint_base.html">Paint</a></h3>
              <p><a href="services/paint/freshpaint.html">Fresh-Paint</a></p>
              <p><a href="services/paint/repaint.html">Repaint</a></p>
             
              
              </div>
              </div>

              <div class="col-lg-6">
              <a href="services/handyman/handyman_base.html"><img class="img-rounded" src="images/carpenter.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/handyman/handyman_base.html">Handyman</a></h3>
              <p><a href="services/handyman/electrician.html">Electrician</a></p>
              <p><a href="services/handyman/carpenter.html">Carpenter</a></p>
              <p><a href="services/handyman/plumber.html">Plumber</a></p>
              <p><a href="services/handyman/mason.html">Mason</a></p>
              <p><a href="services/handyman/waterproofing.html">Water-Proofing</a></p>
              
              
              </div>
              </div>

              </div>

           
         </div>
</section>
</aside>

<section id="carousel" style="background-color: #b4d6b4">           
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <p class="heading">What people have to say about our services</p>
                <div class="quote"><i class="fa fa-quote-left fa-4x"></i></div>
        <div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
          <!-- Carousel indicators -->
                  <ol class="carousel-indicators">
            <li data-target="#fade-quote-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#fade-quote-carousel" data-slide-to="1"></li>
            <li data-target="#fade-quote-carousel" data-slide-to="2"></li>
          </ol>
          <!-- Carousel items -->
          <div class="carousel-inner">
            <div class="active item">
              <blockquote>
                 <div class="profile-circle"> <img class="img-circle" src="images/random-people-1.jpg"></div>
                 <div class="random-people"><p>Shobhan Shah</p></div>
                <p>Happy with the services. Awesome Job!!</p>
              </blockquote>
             
            </div>
            <div class="item">
              <blockquote>
                 <div class="profile-circle"> <img class="img-circle" src="images/random-people-2.jpg"></div>
                  <div class="random-people"><p>Dev Joshi</p></div>
                <p>Timely visit by the servicemen and quality services delivered.</p>
              </blockquote>
             
            </div>
            <div class="item">
              <blockquote>
                <div class="profile-circle"><img class="img-circle" src="images/random-people-3.jpg"></div>
                 <div class="random-people"><p>Stuart Wood</p></div>
                <p>Completely satisfied by the services! Kountonous is the best!!</p>
              </blockquote>
              
            </div>
          </div>
        </div>
        </div>              
    </div>
  </div>
</section>


  
<div class="content">
</div>
    <footer id="myFooter">
        <div class="container">
            <div class="row">
                <div class="col-sm-3 myCols"><br>
                    <a href="index.html"><img src="images/logo.png" alt="No Image" width="200" height="140"></a>
                    
                      <p style="color:white">We are a facility service provider, dealing
                    in a wide range of services, all serviced by our
                      backchecked servicemen. </p>                        
                    
                </div>
                <div class="col-sm-3 myCols">
                    <h5>Get started</h5>
                    <ul>
                        <li><a href="#\index.html">Home</a></li>
                        <li><a href="register.html">Sign up</a></li>
                        <li><a href="login.html">Login</a></li>
                    </ul>
                </div>
                
                <div class="col-sm-3 myCols">
                    <h5>Cleaning Services</h5>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Kitchen</a></li>
                        <li><a href="#">Bathroom</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 myCols">
                    <h5>Handyman Services</h5>
                    <ul>
                        <li><a href="#">Laptop Repair</a></li>
                        <li><a href="#">AC Repair</a></li>
                        <li><a href="#">Fride Repair</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="social-networks">
            <a href="#" class="twitter"><i class="fa fa-twitter-square"></i></a>
            <a href="#" class="facebook"><i class="fa fa-facebook-official"></i></a>
            <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
        </div>
        <div class="footer-copyright">
            <p> A 2018 Copyright. All rights reserved.</p>
        </div>
    </footer>






</body>
</html>