<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
    <title>Login</title>
    
    <link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/styles.css">
   

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
    *{
        font-family: Segoe UI;
    }

        .well{
            width:70%;
        }
        #myFooter .facebook:hover{
  color:#0077e2;
}
body{
    background-image: url("../images/back.jpg");
    background-size:100% 100%;
}
#myFooter .footer-copyright{
  background-color: #383737;
  padding-top:3px;
  padding-bottom:3px;
  text-align: center;
}

#myFooter .footer-copyright p{
  margin:10px;
  color: #ccc;
}

#myFooter h5{
  font-size: 18px;
    color: white;
    font-weight: bold;
    margin-top: 30px;
}
#myFooter a:hover, #myFooter a:focus{
  text-decoration: none;
  color:white;
}

 
  a{
    color:#ded5d7a1;
  }
 

#myFooter{
  background-color: #535379;
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
<body style="padding-top:170px;"><!--Body starts-->


<div class="container "><!--container starts-->

<!--Navigation Bar starts-->

    <div class="row">

        <div class="col-md-12">

          <%@include file="admin_common/navbar.jsp"%>

   
  
        </div>
    </div>

<!--Navigation Bar ends-->



  
    <div class="row">
         <div class="center-block">
        <div class="col-lg-6 col-lg-offset-3">
            <form method="get" action="cpanel_back.jsp">
                <div class="well">
                    <h2>Hey Admin! Login to your dashboard</h2>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                                    <input type="email" name="email" placeholder="Email address" required class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                    <input  type="password" name="password" placeholder="Password"  required class="form-control" />
                            
                            </div>
                            <br>
                            
                        </div>
                        <button type="submit" name="go" class="btn btn-block btn-danger">Sign In</button>
                            
                </div>
            </form>
        </div>
     
        
     </div> 
     </div>
     <!--row ends-->
 </div>

    <br/><br/>
     <div class="container-fluid">

     <div class="row">
        <div class="col-md-12">
           
           <%@include file="admin_common/footer.jsp"%>
           
        </div>
    </div>

     </div><!--container ends-->         
    


    </body>
    </html>