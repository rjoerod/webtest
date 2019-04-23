<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Title</title>
</head>
<body>
<% java.util.Date d = new java.util.Date(); %>
<h1>
Today's date is <%= d.toString() %> and this jsp page worked!
</h1>

<%
	String connectionURL = "jdbc:mysql://localhost:3306/TEST1";
	Connection connection = null;
	Statement statement = null;
	
  try {
	  Class.forName("com.mysql.jdbc.Driver").newInstance();
	  connection = DriverManager.getConnection(connectionURL, "root", "password");
	  statement = connection.createStatement();
	   out.print("DB Success");
	  
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>

</body>
</html>