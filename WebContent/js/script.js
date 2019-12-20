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

	if (firstName.value == "") {
		alert("Please enter your first name");
		firstName.style.border = "1px solid red";
		return false;
	} else if (lastName.value == "") {
		alert("Please enter your last name");
		lastName.style.border = "1px solid red";
		return false;
	} else if (age.value == "") {
		alert("Please enter your age");
		return false;
	} else if (gender.value == "") {
		alert("Select your gender");
		return false;
	} else if (contactNumber.value == "") {
		alert("Please enter your Contact Number");
		return false;
	} else if (email.value == "") {
		alert("Please enter your Email Address");
		return false;
	} else if (password.value == "") {
		alert("Please enter your password");
		return false;
	} else if (weight.value == "") {
		alert("Please enter your weight");
		return false;
	} else if (state.value == "") {
		alert("Please enter your state");
		return false;
	} else if (area.value == "") {
		alert("Please enter your area");
		return false;
	} else if (pinCode.value == "") {
		alert("Please enter the pincode of your area");
		return false;
	} else if (bloodGroup.value == "") {
		alert("Select your blood group");
		return false;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	else if (!firstName.value.match(/^[a-zA-Z ]+$/)) {
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
	}   else if ((age.length) > 3 || (age <= 0)) {
		alert("Please enter valid age");
		return false;
	}   else if (isNaN(contactNumber)) {
		alert("Invalid Contact Number");
		return false;
	} else if (!(contactNumber.length == 10)) {
		alert("Invalid Contact Number");
		return false;
	}  else if ((password.length) > 15) {
		alert("The password can only be 15 characters long");
		return false;
	}  else if ((weight.length) > 3 || (weight <= 0)) {
		alert("Please enter valid weight");
		return false;
	}   else if (!(pinCode.length == 6) || pinCode < 0) {
		alert("Please enter valid pincode");
		return false;
	}  else {
		return true;
	}
}