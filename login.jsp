<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
    <title>Login</title>
    
    <link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/w3css.css">

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
        <div class="col-lg-6">
            <form method="post" action="login_back.jsp">
                <div class="well">
                    <h2>Login to your dashboard</h2>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                                    <input type="email" name="email" placeholder="Email address" required class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                    <input  type="password" name="password" placeholder="Password"  id="myId" required class="form-control" />
                            
                            </div>
                            <br>
                            
                        </div>
                        <button type="submit" name="go" class="btn btn-block btn-danger">Sign In</button>
                            
                            
                </div>
            </form>
        </div>
     
        <div class="col-lg-6">
           
                    <div class="well">
                    <h2>Please register here</h2>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                            <input type="text" id="name" placeholder="Full Name" required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input type="email" id="email" placeholder="Email address" required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input type="text" id="address" placeholder="Residential Address" required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                            <input type="text" id="mobile" placeholder="Mobile No." required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input  type="password" id="password" placeholder="Password"  id="myId" required class="form-control" />
                            
                        </div>
                        <br>
                       
                    </div>
                    <input type="button" value="Sign Up" id="signup" class="btn btn-block btn-primary">
                    
                </div>

             
        </div><!--registration column ends-->
     </div> 
     </div>
     <!--row ends-->
 </div>

     <hr/>
     <div class="container-fluid">

     <div class="row">
        <div class="col-md-12">
           
           <%@include file="common/footer.jsp"%>
           
        </div>
    </div>

     </div><!--container ends--> 

     <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

     <script>

        $(document).ready(function(){

            $("#signup").click(function(){

               Name = $("#name").val();
               Email = $("#email").val();
               Address = $("#address").val();
               Mobile = $("#mobile").val();
               Password = $("#password").val();

               $.post("register.jsp",
                {
                sname : Name,
                semail : Email,
                sadd : Address,
                smob : Mobile,
                spass : Password
              },
                function(data,status){

                  alert(data);

                });



            });

        });


    
    </script>         
    


    </body>
    </html>