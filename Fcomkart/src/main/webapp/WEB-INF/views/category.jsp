<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE htmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
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
<style type="text/css">
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
<script>
function formCategory() {
var categoryName = document.getElementById('category_name');
var description = document.getElementById('description_fr');
if (notEmpty(categoryName, " Category Name Should not be empty")) 
{
	
	if (isAlphabet(categoryName, "Please enter only letters for Category Name "))
		{
		if (notEmpty(description, "Description Should not be empty")) 
		{
			if (isAlphanumeric(description, "Please enter alpha-numeric characters for Description"))
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
	var alphaExp = /^[0-9a-zA-Z]+$/;
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

<form action="newCategory"class="form-horizontal" method="post" onsubmit="return formCategory()">
<fieldset>

<!-- Form Name -->
<!-- <legend>CATEGORY</legend> -->
<div style="margin-top: 50px;" class="mainbox col-xs-6 col-xs-offset-3">
		<div class="panel panel-info">
			<div class="panel-heading">
				<div style="font-size: 25px; text-align: center;"
					class="panel-title">Category Details</div>
			</div>
</div>
</div>
<!-- Select Basic -->




<div class="form-group">
<label class="col-md-4 control-label"for="category_name">CategoryName</label>
<div class="col-md-4">
<input type="text"id="category_name"name="categoryName"class="form-control">
</div>
</div>

<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="category_description_fr">Description</label>
<div class="col-md-4">
<input type="text"id="description_fr"name="description"class="form-control">

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
