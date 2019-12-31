<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<nav>
	<a href="admin-home.jsp">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowHome">
		<button id="logout-button">Logout</button>
	</a>
</nav>
<section>
<c:if test="${queriesStatus}">
	<div id="query-answer-block">
		<h2>Answer Queries</h2>
		<c:forEach items="${queries}" var="query">
			<p>${query.question}</p>
			<form method="post" action="QueryAnswer?queryId=${query.queryId}">
				<textarea name="queryAnswer" id="query-answer-textarea" required></textarea><br><br>
				<input type="submit" name="submit" value="Submit Answer"><br><br>
			</form>
		</c:forEach>
	</div>
</c:if>
<c:if test="${noQueriesStatus}">
	<div id="no-queries-block">
		<h2>Answer Queries</h2>
		<p>There are no queries to be answered.</p>
	</div>
</c:if>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>