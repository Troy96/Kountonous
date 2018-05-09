<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>

<html>
<head>

    <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

<!-- Latest compiled JavaScript -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
</head>
<body>


<%
String email	= request.getParameter("email");
String pass	= request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
PreparedStatement ps = con.prepareStatement("SELECT * FROM admin WHERE `admin_mail`=? and `admin_pass`=?");
ps.setString(1,email);
ps.setString(2,pass);
ResultSet rs = ps.executeQuery();
        int x = 0;
        while (rs.next()) {
            if (rs.getString(2).equals(email) && rs.getString(3).equals(pass)) {
                x = 1;
            } else {
                x = 2;
            }
        }
        if(x==1)
        { 
    		session.setAttribute("user1",email);
            response.sendRedirect("cpanel_dash.jsp");
		}
		
		%>
     
    </body>
    </html>