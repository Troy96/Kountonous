<%
response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
if(session.getAttribute("user")==null){
response.sendRedirect("../login.jsp");
  }
  %>
<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<html>
<title>Repair Services</title>
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
			
				<img src="../images/ac1.png" width="550" height="220">
			
		</div>
		<div class="col-lg-6">
			<div class="para">
				<p>Kountonous offers maintaining / servicing / repairing services for gadgets of all brands across Mumbai, Navi Mumbai and Thane. So whether you are looking for AC repair, AC installation, AC servicing, computer repair, online mobile repair at home for mobile screen damage; mobile button issues; display problems; water damage; charging issue, laptop repair, washing machine repair, AC gas repair, home appliances repair or gadget repair you can be assured of getting reliable services on Kountonous.</p>
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
          <li class="breadcrumb-item"><a href="repairs_base.jsp">Repairs</a></li>
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
                <h1>Select the Repair Services as per your needs.</h1>
            </div>

            <div class="row">
            	<div class="col-lg-4">
            	<div class="image-base">	
            	<a href="../getAllServiceManToUsers.jsp?categ=5"><img class="img-circle" src="../images/ac2.jpg" width="150" height="150"></a>
            	</div>
            </div>
            	<div class="col-lg-8">
            	<div class="wrapper">
            	<div class="heading">
            	<h2><a  href="../getAllServiceManToUsers.jsp?categ=5">AC</a></h2>
            </div>
            
            	<p style="text-align: left">Keep your cool when your AC is down and out. Get a Kounotnous professional now and feel the change in your room temperature (literally).</p>
            	</div>
            	</div>	
            </div>
            <hr/>

             <div class="row">
            	<div class="col-lg-4">
            	<div class="image-base">	
            	<a href="../getAllServiceManToUsers.jsp?categ=6"><img class="img-circle" src="../images/laptop1.jpg" width="150" height="150"></a>
            	</div>
            </div>
            	<div class="col-lg-8">
            	<div class="wrapper">
            	<div class="heading">
            	<h2><a  href="../getAllServiceManToUsers.jsp?categ=6">Laptop</a></h2>
            </div>
            
            	<p style="text-align: left">Don't let the tech geek in you scream out in frustration. Let Kountonous save the day and get your laptop fixed in a jiffy!</p>
            	</div>
            	</div>	
            </div>
           

             

             
            
        
        </div>
      </div>
</section>
</aside> 
<br/> 
            
            </div>
            <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12">
              
                  <%@include file="../../common/footer.jsp"%>

              </div>
            </div>

</div>
         


</body>
</html>
