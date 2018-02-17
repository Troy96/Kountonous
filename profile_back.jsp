<%@ page language="java" import="java.sql.*, java.io.*, java.util.*"%>


<%
	String name 	= request.getParameter("name");
String email	= request.getParameter("email");
String add		=request.getParameter("address");
String mob 		= request.getParameter("mobile");;
String password = request.getParameter("password");
String user = (String)session.getAttribute("user");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
	PreparedStatement ps = con.prepareStatement("UPDATE user  SET `u_name`=?,`u_mail`=?,`u_contact`=?, u_address=?, u_pass=? WHERE u_mail=?");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,mob);
	ps.setString(4,add);
	ps.setString(5,password);
	ps.setString(6,user);

	ps.executeUpdate();
	response.sendRedirect("services.jsp");
%>