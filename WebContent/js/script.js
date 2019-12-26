function validateRegistrationForm() {
	var firstName = document.forms["registrationForm"]["firstName"];
	var lastName = document.forms["registrationForm"]["lastName"];
	var age = document.forms["registrationForm"]["age"];
	var gender = document.forms["registrationForm"]["gender"];
	var contactNumber = document.forms["registrationForm"]["contactNumber"];
	var email = document.forms["registrationForm"]["email"];
	var password = document.forms["registrationForm"]["password"];
	var weight = document.forms["registrationForm"]["weight"];
	var state = document.forms["registrationForm"]["state"];
	var city = document.forms["registrationForm"]["city"];
	var pinCode = document.forms["registrationForm"]["pinCode"];
	var bloodGroup = document.forms["registrationForm"]["bloodGroup"];
	var userType = document.forms["registrationForm"]["userType"];
	var empty = false;
	if (firstName.value == "") {
		firstName.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		firstName.style.border = "";
	}
	if (lastName.value == "") {
		lastName.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		lastName.style.border = "";
	}
	if (age.value == "") {
		age.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		age.style.border = "";
	}
	if (gender.value == "") {
		gender.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		gender.style.border = "";
	}
	if (contactNumber.value == "") {
		contactNumber.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		contactNumber.style.border = "";
	}
	if (email.value == "") {
		email.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		email.style.border = "";
	}
	if (password.value == "") {
		password.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		password.style.border = "";
	}
	if (weight.value == "") {
		weight.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		weight.style.border = "";
	}
	if (state.value == "") {
		state.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		state.style.border = "";
	}
	if (city.value == "") {
		city.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		city.style.border = "";
	}
	if (pinCode.value == "") {
		pinCode.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		pinCode.style.border = "";
	}
	if (bloodGroup.value == "") {
		bloodGroup.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		bloodGroup.style.border = "";
	}
	if (empty) {
		alert("Please Update The Highlighted Mandatory Field(s).");
		return false;
	}
	if (!firstName.value.match(/^[a-zA-Z ]+$/)) {
		alert("Please Enter Only Alphabets In The Name Fields.");
		return false;
	} else if ((firstName.value.length) < 2 || (firstName.value.length) > 50) {
		alert("Name Should Have 2 To 50 Characters.");
		return false;
	} else if (!lastName.value.match(/^[a-zA-Z ]+$/)) {
		alert("Please Enter Only Alphabets In The Name Fields.");
		return false;
	} else if ((lastName.value.length) < 2 || (lastName.value.length) > 50) {
		alert("Name Should Have 2 To 50 Characters.");
		return false;
	} else if ((age.value.length) > 3 || (age.value <= 0)) {
		alert("Please Enter Valid Age.");
		return false;
	} else if (isNaN(contactNumber.value)) {
		alert("Please Enter Valid Contact Number.");
		return false;
	} else if (!(contactNumber.value.length == 10)) {
		alert("Please Enter Valid Contact Number.");
		return false;
	} else if ((weight.value.length) > 3 || (weight.value <= 0)) {
		alert("Please Enter Valid Weight.");
		return false;
	} else if (!(pinCode.value.length == 6) || pinCode.value < 0) {
		alert("Please Enter Valid Pin Code.");
		return false;
	}  else if ((!userType[0].checked) && (!userType[1].checked)) {
		alert("Please Select User Type.");
		return false;
	} else if (password.value.length < 7) {
		alert("Password Is Weak.");
		return false;
	} else {
		return true;
	}
}

function validateLoginForm() {
	var username = document.forms["loginForm"]["username"];
	var password = document.forms["loginForm"]["password"];
	var usernameEmpty = false;
	var passwordEmpty = false;
	if (username.value == "") {
		username.style.border = "1px solid #ef3026";
		usernameEmpty = true;
	} else {
		username.style.border = "";
	}
	if (password.value == "") {
		password.style.border = "1px solid #ef3026";
		passwordEmpty = true;
	} else {
		password.style.border = "";
	}
	if(usernameEmpty && passwordEmpty) {
		alert("Enter Credentials.");
		return false;
	} else if (usernameEmpty) {
		alert("Enter Username.");
		return false;
	} else if (passwordEmpty) {
		alert("Enter Password.");
		return false;
	} else {
		return true;
	}
}

function hideCities() {
	var allCities = document.getElementsByClassName("city");
	for (var i = 0; i < allCities.length; i++) {
		allCities[i].style.display = "none";
	}
}

function populateCities(state) {
	document.getElementById("city").value = "";
	var allCities = document.getElementsByClassName("city");
	var requiredCities = document.getElementsByClassName(state);
	for (var i = 0; i < allCities.length; i++) {
		allCities[i].style.display = "none";
	}
	for (i = 0; i < requiredCities.length; i++) {
		requiredCities[i].style.display = "";
	}
}

function validateExperienceForm() {
	var city = document.forms["experienceForm"]["city"];
	var hospital = document.forms["experienceForm"]["hospital"];
	var feedback = document.forms["experienceForm"]["feedback"];
	var empty = false;
	if (city.value == "") {
		city.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		city.style.border = "";
	}
	if (hospital.value == "") {
		hospital.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		hospital.style.border = "";
	}
	if (feedback.value == "") {
		feedback.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		feedback.style.border = "";
	}
	if (empty) {
		alert("Please update the highlighted mandatory field(s).");
		return false;
	}
	if(feedback.value.length > 144) {
		alert("Feedback cannot be more than 144 characters.");
		return false;
	} else {
		return true;
	}
}

function hideHospitals() {
	var allHospitals = document.getElementsByClassName("hospital");
	for (var i = 0; i < allHospitals.length; i++) {
		allHospitals[i].style.display = "none";
	}
}

function populateHospitals(city) {
	document.getElementById("hospital").value = "";
	var allHospitals = document.getElementsByClassName("hospital");
	var requiredHospitals = document.getElementsByClassName(city);
	for (var i = 0; i < allHospitals.length; i++) {
		allHospitals[i].style.display = "none";
	}
	for (i = 0; i < requiredHospitals.length; i++) {
		requiredHospitals[i].style.display = "";
	}
}

function validateRequirementForm() {
	var state = document.forms["requirementForm"]["state"];
	var city = document.forms["requirementForm"]["city"];
	var pinCode = document.forms["requirementForm"]["pinCode"];
	var bloodGroup = document.forms["requirementForm"]["bloodGroup"];
	var empty = false;
	if (state.value == "") {
		state.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		state.style.border = "";
	}
	if (city.value == "") {
		city.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		city.style.border = "";
	}
	if (pinCode.value == "") {
		pinCode.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		pinCode.style.border = "";
	}
	if (bloodGroup.value == "") {
		bloodGroup.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		bloodGroup.style.border = "";
	}
	if (empty) {
		alert("Please update the highlighted mandatory field(s).");
		return false;
	}
	if((pinCode.value.length != 6) || (pinCode.value < 0)) {
		alert("Please enter valid pin code.");
		return false;
	} else {
		return true;
	}
}

function slotUnavailableAlert() {
	alert("Slot Unavailable.");
	return false;
}

function validateAvailabilityForm() {
	var state = document.forms["availabilityForm"]["state"];
	var city = document.forms["availabilityForm"]["city"];
	var pinCode = document.forms["availabilityForm"]["pinCode"];
	var bloodGroup = document.forms["availabilityForm"]["bloodGroup"];
	var contactNumber = document.forms["availabilityForm"]["contactNumber"];
	var empty = false;
	if (state.value == "") {
		state.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		state.style.border = "";
	}
	if (city.value == "") {
		city.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		city.style.border = "";
	}
	if (pinCode.value == "") {
		pinCode.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		pinCode.style.border = "";
	}
	if (bloodGroup.value == "") {
		bloodGroup.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		bloodGroup.style.border = "";
	}
	if (contactNumber.value == "") {
		contactNumber.style.border = "1px solid #ef3026";
		empty = true;
	} else {
		contactNumber.style.border = "";
	}
	if (empty) {
		alert("Please update the highlighted mandatory field(s).");
		return false;
	}
	if((pinCode.value.length != 6) || (pinCode.value < 0)) {
		alert("Please enter valid pin code.");
		return false;
	} else if (isNaN(contactNumber.value)) {
		alert("Please enter valid contact number.");
		return false;
	} else if (!(contactNumber.value.length == 10)) {
		alert("Please enter valid contact number.");
		return false;
	} else {
		return true;
	}
}

function validateQueryForm() {
	var query = document.forms["queryForm"]["query"];
	if (query.value == "") {
		alert("You haven't entered any query.");
		return false;
	} else if (query.value.length > 144) {
		alert("Query can't be more than 144 characters long.");
		return false;
	} else {
		return true;
	}
}

function hideQueryBlock() {
	var queryBlock = document.getElementById("query-block");
	queryBlock.style.display = "none";
}

function showQueryBlock() {
	var queryBlock = document.getElementById("query-block");
	queryBlock.style.display = "";
	var raiseQueryButton = document.getElementById("raise-query-button");
	raiseQueryButton.style.display = "none";
}