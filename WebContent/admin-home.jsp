<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Home</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<nav>
	<a href="admin-home.jsp">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowHome">
		<button id="logout-button">Logout</button>
	</a>
</nav>
<div>
	<h1 style="font-size: 30px; text-align: center; color: red;">
		Doctor's Portal
	</h1>
	<a href="Admin-Update-Location.jsp">
		<button id="Adminbutton">Update Location</button>
	</a>
	<a href="Admin-Update-Slots.jsp">
		<button id="Adminbutton">Update Available Slot</button>
	</a>
	<br>
	<a href="ShowAdminQueries">
		<button id="Adminbutton">Respond Query</button>
	</a>
	<a href="Admin-Update-Requirement.jsp">
		<button id="Adminbutton">Update Requirement</button>
	</a>
</div>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>