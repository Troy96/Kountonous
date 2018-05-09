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
	<title>Notifications</title>
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
<body style="padding-top: 210px;">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<%@include file="admin_common/navbar.jsp"%>
			</div>
			<br/>
		</div>

		<%
			String mid,sender,details,datetime,email;
			email=mid=sender=details=datetime=" ";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
			

			PreparedStatement ps = con.prepareStatement("SELECT * FROM msg");
			ResultSet rs = ps.executeQuery();
			
			


			%>



		<div class="row">
			<div class="col-lg-12">
				<div class="jumbotron">
					<div class="well">
						<h4 class="text-center">Some messages from our customers!</h4>
						<hr/>
						<div id="content">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>S.No.</th>
									<th>Message Sender</th>
									<th>Message Details</th>
									<th>Date and Time</th>
								</tr>
							</thead>
							
							<tbody>

								<%
								while(rs.next()){
								mid=rs.getString(1);
								sender=rs.getString(2);
								details=rs.getString(3);
								datetime=rs.getString(4);

								PreparedStatement ps1 = con.prepareStatement("SELECT * FROM user WHERE `u_id`=?");
			ps1.setString(1,sender);
			ResultSet rs1 = ps1.executeQuery();
			while(rs1.next()){
				email = rs1.getString(3);			}


								%>

								<tr>
									<td><%=mid%></td>
									<td><%=email%></td>
									<td><%=details%></td>
									<td><%=datetime%></td>
								</tr>

							</tbody>
							<% } %>
						</table>
					</div>
						<div class="row">
							<div class="col-lg-12">
								<td><input type="button" id="del" value="Clear" class="btn btn-primary"></a></td>
							</div>
						</div>
							
								



						</div>
					</div>
				</div>
			</div>
		</div>
		<br/>



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
	$("#del").click(function(){
	
	$.post("clearAll.jsp",
	{

	},
	function(data,status){	
  	
  	$("#content").load("putNoMsg.html");
  	$("#del").hide();

  	});

		


	});
});
  </script> 


</body>
</html>