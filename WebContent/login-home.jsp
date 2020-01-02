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
<div class="image">
	<h2 id="user_home">Welcome to Upkaar.<br>We hope you are at the best of your Health</h2>
	<hr>
	<br>
	<c:if test="${showNotificationStatus}">
		<p id="query-notification">Your query has been answered. Click on 'My Queries' tab to to view the answer.</p>
	</c:if>
	<div id="login-home-button-block">
			<div class="login-home-button">Donate Blood<br>
				<a href="ShowDonor?userId=${userId}">
					<button type="button">Save A Life</button>
				</a>
			</div>
			<div class="login-home-button">Check Blood Availability<br>
				<a href="ShowRecipient?userId=${userId}">
					<button type="button">Available Blood</button>
				</a>
			</div>
			<div class="login-home-button">Share Your Experience<br>
				<a href="ShowExperience?userId=${userId}">
					<button type="button">FeedBack</button>
				</a>
			</div>
	</div>
</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>