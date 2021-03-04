<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "java.io.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>
<% 
try {
			
			String email = request.getParameter("email"); 
			String pwd = request.getParameter("pwd");
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");

			String sql = "SELECT * FROM prac6 WHERE email = ? AND password = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1,email);
			ps.setString(2,pwd);
			
			ResultSet rs = ps.executeQuery();

			System.out.println("User Login successfull");
            if(rs.next()) {
            	out.println("login success");
        	}else {
        		out.println("login fail");
				
			
				
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