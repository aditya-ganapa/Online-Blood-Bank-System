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
<header>
	<img src="images/logo.jpg" alt="logo" id="logo-img">
	<img src="images/title.jpg" alt="title" id="title-img">
</header>
<nav>
	<a href="ShowLoginHome?userId=${userId}">Home</a>
	<a href="ShowMyQueries?userId=${userId}">My Queries</a>
	<a href="ShowTipsOnDonating?userId=${userId}">Tips on Donating</a>
	<a href="ShowFaq?userId=${userId}">FAQ</a>
	<a href="ShowHome">Logout</a>
</nav>
<%-- <nav>
	<a href="ShowLoginHome?userId=${userId}">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowHome">
		<button id="logout-button">Logout</button>
	</a>
	<a href="ShowTipsOnDonating?userId=${userId}">
		<button id="tips-on-donating-button">Tips on Donating</button>
	</a>
	<a href="ShowFaq?userId=${userId}">
		<button id="faq-button">FAQ</button>
	</a>
	<a href="ShowMyQueries?userId=${userId}">
		<button id="my-queries-button">My Queries</button>
	</a>
</nav> --%>
<section>
	<div id="availability-form-block">
		<h2>Search Blood Availability</h2>
		<form name="availabilityForm" onsubmit="return validateAvailabilityForm()" method="post" action="RecipientServlet?userId=${userId}">
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
			<input type="submit" name="submit" value="Search"><br><br>
		</form>
	</div>
	<c:if test="${availablesStatus}">
	<div id="availability-list-block">
		<h3>Required Blood Type Is Available In Following Hospitals In Your Area</h3>
		<c:forEach items="${availables}" var="available">
			${available.hospital}<br>
		</c:forEach>
	</div>
	</c:if>
	<c:if test="${emptyAvailablesStatus}">
		<div id="no-availability-block">
		<h3>Required Blood Type Is Not Available In Your Area. Do You Want To Post Your Requirement ?</h3>
		<a href="PostRequirement?state=${available.state}&city=${available.city}&pinCode=${available.pinCode}&bloodGroup=${available.bloodGroup}&userId=${userId}">
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