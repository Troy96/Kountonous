<%@ page language="java" import="java.sql.*"%>

<%

String name 	= request.getParameter("name");
String email	= request.getParameter("email");
String add		=request.getParameter("address");
String mob 		= request.getParameter("mobile");;
String password = request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
PreparedStatement ps = con.prepareStatement("INSERT INTO user (u_name,u_mail,u_contact,u_address,u_pass) VALUES (?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,mob);
ps.setString(4,add);
ps.setString(5,password);
ps.executeUpdate();
response.sendRedirect("login.jsp");

%>
