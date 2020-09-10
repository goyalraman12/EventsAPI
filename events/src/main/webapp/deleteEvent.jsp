<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*,java.util.*"%>
    
    <%
			int eventno=Integer.parseInt(request.getParameter("eventno"));
			
			
			try
			{
				Connection con = null;
				
				String url = "jdbc:mysql://localhost:8080/events";
				String uname = "root";
				String pass = "Raman@7891";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(url,uname,pass);
				
				String query = "delete from eventdetails where eventno=?";
				
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1,eventno);
				st.executeUpdate();
				
				System.out.println("Event Deleted Successfully");
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			
		%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><b>User Deleted Successfully</b></h1>

</body>
</html>