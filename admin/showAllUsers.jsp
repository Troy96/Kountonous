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
					<h3>List of All Registered Users</h3>
				</div>
			</div>
		</div>

		<div class="row content-center">

			<%
			String id,mail,name,add,mob;
			id=mail=name=add=mob=" ";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
			PreparedStatement ps = con.prepareStatement("SELECT * FROM user");
			ResultSet rs = ps.executeQuery();
			



			%>
			<div class="col-lg-12 ">

				<table class="table table-hover">
    				<thead>
    					
      					<tr>
        					<th>S.No</th>
        					<th>Full Name</th>
                  <th>Email</th>
        					<th>Residential Address</th>
        					<th>Contact Number</th>
                </tr>
    				</thead>
    				
    				<tbody>
    					<%
    						while(rs.next()){
    							 id = rs.getString(1);
								   name = rs.getString(2);
								   mail = rs.getString(3);
								   mob = rs.getString(4);
                   add=rs.getString(5);


    					%>
      					<tr>
        					<td><%=id%></a></td>
        					<td><%=name%></td>
        					<td><%=mail%></td>
        					<td><%=add%></td>
                  <td><%=mob%></td>
                  
                  <td><a href="removeUser.jsp?tag2=<%=id%>"><input type="button" name="user_remove" value="Remove User" class="btn btn-danger"></a></td>
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