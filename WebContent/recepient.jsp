<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Recepient</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
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
	<div id="availability-form-block">
		<h1>Check Availability</h1>
		<form name="availabilityForm" onsubmit="return validateAvailabilityForm()" method="post" action="Availability">
			<div>State</div>: <select name="state"><option value=""/><option value="Karnataka">Karnataka</option></select><br><br>
			<div>Area</div>: <select name="area"><option value=""/><option value="Bangalore">Bangalore</option></select><br><br>
			<div>Pin Code</div>: <input type="number" name="pinCode"><br><br>
			<div>Blood Group</div>: <select name="bloodGroup"><option value=""/><option value="O+">O+</option><option value="O-">O-</option><option value="A+">A+</option><option value="A-">A-</option><option value="B+">B+</option><option value="B-">B-</option><option value="AB+">AB+</option><option value="AB-">AB-</option></select><br><br>
			<input type="submit" name="submit" value="Search">
		</form>
	</div>
</section>
<footer>
	<p>Copyright &copy; 2019</p>
</footer>
</body>
</html>