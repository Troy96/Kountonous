<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>

<%

String uname = request.getParameter("uname");
String uemail = request.getParameter("umail");
String uadd = request.getParameter("uadd");
String ucontact = request.getParameter("uphone");

String sname = request.getParameter("sname");
String saadhar = request.getParameter("saadhar");
String sphone = request.getParameter("sphone");

String bdate = request.getParameter("bdate");
String btime = request.getParameter("btime");
String bcost = request.getParameter("bcost");
String btype = request.getParameter("btype");
String bservmain = request.getParameter("bservmain");
String bservcateg = request.getParameter("bservcateg");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
PreparedStatement ps = con.prepareStatement("INSERT INTO orders (uname,uemail,uadd,ucontact,sname,saadhar,sphone,bdate,btime,bcost,btype,bservmain,bservcateg) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,uname);
ps.setString(2,uemail);
ps.setString(3,uadd);
ps.setString(4,ucontact);
ps.setString(5,sname);
ps.setString(6,saadhar);
ps.setString(7,sphone);
ps.setString(8,bdate);
ps.setString(9,btime);
ps.setString(10,bcost);
ps.setString(11,btype);
ps.setString(12,bservmain);
ps.setString(13,bservcateg);

ps.executeUpdate();
//Making the serviceman busy---
PreparedStatement ps2 = con.prepareStatement("UPDATE serviceman SET `status`=1 WHERE `aadharno`=?");
ps2.setString(1,saadhar);
ps2.executeUpdate();
response.sendRedirect("services/confirmedBooking.html");

%>