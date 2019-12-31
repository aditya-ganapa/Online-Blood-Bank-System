<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Share Your Experience</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body onload="hideHospitals()">
<nav>
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
</nav>
<section>
	<div id="experience-form-block">
		<h2>Share Experience of Donating Blood and Saving Lives</h2>
		<form name="experienceForm" onsubmit="return validateExperienceForm()" method="post" action="Experience?userId=${userId}">
			<div class="form-field-name">City</div>: <select name="city" onchange="populateHospitals(this.value)">
									<option value=""/>
									<c:forEach items="${cities}" var="city">
										<option value="${city}">${city}</option>
									</c:forEach>
							</select><br><br>
			<div class="form-field-name">Hospital</div>: <select name="hospital" id="hospital">
								<option value=""/>
								<c:forEach items="${locations}" var="location">
										<option class="hospital ${location.city}" value="${location.hospital}">${location.hospital}</option>
								</c:forEach>
							</select><br><br>
			<div class="form-field-name">Feedback</div>: <textarea name="feedback"></textarea><br><br>
			<input type="submit" name="submit" value="Share"><br><br>
		</form>
	</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>