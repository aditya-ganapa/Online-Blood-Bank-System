<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Home</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<nav>
	<a href="ShowHome">
		<img src="images/logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">
		<img src="images/title.jpg" alt="title" id="title-img">
	</div>
	<a href="ShowLoginRegistration">
		<button id="login-register-button">Login | Register</button>
	 </a>
	<a href="ShowTipsOnDonating">
		<button id="tips-on-donating-button">Tips on Donating</button>
	</a>
	<a href="ShowFaq">
		<button id="faq-button">FAQ</button>
	</a>
</nav>
<section>
	<div class="left">
		<img src="images/home-left.jpg" alt="home-left" id="home-left-img">
	</div>
	<div class="middle">
			<h2>Why Should We Donate Blood?</h2>
			Safe Blood Saves Lives And Improves Health. Blood Transfusion Is Needed For:
			<ul>
				<li>Women with complications of Pregnancy, such as Ectopic Pregnancies and Haemorrhage before, during or after Childbirth;</li>
				<li>Children with severe Anaemia often resulting from Malaria or Malnutrition;</li>
				<li>People with severe Trauma following Man-Made and Natural Disasters; and</li>
				<li>Many Complex Medical and Surgical Procedures and Cancer Patients.</li>
			</ul>
			It is also needed for Regular Transfusions for people with conditions such as Thalassaemia and Sickle Cell Disease and is used to make products such as Clotting Factors for people with Haemophilia.
			<br><br>
			There is a constant need for Regular Blood Supply because blood can be stored for only a limited time before use. Regular Blood Donations by a sufficient number of healthy people are needed to ensure that safe blood will be available whenever and wherever it is needed.
			<br><br>
			Blood is the most precious gift that anyone can give to another person - The Gift of Life. A decision to donate your blood can save a life, or even several if your blood is separated into its components - Red Cells, Platelets and Plasma - which can be used individually for patients with specific conditions.

	</div>
	<div class="right">
		<img src="images/home-right.jpg" alt="home-right" id="home-right-img"><br><br><br><br><br><br><br><br><br><br>
	</div>
	<c:if test="${requirementsStatus}">
		<div id="home-requirement-table-block">
			<h3>Requirements</h3>
			<table id="home-requirement-table">
				<tr>
					<th>State</th>
					<th>City</th>
					<th>Blood Type</th>
					<th>Posted By</th>
					<th>Contact</th>
				</tr>
				<c:forEach items="${requirements}" var="requirement">
					<tr>
						<td>${requirement.state}</td>
						<td>${requirement.city}</td>
						<td>${requirement.bloodGroup}</td>
						<td>${requirement.firstName}</td>
						<td>${requirement.contactNumber}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</c:if>
	<c:if test="${experiencesStatus}">
		<div id="home-experience-block">
			<h3>Experiences</h3>
			<c:forEach items="${experiences}" var="experience">
				<i>"${experience.feedback}"</i><br>
				<b>-${experience.firstName} ${experience.lastName}, ${experience.hospital}, ${experience.city}</b><br><br>
			</c:forEach>
		</div>
	</c:if>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>

<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Home</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<nav>
	<a href="ShowHome">
		<img src="images/blood_logo.jpg" alt="logo" id="logo-img">
	</a>
	<div id="sitename">UPKAAR</div>
	<a href="ShowLoginRegistration">
		<button id="login-register-button">Login | Register</button>
	</a>
	<a href="tips-on-donating.jsp">
		<button id="tips-on-donating-button">Tips on Donating</button>
	</a>
	<a href="ShowFaq">
		<button id="faq-button">FAQ</button>
	</a>
</nav>
<section>
<div class="grid-container">
	<div class="left"><img src="111.png" alt="drop" id="img1"></div>
	<div class="middle">
	<div id="home">
		<h2>Why Should We Donate Blood?</h2>
		Safe Blood Saves Lives And Improves Health. Blood Transfusion Is Needed For:
		<ul>
			<li>Women with complications of pregnancy, such as ectopic pregnancies and haemorrhage before, during or after childbirth;</li>
			<li>Children with severe anaemia often resulting from malaria or malnutrition;</li>
			<li>People with severe trauma following man-made and natural disasters; and</li>
			<li>Many complex medical and surgical procedures and cancer patients.</li>
		</ul>
		It is also needed for regular transfusions for people with conditions such as Thalassaemia and sickle cell disease and is used to make products such as clotting factors for people with Haemophilia.
		<br><br>
		There is a constant need for regular blood supply because blood can be stored for only a limited time before use. Regular blood donations by a sufficient number of healthy people are needed to ensure that safe blood will be available whenever and wherever it is needed.
		<br><br>
		Blood is the most precious gift that anyone can give to another person - the gift of life. A decision to donate your blood can save a life, or even several if your blood is separated into its components - red cells, platelets and plasma - which can be used individually for patients with specific conditions.
		<br><br>
		<c:if test="${requirementsStatus}">
			<div id="home-requirement-table-block" style="height:300px;width:100%;overflow:auto;background-color:#f1f1f1;scrollbar-base-color:gold;padding:10px;">
				<h3>Requirements</h3>
				<table id="home-requirement-table">
					<tr>
						<th>State</th>
						<th>City</th>
						<th>Blood Type</th>
						<th>Posted By</th>
						<th>Contact</th>
					</tr>
					<c:forEach items="${requirements}" var="requirement">
						<tr>
							<td>${requirement.state}</td>
							<td>${requirement.city}</td> 
							<td>${requirement.bloodGroup}</td> 
							<td>${requirement.firstName}</td> 
							<td>${requirement.contactNumber}</td> 
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
		<c:if test="${experiencesStatus}">
			<div id="home-experience-block" style="height:300px;width:100%;overflow:auto;background-color:#f1f1f1;scrollbar-base-color:gold;padding:10px;">
				<h3>Experiences</h3>
				<c:forEach items="${experiences}" var="experience">
					<i>"${experience.feedback}"</i><br>
					<b>-${experience.firstName} ${experience.lastName}, ${experience.hospital}, ${experience.city}</b><br><br>
				</c:forEach>
			</div>
		</c:if>
	</div>
</div>
<div class="right"><img src="123.jpg"></div>
</div>
</section>
<footer>
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html> --%>