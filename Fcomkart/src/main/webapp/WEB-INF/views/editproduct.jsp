<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Shopping</title>
<script>
function formProd() {
	var productname = document.getElementById('product_name_fr');
	var productDescription = document.getElementById('produc_descripition_fr');
	var price = document.getElementById('price_fr');
	var category = document.getElementById('category');
	var suppliername = document.getElementById('supplier');
	
	var stock = document.getElementById('stock_fr');
	
	if (notEmpty(productName, " Product Name Should not be empty")) 
	{
		
		if (isAlphabet(productName, "Please enter only letters for Product Name "))
			{
			
				if (isAlphanumeric(productDescription, "Please enter alpha-numeric characters for Description"))
				{
					if (notEmpty(price,
					"Price Should not be empty")) 
					{
						if (isNumeric(
								price,
								"Please enter a valid price"))
							{
							if (notEmpty(stock,
							"Stock Should not be empty")) 
							{
								if (isNumeric(
										stock,
										"Please enter a valid stock quantity"))
							
							{
				
			return true ;
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
<title>Insert title here</title>
</head>
<body>
<form action="productEdited" method="post">
  <br><br><br>ProductId:<br>
  <input type="text" name="productId" value="${product.productId}" readonly="true" ><br><br>
  productName:<br>
  <input type="text" name="productName" value="${product.productName}"><br><br>
  productDescription:<br>
  <input type="text" name="productDescription" value="${product.productDescription}" ><br><br>
  stock:<br>
  <input type="text" name="stock" value="${product.stock}" ><br><br>
  price:<br>
  <input type="text" name="price" value="${product.price}" ><br><br>
  categoryId:<br>
  <input type="text" name="categoryId" value="${product.categoryId}" ><br><br>
  supplierId<br>
  <input type="text" name="supplierId" value="${product.supplierId}" ><br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>