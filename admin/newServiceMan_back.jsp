<%@ page language="java" import="java.sql.*"%>

<%

String aadhar 	= request.getParameter("saadhar");
String name	= request.getParameter("sname");
String add		= request.getParameter("saddress");
String mob 		= request.getParameter("smobile");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
PreparedStatement ps = con.prepareStatement("insert into serviceman (aadharno,name,address,mobile)values(?,?,?,?)");
ps.setString(1,aadhar);
ps.setString(2,name);
ps.setString(3,add);
ps.setString(4,mob);

ps.executeUpdate(); 

out.println("All records inserted successfully!");

%>




