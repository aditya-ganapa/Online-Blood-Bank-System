<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Recipient User</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body  onload="hideCities()">
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
		<h1>Search Blood Availability</h1>
		<form name="availabilityForm" onsubmit="return validateAvailabilityForm()" method="post" action="AvailabilityServlet">
			<div>State</div>: <select name="state" onchange="populateCities(this.value)">
									<option value=""/>
									<c:forEach items="${states}" var="state">
										<option value="${state}">${state}</option>
									</c:forEach>
							</select><br><br>
			<div>City</div>: <select name="city" id="city">
								<option value=""/>
								<c:forEach items="${locations}" var="location">
										<option class="city ${location.state}" value="${location.city}">${location.city}</option>
								</c:forEach>
							</select><br><br>
			<div>Pin Code</div>: <input type="number" name="pinCode"><br><br>
			<div>Blood Group</div>: <select name="bloodGroup"><option value=""/><option value="O+">O+</option><option value="O-">O-</option><option value="A+">A+</option><option value="A-">A-</option><option value="B+">B+</option><option value="B-">B-</option><option value="AB+">AB+</option><option value="AB-">AB-</option></select><br><br>
			<div>Contact Number</div>: <input name="contactNumber"><br><br>
			<input type="submit" name="submit" value="Search">
		</form>
	</div>
</section>
<footer>
	<p>Copyright &copy; 2019</p>
</footer>
</body>
</html>