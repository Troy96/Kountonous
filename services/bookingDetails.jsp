<%
response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
if(session.getAttribute("user")==null){
response.sendRedirect("../login.jsp");
  }
  %>
<%@page language="java" import="java.sql.*, java.io.*, java.util.*"%>


<%

String serv_id = (String)request.getParameter("tag");
String inputDate = (String)request.getParameter("date");
String inputTime = (String)request.getParameter("time");
String inputType = (String)request.getParameter("type");
String uemail = (String)session.getAttribute("user");

String userName,userMail,userContact,userAddress,servAadhar,servName,servMobile,servCateg,serv_Cost,servType,servcategname,servmainname;
userName=userMail=userContact=userAddress=servAadhar=servName=servMobile=servCateg=serv_Cost=servType=servcategname=servmainname=" ";

String firstNameOfUser=" ";
Class.forName("com.mysql.jdbc.Driver");
Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
String query="select u_name,u_mail,u_contact,u_address,aadharno,name,mobile,";
query+="serv_categ,cost,type,sc_name,s_name FROM user as u INNER JOIN serviceman";
query+=" as sm ON sm.id=? INNER JOIN services_categ as sc ON sm.serv_categ=sc.sc_id";
query+=" INNER JOIN services_main as scm ON sc.sm_id=scm.s_id INNER JOIN price as p ON p.id=?";
query+=" WHERE u_mail=?";

PreparedStatement ps2 = con2.prepareStatement(query);

ps2.setString(1,serv_id);
ps2.setString(2,inputType);
ps2.setString(3,uemail);
ResultSet rs2 = ps2.executeQuery();
while(rs2.next()){
	firstNameOfUser = rs2.getString(1).substring(0,rs2.getString(1).indexOf(' '));
	userName = rs2.getString(1);
	userMail = rs2.getString(2);
	userContact = rs2.getString(3);
	userAddress = rs2.getString(4);
	servAadhar = rs2.getString(5);
	servName = rs2.getString(6);
	servMobile = rs2.getString(7);
	servCateg = rs2.getString(8);
	serv_Cost = rs2.getString(9);
  servType=rs2.getString(10);
  servcategname =rs2.getString(11);
  servmainname = rs2.getString(12);

}

%>



<!DOCTYPE html>
<html>
<head>
	<title>Booking Details</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
    <meta http-equiv="Cache-Control" content="no-store"/>
	
   <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="../bootstrap/js/bootstrap.min.js"></script>
    
  
<link rel="stylesheet" href="../css/styles.css">  
    

    <style>
    body{
    	background-image: url("../images/back.jpg");
    	background-size: 100% 100%;
    	padding-top: 40px;
    }

    	.jumbotron > h3{
    		text-align: center;
    		font-size: 2em;
    		font-style: italic;
    		font-weight: bold;
    	}
    	.content-center{
        margin: auto;
        width:90%;
        display:block;
      	}
      	a{
      		color:black;
      	}
      	#shift{
      		
      	}
      	.noStyle{
      		font-weight: normal;
      	}
      	
	</style>

	


</head>
<body>
	<div class="container-fluid">
		
    <div class="row">
      <div class="col-lg-12"> <!--Navigation Bar-->
        <%@ include file="common/navbar.jsp"%>
      </div>
      <br/>
    </div><br/><hr/>

		
		<div class="row content-center">

			<div class="col-lg-12 ">

				
				<div id="fill" class = "panel panel-primary">
   				<div class = "panel-heading">
      				<h3 class = "panel-title">Booking details of <%=firstNameOfUser%></h3>
   				</div>
   
   				<div class = "panel-body">
   					
   					<div class="container">
   						<div class="row">
   							<div class="col-lg-6">
   							
   								<h4>User details</h4>
   								<table class = "table">
      								<tr>
         								<th>Full Name:</th><th id="<%=userName%>" class="noStyle"><%=userName%></th>
      								</tr>
      								<tr>
        								<th>Email:</th><th id="umail" class="noStyle"><%=userMail%></th>
      								</tr>
      								<tr>
        								<th>Residential Address:</th><th class="noStyle"><%=userAddress%></th>
      								</tr>
      								<tr>
      									<th>Contact Number:</th><th class="noStyle"><%=userContact%></th>
      								</tr>
      							</table>
   							
   							</div>
   							
   							<div class="col-lg-6">
   							
   								<h4>Serviceman Details</h4>

   								<table class = "table">
      								<tr>
         								<th>Display Picture:</th><th><img src="../images/serviceman_profile/<%=servAadhar%>.jpg" class="img-rounded" width=150 height=150></th>
      								</tr>
      								<tr>
      									<th>Serviceman's Full Name</th><th class="noStyle"><%=servName%></th>
      								</tr>
 
      								
      								<tr>
      									<th>Contact Number:</th><th class="noStyle"><%=servMobile%></th>
      								</tr>
      							</table>

   							</div>

   						</div>
   						<div class="row">
   							<div class="col-lg-6">
   							<table class="table">
   								<tr>
   									<th>Date of Service :</th><th class="noStyle"> <%=inputDate%></th>
   								</tr>
   								<tr>
   									<th>Time of Service :</th><th class="noStyle"> <%=inputTime%></th>
   								</tr>
                  <tr>
                    <th>Cost of Service :</th><th class="noStyle">&#8377; <%=serv_Cost%></th>
                  </tr>
                  <tr>
                    <th>Type of Service :</th><th class="noStyle"><%=servType%></th>
                  </tr>
   							</table>
   						</div>
              <div class="col-lg-6">
                <table class="table">
                <tr>
                  <th>Main Category of Service :</th><th class="noStyle"> <%=servmainname%></th>
                </tr>
                <tr>
                  <th>Sub Category of Service :</th><th class="noStyle"> <%=servcategname%></th>
                </tr>
              </table>
              </div>
   						</div>
   					</div>

   					
   				</div>
   				<div class="panel-footer">
            
           <form action="../insertOrders.jsp" method="post">
            <!--Sending user details to orders page hidden from the user-->
            <input type="hidden" name="uname" value="<%=userName%>">
            <input type="hidden" name="umail" value="<%=userMail%>">
            <input type="hidden" name="uadd" value="<%=userAddress%>">
            <input type="hidden" name="uphone" value="<%=userContact%>">

            <!--Sending serviceman details to orders page hidden from the user-->
            <input type="hidden" name="sname" value="<%=servName%>">
            <input type="hidden" name="saadhar" value="<%=servAadhar%>">
            <input type="hidden" name="sphone" value="<%=servMobile%>">

             <!--Sending booking details to orders page hidden from the user-->
            <input type="hidden" name="bdate" value="<%=inputDate%>">
            <input type="hidden" name="btime" value="<%=inputTime%>">
            <input type="hidden" name="bcost" value="<%=serv_Cost%>">
            <input type="hidden" name="btype" value="<%=servType%>">
            <input type="hidden" name="bservmain" value="<%=servmainname%>">
            <input type="hidden" name="bservcateg" value="<%=servcategname%>">


          
            <input type="submit" id="printBooking" class="btn btn-info" value="Comfirm Booking!"></a>
            </form>
   				
   				</div>
				
				</div>
			</div>
		</div>

		<div id="foot" class="row">
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
        $("#printBooking").click(function(){
         alert("Hey"+userName);

       });
  
    });


  </script>
	</body>
	</html> 
         							
  /   
   