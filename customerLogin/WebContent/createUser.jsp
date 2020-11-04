<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Create New User</title>
	</head>
	<body>
Please fill out following information:
		<form action="creatingUser.jsp" method = "POST">
       	 	First Name: <input type="text" name="firstname"/> <br/>
       	 	Last Name: <input type="text" name="lastname"/> <br/>
       	 	Email: <input type="text" name="email"/> <br/>
       	 	Age: <input type= "text" name="age"/> <br/>
       	 	Username: <input type="text" name="username"/> <br/>
       	 	Password:<input type="password" name="password"/> <br/>
       	 	
       		<input type="submit" value="Submit"/>
       		<a href='login.jsp'>Back to Login</a>
		</form>
		
	</body>
</html>