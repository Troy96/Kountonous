<%
response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
if(session.getAttribute("user1")==null){
response.sendRedirect("cpanel.jsp");
  }
  %>

<%@page language="java" import="java.sql.*, java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
	<title>Add New Serviceman</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/styles.css">
    <style>
    	.well{
    		font-family: Segoe UI;
    		font-style: italic;
    		

    	}
    	.content-center{
   			margin-left: auto;
  	 		width:70%;
   			display:block;
    	
    	}
    </style>
    

</head>
<body style="padding-top: 50px;">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<%@include file="admin_common/navbar.jsp"%>
			</div>
			<br/>
		</div>
    <hr/>



		<div class="row content-center">
			<div class="col-lg-6">
			
				
					
					

			
                    <div class="well">
                    <h2 class="w3-lobster">Please register the service man  here</h2>
                    
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input type="number" id="aadharno" placeholder="Aadhar Card no." required class="form-control" />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                            <input type="text" id="name" placeholder="Full Name" required class="form-control" />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input type="text" id="add" placeholder="Residential Address" required class="form-control" />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input type="number" id="mobile" placeholder="Mobile No." required class="form-control" />
                        </div>

                    </div>
                    <div class="form-group">
           <h4 class="leftstyle">Service Category of Serviceman:</h4>
              <select class="form-control" id="categ">
                <option value="1">1 (Home)</option>
                <option value="2">2 (Carpet)</option>
                <option value="3">3 (Complete)</option>
                <option value="4">4 (Interior)</option>
                <option value="5">5 (AC)</option>
                <option value="6">6 (Laptop)</option>
                <option value="7">7 (General)</option>
                <option value="8">8 (Bed Bugs)</option>
                <option value="9">9 (Electrician)</option>
                <option value="10">10 Plumber)</option>
                <option value="11">11 (Carpenter)</option>

                              </select>
              </div>
                   <div class="form-group">
           <h4 class="leftstyle">Service Status:</h4>
              <select class="form-control" id="status">
                <option value="0">0 (Available)</option>
                <option value="1">1 (Unavailable)</option>
                
              </select>
          </div>
                   <input type="button" value="Submit" id="go" class="btn btn-primary btn-block">
                </div>
       
					
				</div>
				
				</div>




			
		


</div>
<hr/>
  <div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<%@include file="admin_common/footer.jsp"%>
			</div>
		</div>
  </div>

	

	<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  <script>
  	$(document).ready(function(){
	$("#go").click(function(){
		Aadhar = $("#aadharno").val();
		Name = $("#name").val();
		Address = $("#add").val();
		Mobile = $("#mobile").val();
    Categ = $("#categ").val();
    Status = $("#status").val();
   
   
  


		$.post("newServiceMan_back.jsp",
		{
		  saadhar : Aadhar,
      sname : Name,
      saddress : Address,
      smobile : Mobile,
      scateg : Categ,
      sstatus : Status
		},
		function(data,status){


			alert(data);

			});


	});
});
  </script> 




</body>
</html>