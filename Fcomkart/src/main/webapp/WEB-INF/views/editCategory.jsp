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
<title>Shopping</title>
<title>Insert title here</title>
</head>
<body>
<script>
function formCategory() {
var categoryName = document.getElementById('category_name');
var description = document.getElementById('description');
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
<form action="categoryEdited" method="post" onsubmit="return formCategory()">
  <br><br><br>Category Id:<br>
  <input type="text" name="categoryId" value="${category.categoryId}" readonly="true"><br><br>
  Category Name:<br>
  <input type="text" name="categoryName" value="${category.categoryName}" id="category_name"><br><br>
  Description:<br>
  <input type="text" name="Description" value="${category.description}" id="description"><br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>