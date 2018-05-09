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
	<title>Available Servicemen</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
	
	 <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>

    

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
        margin:auto;
        width:95%;
        display:block;
      	}
      	a{
      		color:black;
      	}
	</style>


</head>
<body style="padding-top: 100px">
	<div class="container-fluid">
    <div class="row">
      <div class="col-lg-12">
         <%@ include file="common/navbar.jsp"%>
           
            <hr>
  
      </div>
    </div>
		

		<div class="row">
			<div class="col-lg-12">
				<div class="jumbotron">
					<h3>List of All Available  Servicmen</h3>
					<h6>Click on the aadhar number to display a particular service man</h6>
				</div>
			</div>
		</div>

		<div class="row content-center">

			<%
       String category = (String)request.getParameter("categ"); //getting the service category to display the available serviceman here!!---

			String id,aadharno,name,num,add,status;
			id=aadharno=name=num=add=" ";
      status="0";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
			PreparedStatement ps = con.prepareStatement("SELECT * FROM serviceman WHERE `serv_categ`=? and `status`=?");
      ps.setString(1,category);
      ps.setString(2,status);
      ResultSet rs = ps.executeQuery();
			



			%>
			<div class="col-lg-12 ">

				<table class="table table-hover">
    				<thead>
    					
      					<tr>
                  <th>S.No.</th>
        					<th>Display Picture</th>
        					<th>Full Name</th>
                  <th>Contact</th>
      					</tr>
    				</thead>
    				
    				<tbody>
    					<%
    						while(rs.next()){
                  id=rs.getString(1);
    						  aadharno = rs.getString(2);
								  name = rs.getString(3);
								  num = rs.getString(5);

    					%>
      					<tr>
                  <td><%=id%></td>
                  <td><img src="images/serviceman_profile/<%=aadharno%>.jpg" class="img-rounded" width=150 height=150><br/></td>	
                  <td><%=name%></td>
        					<td><%=num%></td>
                  <td><a href="services/<%=category%>.jsp?tag=<%=id%>"><input type="button" class="btn btn-info" value="Proceed"></td>
      					</tr>

      					<% } %>
      					
    				</tbody>
  				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<%@include file="common/footer.jsp"%>
			</div>
			<br/>
		</div>
	</div>



</body>
</html>