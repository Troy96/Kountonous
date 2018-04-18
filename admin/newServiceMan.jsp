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
  	 		width:80%;
   			display:block;
    	
    	}
    </style>
    

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<%@include file="admin_common/navbar.jsp"%>
			</div>
			<br/>
		</div>



		<div class="row">
			<div class="col-lg-6">
				<div class="jumbotron">
					<div class="well">
						<h4 class="text-center">Add new Serviceman</h4>
						<hr/>


			
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
                   <input type="button" value="Submit" id="go" class="btn btn-primary btn-block">
                </div>
              </div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="jumbotron">
						<div class="well">

								
         							
                        		
                    		</div>
                    	</div>

						</div>

					</div>
				</div>




			
		



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

  


		$.post("newServiceMan_back.jsp",
		{
		  saadhar : Aadhar,
      sname : Name,
      saddress : Address,
      smobile : Mobile
		},
		function(data,status){


			alert(data);

			});


	});
});
  </script> 




</body>
</html>