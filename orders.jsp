<%
response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  String var  = (String)session.getAttribute("user");
if(var==null){
response.sendRedirect("login.jsp");
  }
  %>

<%@page language="java" import="java.sql.*, java.util.*"%>

<!DOCTYPE html>
<html>
<head>
  <title>Orders Histry</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
 
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/styles.css">
   
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
        <%@include file="common/navbar.jsp"%>
      </div>
      <br/>
    </div>

    <div class="row">
      <div class="col-lg-12">
        <div class="jumbotron">
          <h3>Your Order History</h3>
         
        </div>
      </div>
    </div>

    <div class="row content-center">

      <%

      String oid,add,unum,servName,servNum,sDate,sTime,sCost,sType,sMain,sCateg;
      oid=add=unum=servName=servNum=sDate=sTime=sCost=sType=sMain=sCateg=" ";
     
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
      PreparedStatement ps = con.prepareStatement("SELECT * FROM orders WHERE uemail=?");
      ps.setString(1,var);
      ResultSet rs = ps.executeQuery();



      %>
      <div class="col-lg-12 ">

        <table class="table table-hover">
            <thead>
              
                <tr>s
                  <th>Order ID</th>                                        
                  <th>Service Address</th>
                  <th>Contact Number</th>
                  <th>Service Man Name</th>
                  <th>Service Man Number</th> 
                  <th>Service Date</th>
                  <th>Service Time</th>
                  <th>Service Cost</th>
                  <th>Service Type</th>
                  <th>Service Main Category</th>
                  <th>Service Sub Category</th>
                </tr>
                              <%
                while(rs.next()){
                   oid = rs.getString(1);
                   add = rs.getString(4);
                   unum = rs.getString(5);
                   servName = rs.getString(6);
                   servNum=rs.getString(8);
                   sDate=rs.getString(9);
                   sTime=rs.getString(10);
                   sCost=rs.getString(11);
                   sType=rs.getString(12);
                   sMain=rs.getString(13);
                   sCateg=rs.getString(14);
              %>
            </thead>


            
            <tbody>

                <tr>
                  <td><%=oid%></td>
                  <td><%=add%></td>
                  <td><%=unum%></td>
                  <td><%=servName%></td>
                  <td><%=servNum%></td>
                  <td><%=sDate%></td>
                  <td><%=sTime%></td>
                  <td><%=sCost%></td>
                  <td><%=sType%></td>
                  <td><%=sMain%></td>
                  <td><%=sCateg%></td>
                 
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