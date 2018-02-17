<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>

<%

String email	= request.getParameter("email");
String pass	= request.getParameter("password");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE `u_mail`=? and `u_pass`=?");


ps.setString(1,email);
ps.setString(2,pass);
ResultSet rs = ps.executeQuery();
        int x = 0;
        while (rs.next()) {
            if (rs.getString(3).equals(email) && rs.getString(6).equals(pass)) {
                x = 1;
            } else {
                x = 2;
            }
        }
        if(x==1)
        { 
    		session.setAttribute("user",email);
            response.sendRedirect("services.jsp");

		}
		else
		{
			response.sendRedirect("login.html");
		}

		%>
