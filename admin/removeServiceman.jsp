<%@ page language="java" import="java.sql.*, java.util.*, java.io.*"%>


<%
String aadharNo = (String)request.getParameter("tag2");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");

PreparedStatement ps = con.prepareStatement("DELETE FROM serviceman WHERE `aadharno`=? ");
ps.setString(1,aadharNo);
ps.executeUpdate();
response.sendRedirect("showAllServiceMan.jsp");

%>