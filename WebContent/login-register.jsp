<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login | Register</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body onload="hideCities()">
<header>
	<img src="images/logo.jpg" alt="logo" id="logo-img">
	<img src="images/title.jpg" alt="title" id="title-img">
</header>
<nav>
	<a href="ShowHome">Home</a>
	<a href="ShowTipsOnDonating">Tips on Donating</a>
	<a href="ShowFaq">FAQ</a>
	<a href="ShowLoginRegistration">Login | Register</a>
</nav>
<!-- <nav>
	<a href="ShowHome">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowTipsOnDonating">
		<button id="tips-on-donating-button">Tips on Donating</button>
	</a>
	<a href="ShowFaq">
		<button id="faq-button">FAQ</button>
	</a>
</nav> -->
<section>
	<div id="registration-form-block">
		<h2>New User?</h2>
		<form name="registrationForm" onsubmit="return validateRegistrationForm()" method="post" action="Registration">
			<div class="form-field-name">First Name</div>: <input type="text" name="firstName" placeholder="Enter First Name"><br><br>
			<div class="form-field-name">Last Name</div>: <input type="text" name="lastName" placeholder="Enter Last Name"><br><br>
			<div class="form-field-name">Age</div>: <input type="number" name="age" placeholder="Enter Age"><br><br>
			<div class="form-field-name">Gender</div>: <select name="gender"><option value="">Select Gender</option><option value="Male">Male</option><option value="Female">Female</option><option value="Female">Other</option></select><br><br>
			<div class="form-field-name">Contact Number</div>: <input type="text" name="contactNumber" placeholder="Enter Contact Number"><br><br>
			<div class="form-field-name">Email</div>: <input type="email" name="email" placeholder="Enter Email"><br><br>
			<div class="form-field-name">Password</div>: <input type="password" name="password" placeholder="Enter Password" onkeyup="checkPasswordStrength(this.value)"><br>
			<div class="form-field-name"></div> <span id="password-strength"></span><br>
			<div class="form-field-name">Weight</div>: <input type="number" name="weight" placeholder="Enter Weight"><br><br>
			<div class="form-field-name">State</div>: <select name="state" onchange="populateCities(this.value)">
									<option value="">Select State</option>
									<c:forEach items="${states}" var="state">
										<option value="${state}">${state}</option>
									</c:forEach>
							</select><br><br>
			<div class="form-field-name">City</div>: <select name="city" id="city">
								<option value="">Select City</option>
								<c:forEach items="${locations}" var="location">
										<option class="city ${location.state}" value="${location.city}">${location.city}</option>
								</c:forEach>
							</select><br><br>
			<div class="form-field-name">Pin Code</div>: <input type="number" name="pinCode" placeholder="Enter Pin Code"><br><br>
			<div class="form-field-name">Blood Group</div>: <select name="bloodGroup"><option value="">Select Blood Group</option><option value="O+">O+</option><option value="O-">O-</option><option value="A+">A+</option><option value="A-">A-</option><option value="B+">B+</option><option value="B-">B-</option><option value="AB+">AB+</option><option value="AB-">AB-</option></select><br><br>
			<!-- <div class="form-field-name">User Type</div>: <input type="radio" name="userType" value="Donor"> Donor <input type="radio" name="userType" value="Recipient"> Recipient<br><br> -->
			<input type="submit" name="submit" value="Register"><br><br>
			<c:if test="${userExistsStatus}">${userExistsMessage}</c:if>
<%-- 		<c:if test="${donorRegisteredStatus}">${donorRegisteredMessage}</c:if>
			<c:if test="${recipientRegisteredStatus}">${recipientRegisteredMessage}</c:if> --%>
			<c:if test="${registeredStatus}">${registeredMessage}</c:if>
		</form>
	</div>
	<div id="login-form-block">
		<h2>Existing User?</h2>
		<form name="loginForm" onsubmit="return validateLoginForm()" method="post" action="Login">
			Email or Phone<br><input type="text" name="username" placeholder="Enter Username"><br><br>
			Password<br><input type="password" name="password" placeholder="Enter Password"><br><br>
			<input type="submit" name="submit" value="Login"><br><br>
			<c:if test="${errorStatus}">${errorMessage}</c:if>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		</form>
	</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>