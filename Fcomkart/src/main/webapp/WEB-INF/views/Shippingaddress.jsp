<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link rel="stylesheet" href="css/style.css"> -->
 
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Philosopher" />
  <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<script src="js/main.min.js"></script>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<style>
 body{
		margin: 0;
  		padding-top: 70px;
       
  }
 
  </style>
  <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Insert title here</title>
	<script>
	function formShip() {
	var username = document.getElementById('user_name_fr');
	var contactNumber = document.getElementById('contact_Number_fr');
	
	var address = document.getElementById('address_fr');
	
	
	if (notEmpty(name, "Name Should not be empty")) 
	{
		if (isAlphabet(name, "Please enter only letters for name"))
			{
			if (notEmpty(phone,
			"PhoneNumber Should not be empty")) 
			
		{
			if (isNumeric(phone,
			"Please enter only number for PhoneNumber")) 
		{
				if (notEmpty(address,
				"Address Should not be empty"))
				{	
					if (isAlphanumeric(address,
					"Numbers and Letters Only for Address")) 
					{	
						
					if (notEmpty(zipcode,
					"Zipcode Should not be empty")) 
					{
				
					
					
					
					return true;
				
			
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
var alphaExp = /^[0-9a-zA-Z\.\-]+$/;
if (elem.value.match(alphaExp)) {
return true;
} else {
alert(helperMsg);
elem.focus();
return false;
}
}
					
	
	</script>
<body>

<div style="margin-left: 15em;" align="center" >
<c:url value="/Cart/addShippingaddress" var="url1"/>
<form action="${url1}" class="form-horizontal" method="post" onsubmit="return formShip()">
<fieldset>

 <div class="form-group">
<c:if test="${shippingaddress.shippingId>0}">
 <div class="col-md-4">
 <input type="hidden" id="supplierId_fr" name="shippingId" class="form-control" value="${shippingaddress.shippingId}" >
  </div>
</c:if>
</div>
<div class="form-group">
 <label class="col-md-4 control-label" for="user_name_fr">USERNAME</label>
 <div class="col-md-4">
 <input type="text" id="user_name_fr" name="userName" class="form-control" value="${shippingaddress.userName}">
 </div>
</div>

<!-- Select Basic -->

<div class="form-group">
 <label class="col-md-4 control-label" for="address_fr">ADDRESS</label>
 <div class="col-md-4">
 <input type="text" id="address_fr" name="address" class="form-control" value="${shippingaddress.address}">
</div>
</div>

<!-- selectBasic -->

<div class="form-group">
 <label class="col-md-4 control-label" for="contact_Number_fr">CONTACTNUMBER</label>
  <div class="col-md-4">
 <input type="text" id="contact_Number_fr" name="contactNumber" class="form-control" value="${shippingaddress.contactNumber}">
  </div>
</div>

<!-- Button -->
<div class="form-group">
 <label class="col-md-4 control-label" for=""></label>
<div class="col-md-4">
 <button type="submit" name="" class="btn btn-primary">Submit</button>
 </div>
 </div>
 </fieldset>

  </form>
 </div>

 
</body>
</html>