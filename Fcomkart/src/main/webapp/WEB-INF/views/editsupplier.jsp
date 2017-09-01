<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<script>
function formSupplier() {
	var supplierName = document.getElementById('supplierName_fr');
	var contactNo = document.getElementById('contactNo_fr');
	var address = document.getElementById('address_fr');
	
	
	if (notEmpty(supplierName, " Category Name Should not be empty")) 
	{
		
		if (isAlphabet(supplierName, "Please enter only letters for Supplier Name "))
			{
			if (isNumeric(contactNo, "Pnone # Should  be numeric")) 
			{
				if (isAlphanumeric(address, "Please enter alpha-numeric characters for Address"))
				{
					
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
	
	
	
	}
	
</script>
<form action="supplierEdited" method="post" onsubmit="return formSupplier()">

 <br><br><br> SupplierId:<br>
  <input type="text" name="SupplierId" value="${supplier.supplierId}" readonly="true"><br><br>
  Supplier Name:<br>
  <input type="text" name="SupplierName" value="${supplier.supplierName}"><br><br>
  Contact No:<br>
  <input type="text" name="ContactNo" value="${supplier.contactNo}"><br><br>
  Address:<br>
  <input type="text" name="Address" value="${supplier.address}"><br><br>
  <input type="submit" value="Submit">
  
</form>
</body>
</html>