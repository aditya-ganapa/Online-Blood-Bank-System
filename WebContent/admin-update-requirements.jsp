<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Update Requirements</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<header>
	<img src="images/logo.jpg" alt="logo" id="logo-img">
	<img src="images/title.jpg" alt="title" id="title-img">
</header>
<nav>
	<a href="admin-home.jsp">Home</a>
	<a href="ShowHome">Logout</a>
</nav>
<!-- <nav>
	<a href="admin-home.jsp">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowHome">
		<button id="logout-button">Logout</button>
	</a>
</nav> -->
<section>
<c:if test="${requirementsStatus}">
	<div id="update-requirements-block">
		<h2>Requirements Posted</h2>
		<c:if test="${requirementRemovedStatus}">Requirement has been removed successfully.<br><br></c:if>
			<table id="update-requirements-table">
				<tr>
					<th>State</th>
					<th>City</th>
					<th>Blood Type</th>
					<th>Posted By</th>
					<th>Contact</th>
					<th>Action</th>
				</tr>
				<c:forEach items="${requirements}" var="requirement">
					<tr>
						<td>${requirement.state}</td>
						<td>${requirement.city}</td>
						<td>${requirement.bloodGroup}</td>
						<td>${requirement.firstName}</td>
						<td>${requirement.contactNumber}</td>
						<td><a href="ShowAdminRequirements?requirementId=${requirement.requirementId}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
	</div>
</c:if>
<c:if test="${noRequirementsStatus}">
	<div id="no-requirements-block">
		<h2>Requirements Posted</h2>
		<c:if test="requirementRemovedStatus">Requirement has been removed successfully.</c:if>
		<p>There are no requirements to display.</p>
	</div>
</c:if>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>