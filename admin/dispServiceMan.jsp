<%@page language="java" import="java.sql.*, java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<title>Serviceman Details</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/styles.css">

    <style>
    body{
    	background-image: url("../images/back.jpg");
    	background-size: 100% 100%;
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
	</style>
	


</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<%@include file="admin_common/navbar.jsp"%>
			</div>
			<br/>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="jumbotron">
					<h3>Personal Details of Serviceman</h3>
				</div>
			</div>
		</div>

		<div class="row content-center">

			<%

			String aadharId = request.getParameter("user");
			String aadharno,name,num,add;
			aadharno=name=num=add=" ";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
			PreparedStatement ps = con.prepareStatement("SELECT * FROM serviceman WHERE `aadharno`=?");
			ps.setString(1,aadharId);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				name = rs.getString(3);
				add = rs.getString(4);
				num = rs.getString(5);

				}



			%>
			<div class="col-lg-12 ">

				
				<div class = "panel panel-primary">
   <div class = "panel-heading">
      <h3 class = "panel-title"><%=name%>'s details</h3>
   </div>
   
   <div class = "panel-body">

   	
   	<div class="row">
   		<div class="col-lg-4">
   		<form action = "UploadProfilePic.jsp?userId=<%=aadharId%>" method = "POST" enctype = "multipart/form-data">
                        		
    <h5>Profile Picture</h5>
                            		
    <input type = "file" class="btn btn-danger" class="inp" name = "file" /><br/>
    	<img src="../images/serviceman_profile/<%=aadharId%>.jpg" width=200 height=200><br/>
    <input type = "submit" class="btn btn-danger" value = "Upload Profile Pic" class="btn" /><br/>
   </form>
	</div>
	<div class="col-lg-4" id="shift">
   <form action = "UploadAadharCardFront.jsp?userId2=<%=aadharId%>" method = "POST" enctype = "multipart/form-data">			
    
   <h5>Aadhar Card Front Picture</h5>
                            		
    <input type = "file" class="btn btn-info" class="inp" name = "file" /><br/>
    	<img src="../images/serviceman_aadhar_card/<%=aadharId%>front.jpg" width=200 height=200><br/>
    <input type = "submit" class="btn btn-info" class="btn"" value = "Upload Aadhar Front" /><br/>
	</form>
	</div>
     <div class="col-lg-4">
     <form action = "UploadAadharCardBack.jsp?userId3=<%=aadharId%>" method = "POST" enctype = "multipart/form-data">
    <h5>Aadhar Card Back Picture</h5>
    
    <input type = "file" class="btn btn-success" class="inp" name = "file" /><br/>
    	<img src="../images/serviceman_aadhar_card/<%=aadharId%>back.jpg" width=200 height=200><br/>
    <input type = "submit" class="btn btn-success" class="btn" value = "Upload Aadhar Back" /><br/>
	</form>
	</div>
</div>
         							
      
   </div>
   
   <table class = "table">
      <tr>
         <th>Full Name:</th><th><%=name%></th>
      </tr>
      <tr>
        <th>Aadhar Number:</th><th><%=aadharId%></th>
      </tr>
      <tr>
        <th>Residential Address:</th><th><%=add%></th>
      </tr>
      <tr>
        <th>Contact Number:</th><th><%=num%></th>
      </tr>
   </table>
   <div class="panel-footer">
   	<p><i>Signature of the Police Officer</i></p><br/><br/>
   	<input type="button" class="btn btn-primary" id="print" value="Print">
   </div>
   
</div>
</div>


		</div>

		
	</div>

	<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  <script>
  	$(document).ready(function(){

  		$("#print").click(function(){

  		$(".btn").hide();
  		
  		$(".inp").hide();
  		
  		printDoc();
  		

  		});
  		function printDoc(){
  			window.print();
  		}

  		

  	});
  </script>



</body>
</html>