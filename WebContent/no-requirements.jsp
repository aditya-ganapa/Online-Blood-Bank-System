<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Saving A Life</h1>
<br>
<br>
<br>
<h3>We Appreciate your generosity but there are no requirements for your blood type in you present state.<br>
How would you like to continue?</h3>

<p>Would like to check requirements in a different state?</p><br>
<input type="button" id=change_state value="Change State" onclick="openPage('Donor.jsp')"><br>


<p>Would like to donate blood now for future Requirements? </p><br>
<input type="button" id=book_slot value="Book Slot" onclick="openPage('Slot_Booking.jsp')"><br>


</body>
</html>