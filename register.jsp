<%@ page language="java" import="java.sql.*"%>

<%

String name 	= request.getParameter("sname");
String email	= request.getParameter("semail");
String add		=request.getParameter("sadd");
String mob 		= request.getParameter("smob");;
String password = request.getParameter("spass");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
PreparedStatement ps = con.prepareStatement("INSERT INTO user (u_name,u_mail,u_contact,u_address,u_pass) VALUES (?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,mob);
ps.setString(4,add);
ps.setString(5,password);
ps.executeUpdate();

out.println("You have successfully registered!! Now you may login");

%>
