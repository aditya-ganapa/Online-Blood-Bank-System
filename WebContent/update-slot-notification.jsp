<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Slot Update Notification</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
	<meta http-equiv="refresh" content="3; url = ShowAdminUpdateSlots"/>
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
	<div class="notification-block">
	<h2>Slot Update Status</h2>
	<p>The slot has been updated successfully.</p>
	</div>
</section>
<footer>
	<p>Copyright &copy; 2019</p>
</footer>
</body>
</html>