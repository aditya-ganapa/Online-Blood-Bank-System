<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Tips On Donating</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<header>
	<img src="images/logo.jpg" alt="logo" id="logo-img">
	<img src="images/title.jpg" alt="title" id="title-img">
</header>
<c:if test="${notSignedInStatus}">
<nav>
	<a href="ShowHome">Home</a>
	<a href="ShowTipsOnDonating">Tips on Donating</a>
	<a href="ShowFaq">FAQ</a>
	<a href="ShowLoginRegistration">Login | Register</a>
</nav>
</c:if>
<c:if test="${signedInStatus}">
<nav>
	<a href="ShowLoginHome?userId=${userId}">Home</a>
	<a href="ShowMyQueries?userId=${userId}">My Queries</a>
	<a href="ShowTipsOnDonating?userId=${userId}">Tips on Donating</a>
	<a href="ShowFaq?userId=${userId}">FAQ</a>
	<a href="ShowHome">Logout</a>
</nav>
</c:if>
<%-- <nav>
<c:if test="${notSignedInStatus}">
	<a href="ShowHome">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowLoginRegistration">
		<button  id="login-register-button">Login | Register</button>
	</a>
	<a href="ShowFaq">
		<button  id="faq-button">FAQ</button>
	</a>
</c:if>
<c:if test="${signedInStatus}">
	<a href="ShowLoginHome?userId=${userId}">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowHome">
		<button id="logout-button">Logout</button>
	</a>
	<a href="ShowFaq?userId=${userId}">
		<button id="faq-button">FAQ</button>
	</a>
	<a href="ShowMyQueries?userId=${userId}">
		<button id="my-queries-button">My Queries</button>
	</a>
</c:if>
</nav> --%>
<section>
<div id="tips">
<h2>Tips Before Donating Blood</h2>
<ul>
<li>In the days before your donation, eat healthy, iron-rich foods such as spinach, red meat, fish, poultry, beans, iron-fortified cereals and raisins. This will help maintain a healthy iron level. The number one reason for deferrals is anemia.</li>
<li>Get a good night's sleep.</li>
<li>At least 3 hours before donating, eat a balanced meal and avoid fatty foods, such as hamburgers, fries, or ice cream.</li>
<li>Drink an extra 16 oz. of water and fluids before the donation; you can be deferred for dehydration.</li>
<li>Don't forget to bring a valid government-issued photo ID, a list of medications you are taking, and a list of places you have visited outside of the U.S. in the past 3 years.</li>
</ul>
<br><br>
<h2>Tips During Blood Donation</h2>
<ul>
<li>Wear clothing with short sleeves or sleeves that can be raised above the elbow.</li>
<li>If you have a preference of arm or vein that you like the phlebotomist to use for your donation, let them know.</li>
<li>Relax, listen to music, talk to others, or watch movies on our comfortable donor lounge chairs designed specifically for apheresis donations.</li>
<li>Enjoy an assortment of refreshments in our canteen area immediately after donating.</li>
</ul>
<br><br>
<h2>Tips After Donating Blood</h2>
<ul>
<li>Drink plenty of fluids over the next 24-48 hours to replenish any fluids you lost during donation.</li>
<li>Do not skip any meals and make sure to eat after your donation.</li>
<li>Avoid strenuous physical activity or heavy lifting for about 24 hours after donation.</li>
<li>If you feel light headed, lie down, preferably with feet elevated, until the feeling passes.</li>
<li>If something doesn't feel right, call the Donor Center's toll-free number provided to you after your donation.</li>
<li>Enjoy your day and know that you have made a positive difference!</li>
</ul>
</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>