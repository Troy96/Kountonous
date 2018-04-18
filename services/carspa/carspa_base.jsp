<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<html>
<title>Carspa Services</title>
<head>
  	
 
  <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<link rel="stylesheet" href="../../css/styles.css">  
  
  <style>
  body{
    background-image: url("../../images/back.jpg");
    background-size: 100% 100%;

  	font-family: "Segoe UI";
    padding-top: 50px;
  }
 h2 > a{
    color:#8764ca;
  }
  #myFooter a{
    color:grey;

  }
  a:link{
    text-decoration: none !important;
  }

  #info-block section {
    border: 2px solid black;
    background-color: #e8e3e3c9;
    width:100%;
    display: block;
    margin:auto;
}

.file-marker > div {

  text-align: center;
  font-size: 16.5px;
    padding-left:10px;
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
    margin-bottom: 20px;
}
  .coupon{
  	margin-top: 15px;
  	text-align: center;
  	background-color: yellow;
  	width:100%;
  	height:50px;
  	margin-bottom: 15px;
  }
  .coupon-text p{
  	padding-top: 15px;
  }
  .heading{
  	padding-right: 90%;
  }
  .image-base{
  	margin-top: 22px;
  }
  .wrapper{
  	display: block;
    margin:auto;
    width:90%;
  }
  hr{
  	border-top: 1px solid grey;
  }
</style>

 </head>

 <body>

  <div class="container">
    <div class="row">
      <div class="col-lg-12"> <!--Navigation Bar-->
        <%@ include file="../common/navbar.jsp"%>
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




	<div class="row">
		<div class="col-lg-6">
			
				<img src="../../images/clean_home.jpg" width="550" height="220">
			
		</div>
		<div class="col-lg-6">
			<div class="para">
				<p>Taking the ultimate measures to ensure your precious car is always maintained is one thing. But keeping it squeaky clean is another. The upholstery, interiors, foot space, seatbelts, door handles all need special cleaning and care to maintain the new-like sheen. Depending on the time at hand, your budget and current condition of the car, you can choose between a complete basic car spa, premium car spa or interior car spa service to give your car the care it truly deserves.</p>
			</div>
		</div>
	</div>


	<!--To be used for coupon notice-->
  <div class="row">
    <div class="col-lg-12">
	     <div class="coupon">
		      <div class="coupon-text">
		        <p>Check here for latest discount deals and coupons!!</p>
		      </div>
	     </div>
     </div>
   </div>


   <div class="row">
    <div class="col-lg-12">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="../../services.jsp">Services</a></li>
          <li class="breadcrumb-item"><a href="carspa_base.jsp">Car Spa</a></li>
        </ol>
      </nav>
    </div>
  </div>

 

<br>
<aside id="info-block">
<section class="file-marker">
        
          <div class="row">
            <div class="col-lg-12">
            <div class="box-title">
                <h1>Select the Carspa Services as per your needs.</h1>
            </div>

            <div class="row">
            	<div class="col-lg-4">
            	<div class="image-base">	
            	<img class="img-circle" src="../../images/clean_home.jpg" width=150" height="150">
            	</div>
            </div>
            	<div class="col-lg-8">
            	<div class="wrapper">
            	<div class="heading">
            	<h2><a  href="interior.jsp">Interior</a></h2>
            </div>
            
            	<p style="text-align: left">Car Spa focused to give your car interiors the ultimate shine and you get a comfortable drive too</p>
            	</div>
            	</div>	
            </div>
            <hr/>

             <div class="row">
            	<div class="col-lg-4">
            	<div class="image-base">	
            	<img class="img-circle" src="../../images/clean_home.jpg" width=150" height="150">
            	</div>
            </div>
            	<div class="col-lg-8">
            	<div class="wrapper">
            	<div class="heading">
            	<h2><a  href="complete.jsp">Complete</a></h2>
            </div>
            
            	<p style="text-align: left">A premium complete car spa with advanced cleaning methods and highly skilled crew at your doorstep</p>
            	</div>
            	</div>	
            </div>
          

             
        </div>
      </div>
</section>
</aside>  
 <div class="row">
              <div class="col-lg-12">
              
                  <%@include file="../../common/footer.jsp"%>

              </div>
            </div>

</div>
         


</body>
</html>
