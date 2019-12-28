<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>



	<nav> <a href="home.jsp"> <img src="images/blood_logo.jpg"
		alt="logo" id="logo-img">

	</a>

	<div id="sitename">UPKAAR</div>

	<a href="home.jsp">

		<button id="logout-button">Logout</button>
		</a>
 </nav>

	<div class="image">

		<h2 id="user_home">
			Welcome to Upkaar.<br>We hope you are at the best of your Health
		</h2>

		<hr>

		<br>

		<div>

			<span> <label id="home_label1">Donate Blood</label> <label
				id="home_label2">Check Blood Availability</label> <label
				id="home_label3">Share your Experience</label>

			</span>

		</div>

		<div>

			<span>
			<a href="ShowDonor?userId=${userId}">
				<button type="button" id="home_label1">Save
					A Life</button></a>
			<a href="ShowRecipient?userId=${userId}">
				<button type="button" id="home_label2">Available
					Blood</button>
			</a>
			<a href="ShowExperience?userId=${userId}">
				<button type="button" id="home_label3">FeedBack</button>
			</a>
			</span>

		</div>

	</div>

</body>

<footer>

<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a
	Million Smiles.</p>

</footer>



</html>