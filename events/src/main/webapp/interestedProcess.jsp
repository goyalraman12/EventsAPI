<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
    
    <%
			int eventno=Integer.parseInt(request.getParameter("eventno"));
			System.out.println(eventno);
    		String usermobile=request.getParameter("mobile");
    		System.out.println(usermobile);
			/*String location=request.getParameter("location");
			String organizer=request.getParameter("organizer");
			String mobile=request.getParameter("mobile");
			String email=request.getParameter("email");
			String entryfee=request.getParameter("entryfee");
			String prize=request.getParameter("prize");
			String eventdate=request.getParameter("eventdate");
			String startat=request.getParameter("startat");
			String endat=request.getParameter("endat");
			String totaldays=request.getParameter("totaldays");
			*/
			try
			{
				Connection con = null;
				
				String url = "jdbc:mysql://localhost:3306/events";
				String uname = "root";
				String pass = "Raman@7891";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(url,uname,pass);
				
				String query = "insert into interestedusers values(?,?)";
				PreparedStatement pst = con.prepareStatement(query);
					
				pst.setString(1, usermobile);
				pst.setInt(2, eventno);
				pst.executeUpdate();
					
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
		<title>Interested</title>
	</head>
		<body>
			<h1>Event added to interests</h1>
 
		<p><b>Event No:</b>
   		<%= request.getParameter("eventno")%>
		</p>
		<p><b>Title:</b>
   		<%= request.getParameter("title")%>
		</p>
		<p><b>Name:</b>
   		<%= request.getParameter("Name")%>
		</p>
		<p><b>Mobile:</b>
   		<%= request.getParameter("mobile")%>
		</p>
		<p><b>Email:</b>
   		<%= request.getParameter("email")%>
		</p>
		</body>
</html>