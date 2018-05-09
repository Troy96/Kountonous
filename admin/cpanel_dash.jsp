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
	<title>Admin Block</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/styles.css">
    <style>
    	.well{
    		font-family: Segoe UI;
    		font-style: italic;
    		

    	}
    	.content-center{
   			margin-left: auto;
  	 		width:63%;
   			display:block;
    	
    	}
    	a{
    		color:#000;
    	}
    </style>
    

</head>
<body style="padding-top: 100px;">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<%@include file="admin_common/navbar.jsp"%>
			</div>
			<br/>
		</div>



		<div class="row">
			<div class="col-lg-12">
				<div class="jumbotron">
					<div class="well">
						<h4 class="text-center">Welcome Admin! What you would like to do?</h4>
						<hr/>
							<div class="container">
								<div class="row content-center">
									<div class="col-lg-12">
										<a href="newServiceMan.jsp"><input type="button" value="Add  New Service Man" class="btn btn-primary"></a>
									</div>
									
								</div>
								<hr/>


								<div class="row content-center">
									<div class="col-lg-6">
										<a href="showAllServiceMan.jsp"><input type="button" value="Display All Service Men" class="btn btn-danger"></a>
									</div>
								</div>
								<hr/>


								<div class="row content-center">
									<div class="col-lg-12">
										<a href="showAllUsers.jsp"><input type="button" value="Display All Users" class="btn btn-info"></a>
									</div>
									
								</div>
								<hr/>
								



						</div>
					</div>
				</div>
			</div>
		</div>

		</div>
		<div class="container-fluid">

		<div class="row">
			<div class="col-lg-12">
				<%@include file="admin_common/footer.jsp"%>
			</div>
		</div>
	</div>

	




</body>
</html>