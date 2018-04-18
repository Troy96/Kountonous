<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>

<html>
<title>All Services</title>
<head>
  	
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
  

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
  
  
  </style>

</head>
<body>


  <div class="container">

    <div class="row">

      <div class="col-lg-12"> <!--Navigation Bar-->
        <%@ include file="common/navbar.jsp"%>
    
      </div>
      <br/>
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
              <a href="services/cleaning/cleaning_base.jsp"><img class="img-rounded" src="images/clean_home.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/cleaning/cleaning_base.jsp">Cleaning</a></h3>
              <p><a href="services/cleaning/bathroom.jsp">Bathroom</a></p>
              <p><a href="services/cleaning/carpet.jsp">Carpet</a></p>
              
              
              </div>
              </div>


              <div class="col-lg-6">
              <a href="services/repairs/repairs_base.jsp"><img class="img-rounded" src="images/repair-laptop.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/repairs/repairs_base.jsp">Repairs</a></h3>
              <p><a href="services/repairs/ac.jsp">AC</a></p>
              <p><a href="services/repairs/laptop.jsp">Laptop</a></p>
              
        
              
              </div>
              </div>

              </div>
          


              <div class="row">
              <div class="col-lg-6">
              <a href="services/carspa/carspa_base.jsp"><img class="img-rounded" src="images/car-spa.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/carspa/carspa_base.jsp">Car Spa</a></h3>
              <p><a href="services/carspa/complete.jsp">Complete</a></p>
              <p><a href="services/carspa/interior.jsp">Interior</a></p>
              
              
              </div>
              </div>

              <div class="col-lg-6">
              <a href="services/pestcontrol/pestcontrol_base.jsp"><img class="img-rounded" src="images/pest-control.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/pestcontrol/pestcontrol_base.jsp">Pest Control</a></h3>
              <p><a href="services/pestcontrol/general.jsp">General</a></p>
              <p><a href="services/pestcontrol/bedbugs.jsp">Bed Bugs</a></p>
              
              
              </div>
              </div>

              </div>

               <div class="row">
              <div class="col-lg-6">
              <a href="services/paint/paint_base.jsp"><img class="img-rounded" src="images/painter.jpg" alt="No Image" width="200" height="200"></a>
              
              <div class="text-services">
              
              <h3><a href="services/paint/paint_base.jsp">Paint</a></h3>
              <p><a href="services/paint/freshpaint.jsp">Fresh-Paint</a></p>
              <p><a href="services/paint/repaint.jsp">Repaint</a></p>
             
              
              </div>
              </div>

              <div class="col-lg-6">
              <a href="services/handyman/handyman_base.jsp"><img class="img-rounded" src="images/carpenter.jpg" alt="No Image" width="200" height="200"></a>

              
              <div class="text-services">
              
              <h3><a href="services/handyman/handyman_base.jsp">Handyman</a></h3>
              <p><a href="services/handyman/electrician.jsp">Electrician</a></p>
              <p><a href="services/handyman/carpenter.jsp">Carpenter</a></p>
              <p><a href="services/handyman/plumber.jsp">Plumber</a></p>
              
              
              </div>

            </div>
              </div>

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