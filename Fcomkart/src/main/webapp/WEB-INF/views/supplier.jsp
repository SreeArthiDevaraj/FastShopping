<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Shopping</title>
<title>Insert title here</title>
<script>
function formSupplier() {
	var supplierName = document.getElementById('supplierName_fr');
	var  contactNo = document.getElementById('contactNo_fr');
	var address = document.getElementById('address_fr');
	
	if (notEmpty(supplierName_fr, " Supplier Name Should not be empty")) 
	{
		
		if (isAlphabet(supplierName, "Please enter only letters for Supplier Name "))
			{
			if (isNumeric(contactNo, "Pnone # Should  be numeric")) 
			{
				if (isAlphanumeric(address, "Please enter alpha-numeric characters for Address"))
				{
					
				
			return true ;
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
	
	
	
	
</script>
<style>
 body{
 		margin: 0;
  		padding-top: 70px;
      
  }
.custab {
	border: 1px solid #ccc;
	padding: 5px;
	margin: 5% 0;
	box-shadow: 3px 3px 2px #ccc;
	transition: 0.5s;
}
.custab:hover {
	box-shadow: 3px 3px 0px transparent;
	transition: 0.5s;
}

</style>
</head>
<body>
<form action="newSupplier" method="post" class="form-horizontal" onsubmit="return formSupplier()">
<fieldset>

<!-- Form Name -->


<div style="margin-top: 50px;" class="mainbox col-xs-6 col-xs-offset-3">
		<div class="panel panel-info">
			<div class="panel-heading">
				<div style="font-size: 25px; text-align: center;"
					class="panel-title">Supplier Details</div>
			</div>
</div>
</div>
<!-- Select Basic -->



<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="supplierName_fr">SupplierName</label>
<div class="col-md-4">
<input type="text"id="supplierName_fr"name="supplierName"class="form-control">

</div>
</div>

<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="contactNo_fr">ContactNo</label>
<div class="col-md-4">
<input type="text"id="contactNo_fr"name="contactNo"class="form-control">

</div>
</div>

<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="address_fr">Address</label>
<div class="col-md-4">
<input type="text"id="address_fr"name="address"class="form-control">

</div>
</div>


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
    