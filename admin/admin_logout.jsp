<%@ page language="java" import="java.sql.*, java.io.*, java.util.*"%>

<%

	session.invalidate();
	response.sendRedirect("../home.jsp");


%>