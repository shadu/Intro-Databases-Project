<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import ="com.cs336.pkg.*" %>
<% 
ApplicationDB db = new ApplicationDB();	
Connection con = db.getConnection();

String userid = request.getParameter("username");   
String pwd = request.getParameter("password");

Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from customerLogins where username='" + userid + "' and password='" + pwd + "'");
if (rs.next()) {
    session.setAttribute("user", userid); // the username will be stored in the session
    out.println("welcome " + userid);
    out.println("<a href='logout.jsp'>Log out</a>");
    response.sendRedirect("success.jsp");
    return;
} 
rs = st.executeQuery("select * from adminLogins where userId='" + userid + "' and userPassword='" + pwd + "'");
if (rs.next()) {
    session.setAttribute("user", userid); // the username will be stored in the session
    out.println("welcome " + userid);
    out.println("<a href='logout.jsp'>Log out</a>");
    response.sendRedirect("successAdmin.jsp");
    return;
} 
rs = st.executeQuery("select * from customer_rep_logins where username='" + userid + "' and password='" + pwd + "'");
if (rs.next()) {
    session.setAttribute("user", userid); // the username will be stored in the session
    out.println("welcome " + userid);
    out.println("<a href='logout.jsp'>Log out</a>");
    response.sendRedirect("successCustomerRep.jsp");
    return;
}
else{
	response.sendRedirect("failure.jsp");
}
con.close();
%>