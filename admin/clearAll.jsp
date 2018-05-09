<%@ page language="java" import="java.sql.*"%>


<%		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kountonous_db","root","");


		
		PreparedStatement ps = con.prepareStatement("TRUNCATE msg");
		ps.executeUpdate();
		response.sendRedirect("notifs.jsp");

%>