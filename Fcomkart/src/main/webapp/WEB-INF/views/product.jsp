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
<title>Shopping</title>
<title>Insert title here</title>
</head>
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
<body>
<script>
  function formProduct(){
		// Make quick references to our fields
		
		var productname = document.getElementById('product_name_fr');
		var productdescription = document.getElementById('produc_descripition_fr');
		var category = document.getElementById('category');
		var suppliername = document.getElementById('supplier');
		var price = document.getElementById('price_fr');
		var stock = document.getElementById('stock_fr');
		// Check each input in the order that it appears in the form!
		
					if (notEmpty(productname, "Product Name Should not be empty")) {
							if (isAlphabet(productname,
									"Please enter only letters for Product Name")) {
								if (notEmpty(productdescription,"Product Description Should not be empty")){
								         if (isAlphabet(productdescription,
								        "Please enter only letters for Product Description")) {
								        	 if (notEmpty(category,"Category Should not be empty")){
								        		 if(notEmpty(suppliername, "Supplier Name should not be empty")){
								        	
										if (notEmpty(price,
												"Price Should not be empty")) {
											if (isNumeric(price,
													"Please enter only number for Price")) {
														if (notEmpty(stock,
																"Stock Should not be empty")) {
															if (isNumeric(
																	stock,
																	"Please enter a valid Stock")) {
																if(notEmpty(file, "File should not be empty")){
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
  </script>
 
<form action="newProduct" method="post" class="form-horizontal" enctype="multipart/form-data"onsubmit="return formProduct()">
<fieldset>

<!-- Form Name -->

<!-- Select Basic -->


<div style="margin-top: 50px;" class="mainbox col-xs-6 col-xs-offset-3">
		<div class="panel panel-info">
			<div class="panel-heading">
				<div style="font-size: 25px; text-align: center;"
					class="panel-title">Product Details</div>
			</div>
</div>
</div>



<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="product_name_fr">ProdutcName</label>
<div class="col-md-4">
<input type="text"id="product_name_fr"name="productName"class="form-control">

</div>
</div>

<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="product_descripition_fr">ProductDescripition</label>
<div class="col-md-4">
<input type="text"id="produc_descripition_fr"name="productDescription"class="form-control">

</div>
</div>

<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="stock_fr">Stock</label>
<div class="col-md-4">
<input type="text"id="stock_fr"name="stock"class="form-control">

</div>
</div>

<!-- Select Basic -->
<div class="form-group">
<label class="col-md-4 control-label"for="price_fr">Price</label>
<div class="col-md-4">
<input type="text"id="price_fr"name="price"class="form-control">

</div>
</div>
<div class="form-group">
					<label class="col-xs-4 control-label" for="post">CategoryName</label>
					<div class="col-xs-6">
						<select name="categoryId" id="category" class="form-control">
							<option value="" class="form-control">Select Category</option>
							<c:forEach items="${categoryList}" var="category">
								<option value="${category.categoryId}">${category.categoryName}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-xs-4 control-label" for="post">SupplierName</label>
					<div class="col-xs-6">
						<select name="supplierId" id="supplier" class="form-control">
							<option value="" class="form-control">Select Supplier</option>
							<c:forEach items="${supplierList}" var="supplier" varStatus="status">
								<option value="${supplier.supplierId}">${supplier.supplierName}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="form-group" style="centre">
					<label>Upload an image</label>
				<input type="file" name="pimage" />
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