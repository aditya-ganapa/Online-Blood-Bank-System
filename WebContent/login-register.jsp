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
			<img src="images/logo.jpg" alt="logo">
		</a>
		<a href="tips-on-donating.jsp">
			<button  id="tips-on-donating-button">Tips on Donating</button>
		</a>
		<a href="faq.jsp">
			<button  id="faq-button">FAQ</button>
		</a>
</nav>
<section>
	<div id="registration-form-block">
		<h1>New User?</h1>
		<form name="registrationForm" onsubmit="return validateRegistrationForm()" method="post" action="Registration">
			<div>First Name</div>: <input name="firstName"><br><br>
			<div>Last Name</div>: <input name="lastName"><br><br>
			<div>Age</div>: <input type="number" name="age"><br><br>
			<div>Gender</div>: <select name="gender"><option value=""/><option value="Male">Male</option><option value="Female">Female</option><option value="Female">Other</option></select><br><br>
			<div>Contact Number</div>: <input name="contactNumber"><br><br>
			<div>Email</div>: <input type="email" name="email"><br><br>
			<div>Password</div>: <input type="password" name="password"><br><br>
			<div>Weight</div>: <input type="number" name="weight"><br><br>
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
			<div>User Type</div>: <input type="radio" name="userType" value="Donor"> Donor <input type="radio" name="userType" value="Recepient"> Recepient<br><br>
			<input type="submit" name="submit" value="Register"><br><br>
			<c:if test="${userExistsStatus}">${userExistsMessage}</c:if>
		</form>
	</div>
	<div id="login-form-block">
		<h1>Existing User?</h1>
		<form name="loginForm" onsubmit="return validateLoginForm()" method="post" action="Login">
			Email or Phone<br><input name="username"><br><br>
			Password<br><input type="password" name="password"><br><br>
			<input type="submit" name="submit" value="Login"><br><br>
			<c:if test="${errorStatus}">${errorMessage}</c:if>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		</form>
	</div>
</section>
<footer>
	<p>Copyright &copy; 2019</p>
</footer>
</body>
</html>