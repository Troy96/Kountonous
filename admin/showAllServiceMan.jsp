<%@page language="java" import="java.sql.*, java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<title>Show All Serviceman</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
	<title>Admin Block</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/styles.css">

    <style>
    	.jumbotron > h3{
    		text-align: center;
    		font-size: 2em;
    		font-style: italic;
    		font-weight: bold;
    	}
    	.jumbotron > h6{
    		text-align:center;
    	}
    	.content-center{
        margin-left: auto;
        width:90%;
        display:block;
      	}
      	a{
      		color:black;
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
					<h3>List of All verified and registered servicmen</h3>
					<h6>Click on the aadhar number to display a particular service man</h6>
				</div>
			</div>
		</div>

		<div class="row content-center">

			<%
			String aadharno,name,num,add;
			aadharno=name=num=add=" ";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
			PreparedStatement ps = con.prepareStatement("SELECT * FROM serviceman");
			ResultSet rs = ps.executeQuery();
			



			%>
			<div class="col-lg-12 ">

				<table class="table table-hover">
    				<thead>
    					
      					<tr>
        					<th>Aadhar Card No.</th>
        					<th>Fullname</th>
        					<th>Residential Address</th>
        					<th>Contact Number</th>
      					</tr>
    				</thead>
    				
    				<tbody>
    					<%
    						while(rs.next()){
    							 aadharno = rs.getString(2);
								 name = rs.getString(3);
								 add = rs.getString(4);
								 num = rs.getString(5);

    					%>
      					<tr>
        					<td><a href="dispServiceMan.jsp?user=<%=aadharno%>"><%=aadharno%></a></td>
        					<td><%=name%></td>
        					<td><%=add%></td>
        					<td><%=num%></td>
      					</tr>

      					<% } %>
      					
    				</tbody>
  				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<%@include file="admin_common/footer.jsp"%>
			</div>
			<br/>
		</div>
	</div>



</body>
</html>