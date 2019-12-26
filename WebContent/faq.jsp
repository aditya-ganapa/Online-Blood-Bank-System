<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>FAQ</title>
	<script src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body onload="hideQueryBlock()">
<nav>
		<a href="home.jsp">
			<img src="images/blood_logo.jpg" alt="logo" id="logo-img">
		</a>
		<div id="sitename">UPKAAR</div>
		<a href="ShowLoginRegistration">
			<button  id="login-register-button">Login | Register</button>
		</a>
		<a href="tips-on-donating.jsp">
			<button  id="tips-on-donating-button">Tips on Donating</button>
		</a>
		<a href="faq.jsp">
			<button  id="faq-button">FAQ</button>
		</a>
</nav>
<section>
<div id="faq">
<h2>What are the minimum requirements to become a blood donor?</h2>
<p>Check with your local blood bank to determine the specific requirements. You must be at least 16 years of age, a minimum of 110 pounds, and in basic good health.</p>
<h2>Will donating blood hurt?</h2>
<p>You might feel a slight sting in the beginning lasting only a couple of seconds, but there should be no discomfort during the donation.</p>
<h2>Are blood donors paid?</h2>
<p>No. Blood collected for transfusion in the US is collected from volunteer blood donors.</p>
<h2>How badly is blood needed?</h2>
<p>Blood supplies vary depending on the region and time of year. As more restrictive donor criteria are necessary to protect the safety of the blood supply and as the donor population ages, the inventory levels are affected across the nation. If you are eligible, your blood donations are needed. The inventory levels of blood would be more consistently maintained if more of those who are eligible donate 1-2 times each year.</p>
<h2>Why are there often blood shortages?</h2>
<p>Most blood centers strive to maintain an optimum inventory level of a three-day supply. Due to unpredictable demands for trauma patients, the inventory fluctuates hourly. When the blood supply drops below a three-day level, blood centers begin alerting local donors to increase the inventory to a safe operating level.</p>
<h2>Are sterile supplies used?</h2>
<p>Based on AABB Standards and FDA regulations, all needles, tubing sets, collection bags and other donation supplies are sterile, used once, and discarded in the trash to protect the donor, the transfusion recipient, and the blood donor center staff.</p>
<h2>How much blood is taken?</h2>
<p>For a whole blood donation, approximately 500 ml or one-half liter of blood is collected. For donations of other blood products, such as platelet or plasma, the amount collected depends on your height, weight and platelet count.</p>
<h2>How often may I donate?</h2>
<p>The Medical Director of each blood donor center is responsible for setting policies regarding the frequency of donation. The policies set by a Medical Director can be more restrictive, permitting donation less frequently than permitted by AABB Standards and FDA regulations. Based on AABB and FDA requirements, you must wait 56 days between whole blood donations. Platelet (apheresis) donors may donate more frequently. This is because the body replenishes platelets and plasma more quickly than red cells. Platelets will return to normal levels within about 72 hours of donating. Plasma (the liquid portion of your blood) will return to normal levels within a couple of days. </p>
<h2>Does donated blood stay on the shelf indefinitely until it is used?</h2>
<p>No. Each unit of whole blood is separated into several components. Red blood cells may be stored under refrigeration for a maximum of 42 days, or frozen for up to 10 years. Platelets are stored at room temperature and may be kept for a maximum of five to seven days. Fresh frozen plasma is kept in a stored frozen state for up to one year. Cryoprecipitated AHF is stored frozen for up to one year. Granulocytes must be transfused within 24 hours of donation.</p>
<p>Other products manufactured from blood include albumin, immune globulin, specific immune globulins, and clotting factor concentrates. Commercial manufacturers commonly produce these blood products.</p>
<h2>Are the history questions necessary every time I donate?</h2>
<p>Yes, this ensures the safest possible blood supply, all donors must be asked all the screening questions at each donation. Both AABB and FDA regulations specifically require that all blood donors complete the donor history questionnaire on the day of donation and prior to donating.</p>
<h2>What is the most common blood type?</h2>
<p>The approximate distribution of blood types in the U.S. blood donor population is as follows. Distribution may be different for specific racial and ethnic groups and in different parts of the country:<br>
O Rh-positive --- 39 percent<br> 
O Rh-negative ---  9 percent <br>
A Rh-positive --- 30 percent <br>
A Rh-negative ---  6 percent<br>
B Rh-positive ---    9 percent<br>
B Rh-negative ---   2 percent <br>
AB Rh-positive ---  4 percent <br>
AB Rh-negative --- 1 percent</p>
<p>In an emergency, anyone can receive type O red blood cells. Therefore, people with type O blood are known as "universal blood donors." In addition, individuals with AB type plasma are the universal plasma donors.</p>
</div>
<div id="raise-query-button-block">
	<button id="raise-query-button" onclick="showQueryBlock()">Raise A Query</button>
</div>
<div id="query-block">
	<form name="queryForm" onsubmit="return validateQueryForm()" method="post" action="Query">
		<textarea name="query" id="query-textarea"></textarea><br><br>
		<input type="submit" name="submit" value="Submit Query"><br><br>
	</form>
</div>
</section>
<footer style="position: relative;">
	<p>A Single Pint Can Save Three Lives; A Single Gesture Can Create a Million Smiles.</p>
</footer>
</body>
</html>