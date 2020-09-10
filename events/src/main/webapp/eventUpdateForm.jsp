<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
	<form action="http://localhost:8080/events/eventUpdateFormProcess.jsp" method="POST">
		Event No: <input type="text" name="eventno" value="<%= request.getParameter("eventno")%>"/>
		<br />
		Title: <input type="text" name="title" value="<%= request.getParameter("title")%>"/>
		<br />
		Location: <input type="text" name="location" value="<%= request.getParameter("location")%>"/>
		<br />
		Organizer: <input type="text" name="organizer" value="<%= request.getParameter("organizer")%>"/>
		<br />
		Mobile: <input type="text" name="mobile" value="<%= request.getParameter("mobile")%>"/>
		<br />
		Email: <input type="text" name="email" value="<%= request.getParameter("email")%>"/>
		<br />
		Entry Fee: <input type="text" name="entryfee" value="<%= request.getParameter("entryfee")%>"/>
		<br />
		Prize: <input type="text" name="prize" value="<%= request.getParameter("prize")%>"/>
		<br />
		Event Date: <input type="text" name="eventdate" value="<%= request.getParameter("eventdate")%>"/>
		<br />
		Start At: <input type="text" name="startat" value="<%= request.getParameter("startat")%>"/>
		<br />
		End At: <input type="text" name="endat" value="<%= request.getParameter("endat")%>"/>
		<br />
		Total Days: <input type="text" name="totaldays" value="<%= request.getParameter("totaldays")%>"/>
		<input type="submit" value="Submit"  />
	</form>
</body>
</html>