<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
    <%
response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
if(session.getAttribute("user")==null){
response.sendRedirect("login.jsp");
  }
  %>
    <title>Settings</title>
    
    <link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
   

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="bootstrap/js/bootstrap.min.js"></script>
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
    *{
        font-family: Segoe UI;
    }

        .well{
            width:70%;
        }
       

body{
    background-image: url("images/back.jpg");
    background-size:100% 100%;
}





.container-fluid>.navbar-collapse, .container-fluid>.navbar-header, .container>.navbar-collapse, .container>.navbar-header {
    margin-right: 0px;
    margin-left: 0px;
}
.center-block {
  
   margin-left:12%;
   width:90%;
   display:block;
   
}

    </style>
</head>
<body style="padding-top:10px;"><!--Body starts-->


<div class="container "><!--container starts-->

<!--Navigation Bar starts-->

    <div class="row">

        <div class="col-md-12">

          <%@include file="common/navbar.jsp"%>

            <hr>
  
        </div>
    </div>

<!--Navigation Bar ends-->
<hr/>


  
    <div class="row">
         <div class="center-block">
        <div class="col-lg-6 col-lg-offset-3">
            <form method="post" action="settings_back.jsp">
                <div class="well">
                    <h2>Change your Password</h2>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                                    <input type="password" name="opassword" placeholder="Old password" required class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                    <input  type="password" name="npassword" placeholder="New Password"  required class="form-control" />
                            
                            </div>
                          </div>
                            <br>

                             <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                    <input  type="password" name="cpassword" placeholder="Confirm Password"  required class="form-control" />
                            
                            </div>
                            <br>
                            
                        </div>
                        <button type="submit" name="go" class="btn btn-block btn-danger">Change</button>
                            
                           
                </div>
            </form>
        </div>
     
        
     </div> 
     </div>

     <!--row ends-->
       </div><!--container ends-->  
 

     <hr/>
     

     
    

   
     <div class="container-fluid">
     <div class="row">
        <div class="col-md-12">


          <%@include file="common/footer.jsp"%>
      
   

        </div>
    </div>

     </div><!--container ends-->         
        



    </body>
    </html>