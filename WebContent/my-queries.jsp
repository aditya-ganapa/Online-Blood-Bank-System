<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>My Queries</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<header>
	<img src="images/logo.jpg" alt="logo" id="logo-img">
	<img src="images/title.jpg" alt="title" id="title-img">
</header>
<nav>
	<a href="ShowLoginHome?userId=${userId}">Home</a>
	<a href="ShowMyQueries?userId=${userId}">My Queries</a>
	<a href="ShowTipsOnDonating?userId=${userId}">Tips on Donating</a>
	<a href="ShowFaq?userId=${userId}">FAQ</a>
	<a href="ShowHome">Logout</a>
</nav>
<%-- <nav>
	<a href="ShowLoginHome?userId=${userId}">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowHome">
		<button id="logout-button">Logout</button>
	</a>
	<a href="ShowTipsOnDonating?userId=${userId}">
		<button id="tips-on-donating-button">Tips on Donating</button>
	</a>
	<a href="ShowFaq?userId=${userId}">
		<button id="faq-button">FAQ</button>
	</a>
	<a href="ShowMyQueries?userId=${userId}">
		<button id="my-queries-button">My Queries</button>
	</a>
</nav> --%>
<section>
<div id="my-queries-block">
	<h2>My Queries</h2>
	<c:if test="${noQueriesStatus}">You haven't raised any queries. To raise a query go to FAQ page and click on 'Raise A Query'.</c:if>
	<c:if test="${queriesExistStatus}">
		<c:forEach items="${queries}" var="query">
		<div id="my-queries-question-answer-block">
			<p><b>Q) ${query.question}</b></p>
			<p>A) ${query.answer}</p><br>
		</div>
		</c:forEach>
	</c:if>
</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>