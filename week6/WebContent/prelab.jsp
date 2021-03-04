<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="java.io.*, java.util.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pratical 6 - Prelab</title>
</head>
<body>
<h3> display current date and time</h3>
<%
  Date date = new Date();
  out.println("<h2 align ='center'>" +date.toString()+"</h2>");
  %>

</body>
</html>