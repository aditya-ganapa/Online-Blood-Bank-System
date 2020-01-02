<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Experience Notification</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
	<meta http-equiv="refresh" content="3; url = ShowExperience?userId=${userId}"/>
</head>
<body>
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
	<div class="notification-block">
	<h2>Experience Sharing Status</h2>
	<p>Your Blood Donation Experience Has Been Shared Successfully.</p>
	</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>