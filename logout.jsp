<%@ page language="java" import="java.sql.*, java.io.*, java.util.*"%>

<%
//Destroy the session variable. Logout to Home Page.
session.invalidate();
response.sendRedirect("index.html");

%>