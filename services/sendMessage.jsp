<%@ page language="java" import="java.sql.*"%>
<%


String s_id = (String)session.getAttribute("user");
String msgAdmin	= request.getParameter("sDetails");
String user_id=" "; 
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");

PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE `u_mail`=?");
ps.setString(1,s_id);
ResultSet rs = ps.executeQuery();

while(rs.next()){
	user_id = rs.getString(1);
}
	
PreparedStatement ps2 = con.prepareStatement("INSERT INTO msg (`sender_id`,`details`,`dt`) VALUES(?,?,NOW())");
ps2.setString(1,user_id);
ps2.setString(2,msgAdmin);
ps2.executeUpdate();

out.println("Sent!!!");

%>
