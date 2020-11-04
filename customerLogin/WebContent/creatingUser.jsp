<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import ="com.cs336.pkg.*" %>
<% 
ApplicationDB db = new ApplicationDB();	
Connection con = db.getConnection();
boolean check=false;
String userid = request.getParameter("username");   
String pwd = request.getParameter("password");
String first = request.getParameter("firstname");
String last = request.getParameter("lastname");
String email = request.getParameter("email");
String ages = request.getParameter("age");
if(ages.length()>0){
	int age = Integer.parseInt(ages);

		try
		{
		Statement st= con.createStatement();
		ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM customerLogins where username='"+userid+"'");
		rs.next();
		String Countrow = rs.getString(1);
		if(Countrow.equals("0")){
			int i = st.executeUpdate("insert into customerLogins(firstname,lastname,username,password,age,email) values('"+first+"','"+last+"','"+userid+"','"+pwd+"','"+age+"','"+email+"')");
			response.sendRedirect("login.jsp");
			return;
		}
		else{
			//out.println("User name already exists!");
			response.sendRedirect("usernameFailure.jsp");
			return;
		
		}
		}
		catch(Exception e)
		{
		//System.out.print(e);
		e.printStackTrace();
		} 
	//}
}
con.close();
%>