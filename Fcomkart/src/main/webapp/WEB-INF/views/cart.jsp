<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.w3-btn {margin-bottom:10px;}

</style>

</head>
<body>
<div class="container">
<c:if test="${cartlength > 0}">
		<h3 style="margin-top: 30px;">Cart Details</h3>
		<div class="row col-md-10 custyle">
			<table class="table table-striped custab">
				<thead style="color: #090df7; font-weight: bold; font-size: 20px;"
					class="table-default active">
					<tr>
				<th>S.No</th>
				<th>Cart Id</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Total</th>
				<th>Days</th>
				<th>Remove</th>

			</tr>
			<c:forEach items="${cartList}" var="cart" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${cart.cartId}</td>
					<td>${cart.productName}</td>
					<td>${cart.price}</td>
					<td style="text-align: centre;">
					<a href="decreaseQty?cartId=${cart.cartId}"><span class="glyphicon glyphicon-minus"> </span></a>
					<input type="text" name="quantity" value="${cart.qty}" min="1" id="quantity" style="width: 30px; text-align: center;" />
					<a href="increaseQty?cartId=${cart.cartId}"><span class="glyphicon glyphicon-plus"> </span></a>
					<td>${cart.total}</td>
					<td>${cart.days}</td>
				
					
					<td><a href="removeCart?cartId=${cart.cartId}">Remove</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5">Grand Total :</td>
				<td colspan="2">${GrandTotal }</td>
				<td></td>
			</tr>
			
		</table>
		</div>
		
		<p>
		
			<a href="proceed"><button align="left"
					class="w3-btn w3-white w3-border w3-border-red w3-round-">Proceed</button></a>
			
				<!-- <td colspan="2" class="text-right"><a href="proceed"
					class="btn btn-success"> checkout <span
						class="glyphicon glyphicon-play"></span>
				</a></td> -->
			
		</p>
		</c:if>
		<c:if test="${cartlength == 0}">
		<h2 style="padding-top:70px;">	Your Cart is empty</h2>
		</c:if>
		</div>
</body>
</html>