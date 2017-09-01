<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<h3 style="margin-top: 30px;">Product Details</h3>
		<div class="row col-md-10 custyle">
			<table class="table table-striped custab">
				<thead style="color: #090df7; font-weight: bold; font-size: 18px;"
					class="table-default active">
					<tr>
						<td>S.No</td>
						<td>Product Id</td>
						<td>Product Name</td>
						<td>Category</td>
						<td>Description</td>
						<td>Supplier</td>
						<td>Stock</td>
						<td>Price</td>
						<td>image</td>
						<td>Update</td>
						<td>Delete</td>
						
					</tr>
				</thead>
				<tbody style="color: #090df7; font-size: 15px;">
					<c:forEach items="${ProductList}" var="product" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${product.productId}</td>
							<td>${product.productName}</td>
							<td>${product.categoryId}</td>
							<td>${product.productDescription}</td>
							<td>${product.supplierId}</td>
							<td>${product.stock}</td>
							<td>${product.price}</td>
							<c:url value="/resources/product/${product.productId}.jpg" var="url1"></c:url>
							<td><img src ="${url1}" alt="${product.productId}" width=100px; height=100px; ></td>
								<td><a href="editproduct?productId=${product.productId}">Edit</a></td>
			<td><a href="deleteProduct?productId=${product.productId}" onclick="return confirm('Are You Sure? Do you Want Delete Product : ${product.productName} ?')">Delete</a></td>
								
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>


</body>
</html>