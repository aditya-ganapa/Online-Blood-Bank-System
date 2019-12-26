<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Donor</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body onload="hideCities()">
<nav>
		<a href="home.jsp">
			<img src="images/blood_logo.jpg" alt="logo" id="logo-img">
		</a>
		<div id="sitename">UPKAAR</div>
		<a href="home.jsp">
			<button  id="logout-button">Logout</button>
		</a>
		<a href="ShowExperience">
			<button  id="share-experience-button">Share Experience</button>
		</a>
</nav>
<section>
	<div id="requirement-form-block">
		<h2>Saving A Life</h2>
		<form name="requirementForm" onsubmit="return validateRequirementForm()" method="post" action="Donor">
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
			<c:if test="${noRequirementsStatus}">There Are No Blood Banks In Your Area. Try Different Area.</c:if>
		</form>
	</div>
	<c:if test="${requirementsStatus}">
	<div id="requirement-table-block">
		<h3>Blood Banks In Your Area:</h3>
		<table id="requirement-table">
			<tr>
				<th>Hospital</th>
				<th>Date</th>
				<th colspan="3">Book Slot</th>
			</tr>
			<c:forEach items="${requirements}" var="requirement">
				<tr>
					<td>${requirement.hospital}</td>
					<td>${requirement.date}</td>
					<td>
						<a <c:if test="${requirement.morningSlot}">href="BookSlot?hospital=${requirement.hospital}&date=${requirement.date}&slot=morning&contactNumber=${contactNumber}"</c:if><c:if test="${!requirement.morningSlot}">onclick="return slotUnavailableAlert()" href="/"</c:if>>9:00AM-12:00PM</a>
					</td>
					<td>
						<a <c:if test="${requirement.afternoonSlot}">href="BookSlot?hospital=${requirement.hospital}&date=${requirement.date}&slot=afternoon&contactNumber=${contactNumber}"</c:if><c:if test="${!requirement.afternoonSlot}">onclick="return slotUnavailableAlert()" href="/"</c:if>>12:00PM-3:00PM</a>
					</td>
					<td>	
						<a <c:if test="${requirement.eveningSlot}">href="BookSlot?hospital=${requirement.hospital}&date=${requirement.date}&slot=evening&contactNumber=${contactNumber}"</c:if><c:if test="${!requirement.eveningSlot}">onclick="return slotUnavailableAlert()" href="/"</c:if>>3:00PM-6:00PM</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</c:if>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>