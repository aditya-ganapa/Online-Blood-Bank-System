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
<nav>
		<a href="home.jsp">
			<img src="images/blood_logo.jpg" alt="logo" id="logo-img">
		</a>
		<div id="sitename">UPKAAR</div>
		<a href="tips-on-donating.jsp">
			<button  id="tips-on-donating-button">Tips on Donating</button>
		</a>
		<a href="faq.jsp">
			<button  id="faq-button">FAQ</button>
		</a>
</nav>
<section>
	<div id="registration-form-block">
		<h2>New User?</h2>
		<form name="registrationForm" onsubmit="return validateRegistrationForm()" method="post" action="Registration">
			<div class="form-field-name">First Name</div>: <input type="text" name="firstName"><br><br>
			<div class="form-field-name">Last Name</div>: <input type="text" name="lastName"><br><br>
			<div class="form-field-name">Age</div>: <input type="number" name="age"><br><br>
			<div class="form-field-name">Gender</div>: <select name="gender"><option value=""/><option value="Male">Male</option><option value="Female">Female</option><option value="Female">Other</option></select><br><br>
			<div class="form-field-name">Contact Number</div>: <input type="text" name="contactNumber"><br><br>
			<div class="form-field-name">Email</div>: <input type="email" name="email"><br><br>
			<div class="form-field-name">Password</div>: <input type="password" name="password"><br><br>
			<div class="form-field-name">Weight</div>: <input type="number" name="weight"><br><br>
			<div class="form-field-name">State</div>: <select name="state" onchange="populateCities(this.value)">
									<option value=""/>
									<c:forEach items="${states}" var="state">
										<option value="${state}">${state}</option>
									</c:forEach>
							</select><br><br>
			<div class="form-field-name">City</div>: <select name="city" id="city">
								<option value=""/>
								<c:forEach items="${locations}" var="location">
										<option class="city ${location.state}" value="${location.city}">${location.city}</option>
								</c:forEach>
							</select><br><br>
			<div class="form-field-name">Pin Code</div>: <input type="number" name="pinCode"><br><br>
			<div class="form-field-name">Blood Group</div>: <select name="bloodGroup"><option value=""/><option value="O+">O+</option><option value="O-">O-</option><option value="A+">A+</option><option value="A-">A-</option><option value="B+">B+</option><option value="B-">B-</option><option value="AB+">AB+</option><option value="AB-">AB-</option></select><br><br>
			<!-- <div class="form-field-name">User Type</div>: <input type="radio" name="userType" value="Donor"> Donor <input type="radio" name="userType" value="Recipient"> Recipient<br><br> -->
			<input type="submit" name="submit" value="Register"><br><br>
			<c:if test="${userExistsStatus}">${userExistsMessage}</c:if>
<%-- 			<c:if test="${donorRegisteredStatus}">${donorRegisteredMessage}</c:if>
			<c:if test="${recipientRegisteredStatus}">${recipientRegisteredMessage}</c:if> --%>
			<c:if test="${registeredStatus}">${registeredMessage}</c:if>
		</form>
	</div>
	<div id="login-form-block">
		<h2>Existing User?</h2>
		<form name="loginForm" onsubmit="return validateLoginForm()" method="post" action="Login">
			Email or Phone<br><input type="text" name="username"><br><br>
			Password<br><input type="password" name="password"><br><br>
			<input type="submit" name="submit" value="Login"><br><br>
			<c:if test="${errorStatus}">${errorMessage}</c:if>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		</form>
	</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>