<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Home</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<header>
	<img src="images/logo.jpg" alt="logo" id="logo-img">
	<img src="images/title.jpg" alt="title" id="title-img">
</header>
<nav>
	<a href="admin-home.jsp">Home</a>
	<a href="ShowHome">Logout</a>
</nav>
<!-- <nav>
	<a href="admin-home.jsp">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowHome">
		<button id="logout-button">Logout</button>
	</a>
</nav> -->
<section>
<div>
	<h2 id="admin-home-title">Doctor's Portal</h2>
	<hr><br>
	<div id="admin-home-button-block">
			<div class="admin-home-button">Update Available Slots<br><br>
				<a href="ShowAdminUpdateSlots">
					<button type="button">Slots Form</button>
				</a>
			</div>
			<div class="admin-home-button">Respond To Queries<br><br>
				<a href="ShowAdminQueries">
					<button type="button">Show Queries</button>
				</a>
			</div>
			<div class="admin-home-button">Update Requirements Posted<br><br>
				<a href="ShowAdminRequirements">
					<button type="button">Show Requirements</button>
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