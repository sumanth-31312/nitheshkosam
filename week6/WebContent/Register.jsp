<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="java.io.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<%
try {
	
	
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String Phonenumber = request.getParameter("ph");
	String password = request.getParameter("pwd");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
	System.out.println("Connection to database success");
	
	String sql = "INSERT INTO prac6 VALUES (?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, Phonenumber);
	ps.setString(4,password);
	int count = ps.executeUpdate();
	System.out.println("User registration successfull");
	if(count > 0) {
		out.println("Registeration success");
	}else {
		out.println("Registeration fail");
	}
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>