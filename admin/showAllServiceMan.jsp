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
        margin: auto;
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
			String aadharno,name,num,add,status,smain,scat;
			aadharno=name=num=add=status=smain=scat=" ";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
			String query = "SELECT  aadharno,name,address,mobile,status,s_name,sc_name"; 
      query += " FROM serviceman as s INNER JOIN services_categ s1 on s.serv_categ=s1.sc_id INNER JOIN services_main s2 on";
      query += " s1.sm_id=s2.s_id ORDER BY s.name";
      Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			



			%>
			<div class="col-lg-12 ">

				<table class="table table-hover">
    				<thead>
    					
      					<tr>
        					<th>Aadhar Card No.</th>
        					<th>Fullname</th>
        					<th>Residential Address</th>
        					<th>Contact Number</th>
                  <th>Service Main</th>
                  <th>Service Category</th> 
                  <th>Working Status</th>
                  <th>Change Working Status (0/1)</th>
      					</tr>
    				</thead>
    				
    				<tbody>
    					<%
    						while(rs.next()){
    							 aadharno = rs.getString(1);
								   name = rs.getString(2);
								   add = rs.getString(3);
								   num = rs.getString(4);
                   status=rs.getString(5);
                   smain=rs.getString(6);
                   scat=rs.getString(7);

    					%>
      					<tr>
        					<td><a href="dispServiceMan.jsp?user=<%=aadharno%>"><%=aadharno%></a></td>
        					<td><%=name%></td>
        					<td><%=add%></td>
        					<td><%=num%></td>
                  <td><%=smain%></td>
                  <td><%=scat%></td>
                  <td><%=status%></td>
                  <td><a href="changeStatus.jsp?tag1=<%=aadharno%>"><input type="button" name="statusChange" value="Change Status" class="btn btn-primary"></a></td>
                  <td><a href="removeServiceman.jsp?tag2=<%=aadharno%>"><input type="button" name="serv_remove" value="Remove Serviceman" class="btn btn-danger"></a></td>
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