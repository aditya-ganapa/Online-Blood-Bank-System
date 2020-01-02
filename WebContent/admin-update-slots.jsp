<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Slot Allocation</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body onload="hideHospitals()">
<header>
	<img src="images/logo.jpg" alt="logo" id="logo-img">
	<img src="images/title.jpg" alt="title" id="title-img">
</header>
<nav>
	<a href="admin-home.jsp">Home</a>
	<a href="ShowHome">Logout</a>
</nav>
<!-- <nav>
	<a href="admin-home.jsp">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowHome">
		<button id="logout-button">Logout</button>
	</a>
</nav> -->
<section>
<div id="slot-update-form-block">
	<h2>Provide A Opportunity - Protect A Life</h2>
	<form name="slotUpdateForm" onsubmit="return validateSlotUpdateForm()" method="post" action="SlotUpdate">
			<div class="form-field-name">City</div> : <select name="city" onchange="populateHospitals(this.value)">
									<option value=""/>
									<c:forEach items="${cities}" var="city">
										<option value="${city}">${city}</option>
									</c:forEach>
							</select><br><br>
			<div class="form-field-name">Hospital</div> : <select name="hospital" id="hospital">
								<option value=""/>
								<c:forEach items="${locations}" var="location">
										<option class="hospital ${location.city}" value="${location.hospital}">${location.hospital}</option>
								</c:forEach>
							</select><br><br>
		<div class="form-field-name">Date</div> : <input type="date" name="date"/><br><br>
		<div class="form-field-name">Slot</div> : <div class="slot-checkbox"><input type="checkbox" name="morningSlot" /> 9AM-12PM</div><br>
	 	<div class="form-field-name"></div>&nbsp;&nbsp;&nbsp;<div class="slot-checkbox"><input type="checkbox" name="afternoonSlot"/> 12PM-3PM</div><br>
		<div class="form-field-name"></div>&nbsp;&nbsp;&nbsp;<div class="slot-checkbox"><input type="checkbox" name="eveningSlot"/> 3PM-6PM</div><br><br>
		<input type="submit" name="submit" value="Update Slots"><br><br>
	</form>
</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>