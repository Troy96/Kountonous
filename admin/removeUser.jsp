<%@ page language="java" import="java.sql.*, java.util.*, java.io.*"%>


<%
String id = (String)request.getParameter("tag2");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");

PreparedStatement ps = con.prepareStatement("DELETE FROM user WHERE `u_id`=? ");
ps.setString(1,id);
ps.executeUpdate();
response.sendRedirect("showAllUsers.jsp");

%>