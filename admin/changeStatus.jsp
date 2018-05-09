<%@ page language="java" import="java.sql.*, java.util.*, java.io.*"%>


<%
String aadharNo = (String)request.getParameter("tag1");
String status=" ";
String updateStatus=" ";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
PreparedStatement ps1 = con.prepareStatement("SELECT * FROM serviceman WHERE `aadharno`=?");
ps1.setString(1,aadharNo);
ResultSet rs = ps1.executeQuery();
while(rs.next()){
	 status = (String)rs.getString(6);
}
if(status.equals("0"))
updateStatus="1";
else
updateStatus="0";

PreparedStatement ps2 = con.prepareStatement("UPDATE serviceman SET `status`=? WHERE `aadharno`=?");
ps2.setString(1,updateStatus);
ps2.setString(2,aadharNo);
ps2.executeUpdate();
response.sendRedirect("showAllServiceMan.jsp");

%>