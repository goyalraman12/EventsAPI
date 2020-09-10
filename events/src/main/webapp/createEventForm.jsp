<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<h1>Create New Event</h1>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
	<form action="http://localhost:8080/events/createEventFormProcess.jsp" method="POST">
		Event No: <input type="text" name="eventno"/>
		<br />
		Title: <input type="text" name="title"/>
		<br />
		Location: <input type="text" name="location"/>
		<br />
		Organizer: <input type="text" name="organizer"/>
		<br />
		Mobile: <input type="text" name="mobile"/>
		<br />
		Email: <input type="text" name="email"/>
		<br />
		Entry Fee: <input type="text" name="entryfee"/>
		<br />
		Prize: <input type="text" name="prize"/>
		<br />
		Event Date: <input type="text" name="eventdate"/>
		<br />
		Start At: <input type="text" name="startat"/>
		<br />
		End At: <input type="text" name="endat"/>
		<br />
		Total Days: <input type="text" name="totaldays"/>
		<input type="submit" value="Submit"  />
	</form>
</body>
</html>