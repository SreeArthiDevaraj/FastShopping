<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<style type="text/css">
.boxed:hover {
	box-shadow: -8px -8px #eaeae1;
}
.addblock{
	border: 1px solid black;
	margin-right:5px;
}
</style>


<body>

<div style="margin-top: 100px;" class="container">
	
		<h2>shipping address</h2>
		<c:url value="/Cart/newshippingaddress" var="ar"/>
<button type="button"><span style="right"><a href="${ar}">newshippingaddress</a></span></button><br><br>
 
 <c:forEach items="${shippingList}" var="shipping">
<div class="addblock col-sm-3">

<p>
Name:${shipping.userName}</p>
<p>
Contact Number:${shipping.contactNumber}</p>
<p>
Address:${shipping.address}</p>

<a href="deleteshippingaddress?shippingId=${shipping.shippingId}">Delete</a>
<a href="editshippingaddress?shippingId=${shipping.shippingId }">Edit</a>


<br><br><button ><a href="deliverhere/${shipping.shippingId}">Deliver Here</a></button><br><br>
</div>
</c:forEach> 
<br><br>
		
	</div>
	
	
	


</body>
</html>