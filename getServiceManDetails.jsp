<%
response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
if(session.getAttribute("user")==null){
response.sendRedirect("login.jsp");
  }
  %>
<%@page language="java" import="java.sql.*, java.util.*"%>
<%

String suser = (String)session.getAttribute("user");
if(suser==null){
  response.sendRedirect("login.jsp");
}


%>
<!DOCTYPE html>
<html>
<head>
	<title>Serviceman Details</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
    <meta http-equiv="Cache-Control" content="no-store"/>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <script src="bootstrap/js/bootstrap.min.js"></script>
    

    <style>
    body{
    	background-image: url("images/back.jpg");
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
				<%@include file="common/navbar.jsp"%>
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

          String category = (String)request.getParameter("categ2"); //getting the service category to display the available serviceman here!!---
          String categ_serv = (String)request.getParameter("service_id");
		  
			String aadharId,name,num,add;
			aadharId=name=num=add=" ";
     
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
			PreparedStatement ps = con.prepareStatement("SELECT * FROM serviceman WHERE `aadharno`=?");
			ps.setString(1,category);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
      aadharId = rs.getString(2);
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
   		
                        		
    <h5>Profile Picture</h5>
                            		
    
    	<img src="images/serviceman_profile/<%=category%>.jpg" width=290 height=200><br/>
   
	</div>
	<div class="col-lg-4" id="shift">
  			
    
   <h5>Aadhar Card Front Picture</h5>
                            		
    
    	<img src="images/serviceman_aadhar_card/<%=category%>front.jpg" width=290 height=200><br/>
    
	
	</div>
     <div class="col-lg-4">
     
    <h5>Aadhar Card Back Picture</h5>
    
    
    	<img src="images/serviceman_aadhar_card/<%=category%>back.jpg" width=290 height=200><br/>
    
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

   <a href="services/<%=categ_serv%>.jsp?tag=<%=aadharId%>"><input type="button" class="btn btn-primary" value="Proceed">
   
   
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

  	
  		
  		printDoc();
  		
  		
  		

  		});
  		$("#reload").click(function(){
  			location.reload(true);
  		});
  		function printDoc(){
  			window.print();
  		}
  		


  		

  	});
  </script>
  <script>
  	function myFunction() {
    		location.reload(true);
		}

  </script>
  
  



</body>
</html>