
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	function formRegister() {
		// Make quick references to our fields
		
		var username = document.getElementById('user_name_fr');
		var email = document.getElementById('email_id_fr');
		var password = document.getElementById('password_fr');
		var phone = document.getElementById('contactNumber_fr');
		var address = document.getElementById('address_fr');
	
		// Check each input in the order that it appears in the form!
		
					if (notEmpty(user_name_fr, "Username Should not be empty")) {
							if (isAlphabet(username,
									"Please enter only letters for Username")) {
								if (notEmpty(email,
								"EmailId Should not be empty")) {
									if(emailValidator(email, "Please Enter a valid Email id")){
								if (notEmpty(password,
										"password Should not be empty")) {
									if (isAlphanumeric(password,
											"Numbers and Letters Only for Passwords")) {
										if (notEmpty(phone,
												"PhoneNumber Should not be empty")) {
											if (isNumeric(phone,
													"Please enter only number for PhoneNumber")) {
												
													if (notEmpty(address,
															"Address Should not be empty")) {
														
																return true;
															
														
													}
												}
											}
										}
									}
								}
							}
						}
  }
		return false;
	}
  
  function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
  
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
  
	
  </script>
<title>Insert title here</title>
<style>
 body {
  
  background-size: 20px 20px;
  font-family: futura;
}

form {
	width: 350px;
	height: 400px;
	background: white;
	margin: auto;
	margin-top: 50px;
	border: 1px solid #797E93;
	border-radius: 15px;
	box-shadow: 1px 1px 2px 1px #797E93;
}

h1 {
	color: #4C7134;
	text-align: center;
	margin-top: 0;
	margin-top: 5px;
}

label {
	text-transform: uppercase;
	font-size: 14px;
	color: gray;
	display: block;
	margin-bottom: 5px;
	margin-left: 25px;
}

input {
	display: block;
	margin-left: 25px;
	margin-bottom: 20px;
	padding: 7px;
}

.submit {
	width: 70px;
	height: 40px;
	background-color: #4C7134;
	border: 1px solid #4C7134;
	border-radius: 5px;
	color: white;
	font-weight: bold;
	font-size: 14px;
}

p {
	color: gray;
	margin-left: 25px;
	font-size: 12px;
}

a {
	color: purple;
	text-decoration: none;
}

a:hover {
	color: green;
</style>

</head>
<body>
<c:url value="/all/newUser" var="action"></c:url>
<form action="${action}" method="post" onsubmit="return formRegister()">
<fieldset>

<!-- Form Name -->
<legend>Signup here</legend>


<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="user_name_fr">UserName</label>
<div class="col-md-4">
<input type="text"id="user_name_fr"name="userName"class="form-control">

</div>
</div>
<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="email_id_fr">EmailId</label>
<div class="col-md-4">
<input type="text"id="email_id_fr"name="emailId"class="form-control">

</div>
</div>

<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="password_fr">Password</label>
<div class="col-md-4">
<input type="text"id="password_fr"name="password"class="form-control">
</div>
</div>


<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="contactNumber_fr">ContactNumber</label>
<div class="col-md-4">
<input type="text"id="contactNumber_fr"name="contactNumber"class="form-control">

</div>
</div>

<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="address_fr">Address</label>
<div class="col-md-4">
<input type="text"id="address_fr"name="address"class="form-control">

</div>
</div>

<!-- Select Basic -->

<!-- Button -->
<div class="form-group">
<label class="col-md-4 control-label"for=""></label>
<div class="col-md-4">
<button type="submit"name=""class="btnbtn-primary">Submit</button>
</div>
</div>
</fieldset>
</form>
</body>
</html>
