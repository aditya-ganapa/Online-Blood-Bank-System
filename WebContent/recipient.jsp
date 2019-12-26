<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Recipient</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body  onload="hideCities()">
<nav>
		<a href="home.jsp">
			<img src="images/blood_logo.jpg" alt="logo" id="logo-img">
		</a>
		<div id="sitename">UPKAAR</div>
		<a href="home.jsp">
			<button  id="logout-button">Logout</button>
		</a>
</nav>
<section>
	<div id="availability-form-block">
		<h2>Search Blood Availability</h2>
		<form name="availabilityForm" onsubmit="return validateAvailabilityForm()" method="post" action="RecipientServlet">
			<div class="form-field-name">State</div>: <select name="state" onchange="populateCities(this.value)">
									<option value=""/>
									<c:forEach items="${states}" var="state">
										<option value="${state}">${state}</option>
									</c:forEach>
							</select><br><br>
			<div class="form-field-name">City</div>: <select name="city" id="city">
								<option value=""/>
								<c:forEach items="${locations}" var="location">
										<option class="city ${location.state}" value="${location.city}">${location.city}</option>
								</c:forEach>
							</select><br><br>
			<div class="form-field-name">Pin Code</div>: <input type="number" name="pinCode"><br><br>
			<div class="form-field-name">Blood Group</div>: <select name="bloodGroup"><option value=""/><option value="O+">O+</option><option value="O-">O-</option><option value="A+">A+</option><option value="A-">A-</option><option value="B+">B+</option><option value="B-">B-</option><option value="AB+">AB+</option><option value="AB-">AB-</option></select><br><br>
			<div class="form-field-name">Contact Number</div>: <input type="text" name="contactNumber"><br><br>
			<input type="submit" name="submit" value="Search"><br><br>
		</form>
	</div>
	<c:if test="${availablesStatus}">
	<div id="availability-list-block">
		<h3>Required Blood Type Is Available In Following Hospitals In Your Area:</h3>
		<c:forEach items="${availables}" var="available">
			${available.hospital}<br>
		</c:forEach>
	</div>
	</c:if>
	<c:if test="${emptyAvailablesStatus}">
		<div id="no-availability-block">
		<h3>Required Blood Type Is Not Available In Your Area. Do You Want To Post Your Requirement ?</h3>
		<a href="PostRequirement?state=${available.state}&city=${available.city}&pinCode=${available.pinCode}&bloodGroup=${available.bloodGroup}&contactNumber=${contactNumber}">
			<button id="post-button">Post</button>
		</a>
	</div>
	</c:if>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>