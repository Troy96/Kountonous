<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
    <title>Home Page</title>
    
    <link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/w3css.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="bootstrap/js/bootstrap.min.js"></script>
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
    *{
        font-family: Segoe UI;
    }

        .well{
            width:70%;
        }
        
body{
    background-image: url("images/back.jpg");
    background-size:100% 100%;
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


.container-fluid>.navbar-collapse, .container-fluid>.navbar-header, .container>.navbar-collapse, .container>.navbar-header {
    margin-right: 0px;
    margin-left: 0px;
}
.center-block {
  padding-top: 10px;
  padding-bottom: 10px;
   margin-left:auto;
   margin-right:auto;
   width:85%;
   display:block;
   text-align: center;
}
.center-block p{
  font-size:15px;
  font-weight: bold;
  font-style: italic;
}
.container-fluid{
  padding:0px;
  margin:0px;
}

    </style>
</head>
<body style="padding-top:10px;"><!--Body starts-->


<div class="container"><!--container starts-->

<!--Navigation Bar starts-->

    <div class="row">

        <div class="col-md-12">

            <%@ include file="common/navbar.jsp"%>
           
            <hr>
  
        </div>
    </div>

<!--Navigation Bar ends-->
<hr/>


   
    <div class="row">
        <div class="col-md-12">
          <%@include file="common/carousal.jsp"%>   
</div>
        </div>
        <hr/>
        <div class="row center-block">
     
        <div class="col-md-12">

            <div class="content-heading">
                <p>We believe in providing world class service facilty to our customers</p>
            </div>
            
        </div><!--registration column ends-->
     </div>
      <!--row ends-->
     <hr/>



    <div class="row center-block">
      
  <div class="col-lg-4">


  <div class="card" style="width:300px">
  <img class="card-img-top" src="images/Plumbing.jpg" alt="Card image" width="300" height="250">
  <div class="card-body">
    <h4 class="w3-lobster" class="card-title">Plumbing</h4>
   
    <a href="services.jsp" class="btn btn-primary">Check here</a>
  </div>
</div>
</div>


<div class="col-lg-4">
  <div class="card" style="width:300px">
  <img class="card-img-top" src="images/clean_home.jpg" alt="Card image" width="300" height="250" >
  <div class="card-body">
    <h4 class="w3-lobster" class="card-title">Home Cleaning</h4>
   
    <a href="services.jsp" class="btn btn-primary">Check here</a>
  </div>
</div>
</div>

<div class="col-lg-4">
  <div class="card" style="width:300px">
  <img class="card-img-top" src="images/Handyman_Home_Image.jpg" alt="Card image" width="300" height="250">
  <div class="card-body">
    <h4 class="w3-lobster" class="card-title">Plumbing</h4>
   
    <a href="services.jsp" class="btn btn-primary">Check here</a>
  </div>
</div>
</div>
</div>
<hr/>

<div class="row center-block">
  <div class="col-lg-12">
<div class="content-heading">
<p class="text-center">Some Facts</p>
</div>
</div>
</div>


<div class="row center-block">

    <div class="col-lg-4">
      <h1>500+</h1>
        <p><i>Customers served</i></p>
      </div>

      <div class="col-lg-4">
      <h1>150+</h1>
        <p><i>Servicemen</i></p>
      </div>

      <div class="col-lg-4">
      <h1>100+</h1>
        <p><i>Services</i></p>
      </div>
    </div>

  

<hr>

<div class="row center-block">
  <div class="col-lg-12">
<div class="content-heading">
<p>Meet Our Team</p>
</div>
</div>
</div>
<hr/>


  <div class="row">
    <div class="col-lg-3">
      <img class="img-circle" class="card-img-top" src="images/profile-tuhin.jpg" alt="Card image" width="250" height="200">
        <div class="card-body">
          
            <div class="center-social-icons">
              <h4 class="card-title">Tuhin Roy</h4>
            <p style="color:grey" class="card-text">Business Logic Expert</p>

</div>        </div>
        </div>


<div class="col-lg-3">
  
  <img class="img-circle" class="card-img-top" src="images/clean_home.jpg" alt="Card image" width="250" height="200" >
  <div class="card-body">
    
            <div class="center-social-icons">
              <h4 class="card-title">Pavneet Kaur</h4>
              <p style="color:grey" class="card-text">Documentation Expert</p>
          </div>
  </div>
</div>


<div class="col-lg-3">
  <img class="img-circle" class="card-img-top" src="images/Handyman_Home_Image.jpg" alt="Card image" width="250" height="200">
  <div class="card-body">
    
    <div class="center-social-icons">
      <h4 class="card-title">Pulkit Priy</h4>
    <p style="color:grey" class="card-text">Presentation Logic Expert</p>
  </div>
  </div>
</div>

<div class="col-lg-3">
  <img class="img-circle" class="card-img-top" src="images/profile-satyam.jpg" alt="Card image" width="250" height="200">
  <div class="card-body">
    
    <div class="center-social-icons">
      <h4 class="card-title">Satyam</h4>
    <p style="color:grey" class="card-text">Database Logic Expert</p>
  </div>
  </div>
</div>
</div>
<hr/>


</div>




<div class="container-fluid">
     <div class="row">
        <div class="col-md-12">


          <%@include file="common/footer.jsp"%>
      
   

        </div>
    </div>

     </div><!--container ends-->         
    


    </body>
    </html>