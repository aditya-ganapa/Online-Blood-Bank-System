<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Share Your Experience</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body onload="hideHospitals()">
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
	<div id="experience-form-block">
		<h1>Share your Experience Of Donating Blood and Saving Lives</h1>
		<form name="experienceForm" onsubmit="return validateExperienceForm()" method="post" action="Experience">
			<div>City</div>: <select name="city" onchange="populateHospitals(this.value)">
									<option value=""/>
									<c:forEach items="${cities}" var="city">
										<option value="${city}">${city}</option>
									</c:forEach>
							</select><br><br>
			<div>Hospital</div>: <select name="hospital" id="hospital">
								<option value=""/>
								<c:forEach items="${locations}" var="location">
										<option class="hospital ${location.city}" value="${location.hospital}">${location.hospital}</option>
								</c:forEach>
							</select><br><br>
			<div>Feedback</div>: <textarea name="feedback"></textarea><br><br>
			<input type="submit" name="submit" value="Share"><br><br>
		</form>
	</div>
</section>
<footer>
	<p>Copyright &copy; 2019</p>
</footer>
</body>
</html>