<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Event here</title>
</head>
<body>
	
	<ul>
         <li><p><b>Eventno:</b>
            <%= request.getParameter("eventno")%>
         </p></li>
         <li><p><b>Title:</b>
            <%= request.getParameter("title")%>
         </p></li>
         <li><p><b>Location:</b>
            <%= request.getParameter("location")%>
         </p></li>
         <li><p><b>Organizer:</b>
            <%= request.getParameter("organizer")%>
         </p></li>
         <li><p><b>Mobile:</b>
            <%= request.getParameter("mobile")%>
         </p></li>
         <li><p><b>Email:</b>
            <%= request.getParameter("email")%>
         </p></li>
         <li><p><b>Entryfee:</b>
            <%= request.getParameter("entryfee")%>
         </p></li>
         <li><p><b>Prize:</b>
            <%= request.getParameter("prize")%>
         </p></li>
         <li><p><b>Eventdate:</b>
            <%= request.getParameter("eventdate")%>
         </p></li>
         <li><p><b>Startat:</b>
            <%= request.getParameter("startat")%>
         </p></li>
         <li><p><b>Endat:</b>
            <%= request.getParameter("endat")%>
         </p></li>
         <li><p><b>Totaldays:</b>
            <%= request.getParameter("totaldays")%>
         </p></li>
      </ul>
      <button type="button" onclick="alert('Thanks')">Ok</button>
      <button type="button" onclick="alert('Thanks')">Interested</button>
</body>
</html>