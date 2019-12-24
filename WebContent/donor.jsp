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
			<img src="images/logo.jpg" alt="logo">
		</a>
		<a href="home.jsp">
			<button  id="logout-button">Logout</button>
		</a>
		<a href="tips-on-donating.jsp">
			<button  id="tips-on-donating-button">Tips on Donating</button>
		</a>
		<a href="faq.jsp">
			<button  id="faq-button">FAQ</button>
		</a>
</nav>
<section>
	<div id="requirement-form-block">
		<h1>Saving A Life</h1>
		<form name="requirementForm" onsubmit="return validateRequirementForm()" method="post" action="Donor">
			<div>State</div>: <select name="state" onchange="populateCities(this.value)">
									<option value=""/>
									<c:forEach items="${states}" var="state">
										<option value="${state}">${state}</option>
									</c:forEach>
							</select><br><br>
			<div>City</div>: <select name="city" id="city">
								<option value=""/>
								<c:forEach items="${locations}" var="location">
										<option class="city ${location.state}" value="${location.city}">${location.city}</option>
								</c:forEach>
							</select><br><br>
			<div>Pin Code</div>: <input type="number" name="pinCode"><br><br>
			<div>Blood Group</div>: <select name="bloodGroup"><option value=""/><option value="O+">O+</option><option value="O-">O-</option><option value="A+">A+</option><option value="A-">A-</option><option value="B+">B+</option><option value="B-">B-</option><option value="AB+">AB+</option><option value="AB-">AB-</option></select><br><br>
			<input type="submit" name="submit" value="Search"><br><br>
		</form>
	</div>
	<c:if test="${requirementsStatus}">
	<div id="requirement-table-block">
		<h1>Requirements</h1>
		<table id="requirement-table">
			<tr>
				<th>Hospital</th>
				<th>Date</th>
				<th>Book Slot</th>
			</tr>
			<c:forEach items="${requirements}" var="requirement">
				<tr>
					<td>${requirement.hospital}</td>
					<td>${requirement.date}</td>
					<td>
						<a <c:if test="${requirement.morningSlot}">href="BookSlotServlet?hospital=${requirement.hospital}&date=${requirement.date}&slot=morning"</c:if><c:if test="${!requirement.morningSlot}">onclick="return slotUnavailableAlert()" href="/"</c:if>>9:00AM-12:00PM</a>
						<a <c:if test="${requirement.afternoonSlot}">href="BookSlotServlet?hospital=${requirement.hospital}&date=${requirement.date}&slot=afternoon"</c:if><c:if test="${!requirement.afternoonSlot}">onclick="return slotUnavailableAlert()" href="/"</c:if>>12:00PM-3:00PM</a>
						<a <c:if test="${requirement.eveningSlot}">href="BookSlotServlet?hospital=${requirement.hospital}&date=${requirement.date}&slot=evening"</c:if><c:if test="${!requirement.eveningSlot}">onclick="return slotUnavailableAlert()" href="/"</c:if>>3:00PM-6:00PM</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</c:if>
</section>
<footer>
	<p>Copyright &copy; 2019</p>
</footer>
</body>
</html>