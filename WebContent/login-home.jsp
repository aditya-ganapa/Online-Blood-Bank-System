<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login Home</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
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
<div class="image">
	<h2 id="user_home">Welcome to Upkaar.<br>We hope you are at the best of your Health</h2>
	<hr>
	<br>
	<c:if test="${showNotificationStatus}">
		<p id="query-notification">Your query has been answered. Click on 'My Queries' tab to to view the answer.</p>
	</c:if>
	<div>
		<span>
			<label id="home_label1">Donate Blood</label>
			<label id="home_label2">Check Blood Availability</label>
			<label id="home_label3">Share your Experience</label>
		</span>
	</div>
	<div>
		<span>
			<a href="ShowDonor?userId=${userId}">
				<button type="button" id="home_label1">Save A Life</button>
			</a>
			<a href="ShowRecipient?userId=${userId}">
				<button type="button" id="home_label2">Available Blood</button>
			</a>
			<a href="ShowExperience?userId=${userId}">
				<button type="button" id="home_label3">FeedBack</button>
			</a>
		</span>
	</div>
</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>