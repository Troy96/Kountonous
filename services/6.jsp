<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<html>
<title>Laptop Repair Services</title>
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
    width:100%;
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
  .styleLeft{
    text-align: left;
  }
  #id{
    width:100%;
  }
  .leftstyle{
    text-align: left;
  }
  #book{
    margin-right: 36%;
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

    <%
            String servicemanId  = (String)request.getParameter("tag"); 
            String nameOfServiceman=" ";
            Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
      PreparedStatement ps = con.prepareStatement("SELECT * FROM serviceman WHERE `id`=?");
      ps.setString(1,servicemanId);
      ResultSet rs = ps.executeQuery();
      while(rs.next()){
      nameOfServiceman = rs.getString(3);
       
      


        }

          %>


	<div class="row">
		<div class="col-lg-6">
			
				<img src="../images/clean_home.jpg" width="550" height="220">
			
		</div>
		<div class="col-lg-6">
			<div class="para">
				<p>We know your laptop or desktop is very important to you! But what happens when the system starts malfunctioning? Be it a funny noise coming from inside or sudden problems with the keyboard; our door-step experts can come to the rescue. Book a service for anywhere in Mumbai, Navi Mumbai and Thane and ensure that your laptop or desktop is quickly and conveniently repaired without causing anymore stress. Save your precious personal equipment because, everything broken or everything that malfunctions, can be repaired!</p>
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
          <li class="breadcrumb-item"><a href="cleaning_base.jsp">Repair</a></li>
          <li class="breadcrumb-item"><a href="carpet.jsp">Laptop</a></li>
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
                <h1>Book your service as per your needs!</h1>
            </div>
          </div>
      </div>

      <div class="row">
        <div class="col-lg-6 styleLeft">
          <h2>What we'll do</h2>
          <h3>Service Includes:</h3>
         
          <ul>
          <li>Serviced by trained and certified technicians</li>
          <li>Convenience at your doorstep</li>
          <h3>Inspection Time:</h3> 1 Hour
        </ul>
        
         <h3>Service Time:</h3> Depending on the complexity of the job
          
          <h3>No. of Servicemen:</h3> 1
          <h3>Note:</h3>
          Costs mentioned in the rate card are service costs only
Parts replacement, material cost, transportation cost (if applicable) would be on actual and are to be settled with the service partner
Inspection charge if any, would be adjusted against the final bill</p>
      </div>
      <div class="col-lg-6">

         <h4 class="leftstyle">Selected Serviceman:</h4>
         <p class="leftstyle"><%=nameOfServiceman%></p>
              <form>
              <h4 class="leftstyle">Send messgae to Admin</h4>
              <div class="form-group">  
                <input type="text" class="form-control" id="msg" placeholder="Type your message here..." required="true">
              </div>
              <input  type="button" id="msgToAdmin" value="Send" class="btn btn-danger btn-lg">
            </form>


        <form action="bookingDetails.jsp?tag=<%=servicemanId%>" method="POST">
          

          <div class="form-group">
              <div class="input-group">
                <h4 class="leftstyle">Select Date:</h4>
                  <input type="date" name="date" placeholder="Input the date" required class="form-control" />
              </div>
          </div>

          <div class="form-group">
           <h4 class="leftstyle">Select the Time:</h4>
              <select class="form-control" name="time">
                <option>12 to 1PM</option>
                <option>1 to 2PM</option>
                <option>2 to 3PM</option>
                <option>3 to 4PM</option>
                <option>4 to 5PM</option>
                <option>5 to 6PM</option>
                <option>6 to 7PM</option>
              </select>
          </div>

          <div class="form-group">
           <h4 class="leftstyle">Select the Type:</h4>
              <select class="form-control" name="type">
                <option value="17">Anti Virus Installation</option>
                <option value="18">OS Formatting without Backup</option>
                <option value="19">OS Formatting with Backup (upto 20 GB)</option>
                <option value="20">Basic Software Installation</option>
                <option value="21">Complete PC Clean Up</option>
                
              </select>
          </div>

          

        </div>

      

      <input type="submit" class="btn btn-primary btn-lg" id="book" value="Book Service">



    </form>

      </div>
    





</section>
</aside>  
 <div class="row">
              <div class="col-lg-12">
              
                  <%@include file="common/footer.jsp"%>

              </div>
            </div>

</div>


<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  <script>

    $(document).ready(function(){
      

        $("#msgToAdmin").click(function(){

          Details = $("#msg").val();

          $.post("sendMessage.jsp",
          {
            sDetails : Details
          },
          function(data,status){
            alert(data);

          });



        });


    });
    
  </script> 
         


</body>
</html>