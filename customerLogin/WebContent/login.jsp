<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Login Page</title>
	</head>
	<body>

		<form action="checkLoginDetails.jsp" method = "POST">
			Username: <input type="text" name="username"/> <br/>
       	 	Password:<input type="password" name="password"/> <br/>
       		<input type="submit" value="Submit"/>
		</form>
		
		<a href='createUser.jsp'>Create New User</a>
		
	</body>
</html>