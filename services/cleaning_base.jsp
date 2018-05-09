<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<html>
<title>Cleaning Services</title>
<head>
  	
 
  <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="../bootstrap/js/bootstrap.min.js"></script>
    
  
<link rel="stylesheet" href="../css/styles.css">  
  
  <style>
  body{
    background-image: url("../images/back.jpg");
    background-size: 100% 100%;

  	font-family: "Segoe UI";
    padding-top: 50px;
  }
  a{
    color:blue;
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
  h2 > a{
    color:#8764ca;
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




	<div class="row">
		<div class="col-lg-6">
			
				<img src="../images/clean_home.jpg" width="550" height="220">
			
		</div>
		<div class="col-lg-6">
			<div class="para">
				<p>A clean home is a happy home. Timesaverz brings professional home cleaning services right to your doorstep across Mumbai, Navi Mumbai and Thane. All our agents are background verified and equipped with the latest equipment and chemicals to ensure that your house is left spotlessly clean and sanitised. Choose from a wide range of services ranging from deep home cleaning, sofa cleaning, kitchen cleaning,bathroom cleaning, loft cleaning, balcony cleaning, carpet cleaning, fridge cleaning, mattress cleaning, office cleaning and a whole lot more sanitisation services!</p>
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
          <li class="breadcrumb-item"><a href="../services.jsp">Services</a></li>
          <li class="breadcrumb-item"><a href="cleaning_base.jsp">Cleaning</a></li>
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
                <h1>Select the Cleaning Services as per your needs.</h1>
            </div>

            <div class="row">
            	<div class="col-lg-4">
            	<div class="image-base">	
            	<a href="../getAllServiceManToUsers.jsp?categ=1"><img class="img-circle" src="../images/clean_home.jpg" width="150" height="150"></a>
            	</div>
            </div>
            	<div class="col-lg-8">
            	<div class="wrapper">
            	<div class="heading">
            	<h2><a  href="../getAllServiceManToUsers.jsp?categ=1">Home</a></h2>
            </div>
            
            	<p style="text-align: left">A healthy home is a happy home. Our cleaning solutions are specifically designed so that every nook and corner of your home shines like new!</p>
            	</div>
            	</div>	
            </div>
            <hr/>
              <div class="row">
            	<div class="col-lg-4">
            	<div class="image-base">	
            	<a href="../getAllServiceManToUsers.jsp?categ=2"><img class="img-circle" src="../images/carpet1.jpg" width="150" height="150"></a>
            	</div>
            </div>
            	<div class="col-lg-8">
            	<div class="wrapper">
            	<div class="heading">
            	<h2><a  href="../getAllServiceManToUsers.jsp?categ=2">Carpet</a></h2>
            </div>
            
            	<p style="text-align: left">Get your carpets looking brand new and fresh. Get our exclusive carpet cleaning and see the difference.</p>
            	</div>
            	</div>	
            </div>

       
             
        </div>

      </div>
</section>
</aside>  
            

</div>

<br/><br/>

<div class="container-fluid">
     <div class="row">
        <div class="col-md-12">


          <%@include file="common/footer.jsp"%>
      
   

        </div>
    </div>

     </div><!--container ends-->         
         


</body>
</html>
