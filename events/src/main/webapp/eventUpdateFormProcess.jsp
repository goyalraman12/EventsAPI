<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
    
    <%
			int eventno=Integer.parseInt(request.getParameter("eventno"));
			String title=request.getParameter("title");
			String location=request.getParameter("location");
			String organizer=request.getParameter("organizer");
			String mobile=request.getParameter("mobile");
			String email=request.getParameter("email");
			String entryfee=request.getParameter("entryfee");
			String prize=request.getParameter("prize");
			String eventdate=request.getParameter("eventdate");
			String startat=request.getParameter("startat");
			String endat=request.getParameter("endat");
			String totaldays=request.getParameter("totaldays");
			
			try
			{
				Connection con = null;
				
				String url = "jdbc:mysql://localhost:3306/events?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
				String uname = "root";
				String pass = "Raman@7891";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(url,uname,pass);
				
				String query = "update eventdetails set title=?, location=?,organizer=?, mobile=?, email=?, entryfee=?, prize=?, eventdate=?, startat=?, endat=?, totaldays=? where eventno=?";
				PreparedStatement pst = con.prepareStatement(query);
					
				pst.setString(1, title);
				pst.setString(2, location);
				pst.setString(3, organizer);
				pst.setString(4, mobile);
				pst.setString(5, email);
				pst.setString(6, entryfee);
				pst.setString(7, prize);
				pst.setString(8, eventdate);
				pst.setString(9, startat);
				pst.setString(10, endat);
				pst.setString(11, totaldays);
				pst.setInt(12, eventno);
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
		<title>Insert title here</title>
	</head>
		<body>
			<h1>User Details Updated Successfully</h1>
 
		<p><b>Event No:</b>
   		<%= request.getParameter("eventno")%>
		</p>
		<p><b>Title:</b>
   		<%= request.getParameter("title")%>
		</p>
		<p><b>Location:</b>
   		<%= request.getParameter("location")%>
		</p>
		<p><b>Organizer:</b>
   		<%= request.getParameter("orgainzer")%>
		</p>
		<p><b>Mobile:</b>
   		<%= request.getParameter("mobile")%>
		</p>
		<p><b>Email:</b>
   		<%= request.getParameter("email")%>
		</p>
		<p><b>Entryfee:</b>
   		<%= request.getParameter("entryfee")%>
		</p>
		<p><b>Prize:</b>
   		<%= request.getParameter("prize")%>
		</p>
		<p><b>Event Date:</b>
   		<%= request.getParameter("eventdate")%>
		</p>
		<p><b>Start At:</b>
   		<%= request.getParameter("startat")%>
		</p>
		<p><b>End At:</b>
   		<%= request.getParameter("endat")%>
		</p>
		<p><b>Total Days:</b>
   		<%= request.getParameter("totaldays")%>
		</p>
		</body>
</html>