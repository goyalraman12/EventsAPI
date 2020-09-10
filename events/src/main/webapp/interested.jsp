<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Details here</title>
</head>
<body>
	<form action="http://localhost:8080/events/interestedProcess.jsp" method="POST">
		Event No: <input type="text" name="eventno" value="<%= request.getParameter("eventno")%>"/>
		<br />
		Title: <input type="text" name="title" value="<%= request.getParameter("title")%>"/>
		<br />
		Name: <input type="text" name="Name" />
		<br />
		Mobile: <input type="text" name="mobile" />
		<br />
		Email: <input type="text" name="email" />
		<input type="submit" value="Submit"  />
	</form>
</body>
</html>