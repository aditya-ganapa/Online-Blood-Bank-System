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
	var area = document.forms["registrationForm"]["area"];
	var pinCode = document.forms["registrationForm"]["pinCode"];
	var bloodGroup = document.forms["registrationForm"]["bloodGroup"]; 
	var empty = false;
	if (firstName.value == "") {
		firstName.style.border = "1px solid red";
		empty = true;
	}
	else {
		firstName.style.border = "";
	}
	if (lastName.value == "") {
		lastName.style.border = "1px solid red";
		empty = true;
	}
	else {
		lastName.style.border = "";
	}
	if (age.value == "") {
		age.style.border = "1px solid red";
		empty = true;
	}
	else {
		age.style.border = "";
	}
	if (gender.value == "") {
		gender.style.border = "1px solid red";
		empty = true;
	}
	else {
		gender.style.border = "";
	}
	if (contactNumber.value == "") {
		contactNumber.style.border = "1px solid red";
		empty = true;
	}
	else {
		contactNumber.style.border = "";
	}
	if (email.value == "") {
		email.style.border = "1px solid red";
		empty = true;
	}
	else {
		email.style.border = "";
	}
	if (password.value == "") {
		password.style.border = "1px solid red";
		empty = true;
	}
	else {
		password.style.border = "";
	}
	if (weight.value == "") {
		weight.style.border = "1px solid red";
		empty = true;
	}
	else {
		weight.style.border = "";
	}
	if (state.value == "") {
		state.style.border = "1px solid red";
		empty = true;
	}
	else {
		state.style.border = "";
	}
	if (area.value == "") {
		area.style.border = "1px solid red";
		empty = true;
	}
	else {
		area.style.border = "";
	}
	if (pinCode.value == "") {
		pinCode.style.border = "1px solid red";
		empty = true;
	}
	else {
		pinCode.style.border = "";
	}
	if (bloodGroup.value == "") {
		bloodGroup.style.border = "1px solid red";
		empty = true;
	}
	else {
		bloodGroup.style.border = "";
	}
	if (empty) {
		alert("Please update the highlighted mandatory field(s).");
		return false;
	}
	if (!firstName.value.match(/^[a-zA-Z ]+$/)) {
		alert("Please enter only alphabets in the name fields");
		return false;
	}  else if ((firstName.value.length) < 2 || (firstName.value.length) > 50) {
		alert("Your name should have 2 to 50 characters.");
		return false;
	}	 else if (!lastName.value.match(/^[a-zA-Z ]+$/)) {
		alert("Please enter only alphabets in the name fields");
		return false;
	} else if ((lastName.value.length) < 2 || (lastName.value.length) > 50) {
		alert("Your name should have 2 to 50 characters.");
		return false;
	}   else if ((age.value.length) > 3 || (age.value <= 0)) {
		alert("Please enter valid age");
		return false;
	}   else if (isNaN(contactNumber.value)) {
		alert("Invalid Contact Number");
		return false;
	} else if (!(contactNumber.value.length == 10)) {
		alert("Invalid Contact Number");
		return false;
	}  else if ((password.value.length) > 15) {
		alert("The password can only be 15 characters long");
		return false;
	}  else if ((weight.value.length) > 3 || (weight.value <= 0)) {
		alert("Please enter valid weight");
		return false;
	}   else if (!(pinCode.value.length == 6) || pinCode.value < 0) {
		alert("Please enter valid pincode");
		return false;
	}  else {
		return true;
	}
}

function validateLoginForm() {
	var username = document.forms["loginForm"]["username"];
	var password = document.forms["loginForm"]["password"];
	var usernameEmpty = false;
	var passwordEmpty = false;
	if (username.value == "") {
		username.style.border = "1px solid red";
		usernameEmpty = true;
	} else {
		username.style.border = "";
	}
	if (password.value == "") {
		password.style.border = "1px solid red";
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