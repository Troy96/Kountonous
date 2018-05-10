<%
response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
if(session.getAttribute("user")==null){
response.sendRedirect("login.jsp");
  }
  %>
<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>

<html>
<title>All Services</title>
<head>
  	
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
    

  
  

  <style>
  *{
    font-family: "Segoe UI";
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

 
  a{
    color:#ded5d7a1;
  }
 

#myFooter{
  background-color: #535379;
}


body{
  background-image: url('images/back.jpg');
    background-size: 100% 100%;
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
#zoom:hover{
  transform: scale(1.2);
}
  
  
  </style>

</head>
<body>


  <div class="container">

    <div class="row">

        <div class="col-md-12">

            <%@ include file="common/navbar.jsp"%>
           
            <hr>
  
        </div>
    </div>

    <%!
      String validUser="";
    %>
    <%try{
       validUser = user.substring(0,user.indexOf('@'));
    }
    catch(Exception e){
      validUser="Guest";
  }
    %>
    

    <h3><b>Welcome <%=validUser%></b></h3>

    <hr/>  
  


<div class="row">
  <div class="col-lg-12">
    <%@include file="common/carousal.jsp"%>

  </div>
</div>
<hr/>

<div class="row">
  <div class="col-lg-12">

<aside id="info-block">
<section class="file-marker">
        <div>
            <div class="box-title">
                <h1>All Services</h1>
            </div>

            <div class="container">
              
              <div class="row">
                <div class="col-lg-12">
                  <p class="heading"> Welcome to Kountonous Services! Choose from a variety of services which perfectly fits your needs.</p>
              </div>


              <div class="row">
              <div class="col-lg-6">
              <a href="services/cleaning_base.jsp"><img class="img-rounded" id="zoom" src="images/clean_home.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/cleaning_base.jsp">Cleaning</a></h3>
              <p><a href="getAllServiceManToUsers.jsp?categ=1">Home</a></p>
              <p><a href="getAllServiceManToUsers.jsp?categ=2">Carpet</a></p>
              
              
              </div>
              </div>


              <div class="col-lg-6">
              <a href="services/repairs_base.jsp"><img class="img-rounded" id="zoom" src="images/repair-laptop.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/repairs_base.jsp">Repairs</a></h3>
              <p><a href="getAllServiceManToUsers.jsp?categ=5">AC</a></p>
              <p><a href="getAllServiceManToUsers.jsp?categ=6">Laptop</a></p>
              
        
              
              </div>
              </div>

              </div>
              <br/><br/>
          


              <div class="row">
              <div class="col-lg-6">
              <a href="services/carspa_base.jsp"><img class="img-rounded" id="zoom" src="images/car-spa.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/carspa_base.jsp">Car Spa</a></h3>
              <p><a href="getAllServiceManToUsers.jsp?categ=3">Complete</a></p>
              <p><a href="getAllServiceManToUsers.jsp?categ=4">Interior</a></p>
              
              
              </div>
              </div>

              <div class="col-lg-6">
              <a href="services/pestcontrol_base.jsp"><img class="img-rounded" id="zoom" src="images/pest-control.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/pestcontrol_base.jsp">Pest Control</a></h3>
              <p><a href="getAllServiceManToUsers.jsp?categ=7">General</a></p>
              <p><a href="getAllServiceManToUsers.jsp?categ=8">Bed Bugs</a></p>
              
              
              </div>
              </div>

              </div>
              <br/><br/>

               <div class="row">
              

              <div class="col-lg-12">
              <a href="services/handyman_base.jsp"><img class="img-rounded" id="zoom" src="images/carpenter.jpg" alt="No Image" width="200" height="200"></a>

              
              <div class="text-services">
              
              <h3><a href="services/handyman_base.jsp">Handyman</a></h3>
              <p><a href="getAllServiceManToUsers.jsp?categ=9">Electrician</a></p>
              <p><a href="getAllServiceManToUsers.jsp?categ=10">Carpenter</a></p>
              <p><a href="getAllServiceManToUsers.jsp?categ=11">Plumber</a></p>
              
              
              </div>

            </div>
              </div>
              <br/><br/>

              </div>

           
         </div>
</section>
</aside>
</div>
</div>

<div class="row">
  <div class="col-lg-12">
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

</div>
</div>

</div>
<div class="conatiner-fluid">
<div class="row">
  <div class="col-lg-12">
  
    <%@include file="common/footer.jsp"%>

  </div>
</div>
</div>
  



</body>
</html>