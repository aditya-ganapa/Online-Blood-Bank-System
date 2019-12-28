<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Slot Notification</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
	<meta http-equiv="refresh" content="3; url = ShowDonor?userId=${userId}"/>
</head>
<body>
<nav>
		<a href="ShowDonor?userId=${userId}">
			<img src="images/blood_logo.jpg" alt="logo" id="logo-img">
		</a>
		<div id="sitename">UPKAAR</div>
		<a href="ShowHome">
			<button id="logout-button">Logout</button>
		</a>
</nav>
<section>
	<div class="notification-block">
	<h2>Slot Booking Status</h2>
	<p>Slot Booked Successfully, You Are Going To Save A Life.</p>
	</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>