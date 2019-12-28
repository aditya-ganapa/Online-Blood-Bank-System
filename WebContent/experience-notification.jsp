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
<nav>
		<a href="ShowDonor?userId=${userId}">
			<img src="images/blood_logo.jpg" alt="logo" id="logo-img">
		</a>
		<div id="sitename">UPKAAR</div>
		<a href="ShowHome">
			<button  id="logout-button">Logout</button>
		</a>
		<a href="ShowDonor?userId=${userId}">
			<button  id="donate-button">Donate</button>
		</a>
</nav>
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