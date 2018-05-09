<%@ page language="java" import="java.sql.*"%>
<%
String umail=(String) session.getAttribute("user");
String pass1    = request.getParameter("opassword");
String pass2    = request.getParameter("npassword");
String pass3    = request.getParameter("cpassword"); String op= " ";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");
PreparedStatement ps = con.prepareStatement("SELECT * FROM user where `u_mail`=?");
ps.setString(1, umail);
ResultSet rs = ps.executeQuery();
while(rs.next()){
    op=rs.getString(6);
    }
if(!pass1.equals(op)){
    out.println("<center>" + "<b>You entered an incorrect old password. Try again</b>");
}
else{
if(pass2.equals(pass3)){
PreparedStatement ps2 = con.prepareStatement("UPDATE user  SET `u_pass`=? where `u_mail`=?");
ps2.setString(1,pass2);
ps2.setString(2,umail);
ps2.executeUpdate();
response.sendRedirect("services.jsp");
}
else{
    out.println("<center>" + "<b>Make sure the new and confirm passwords match. Try again</b>");
}
}
%>