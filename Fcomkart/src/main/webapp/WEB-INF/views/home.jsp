<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <c:url value="/resources/js" var="js"></c:url>
  <script type="text/javascript">window.menu='${title}'</script>
<script type="text/javascript" src="${js}/myapp.js"></script>
  <style> 
  .wrapper {
	min-height: 100%;
	position: relative;
}
.content{
	padding-bottom: 60px;
}</style>
 
</head>
<body>
<div class="wrapper">
<%@ include file="header.jsp" %>

<div class="content">
    <c:choose>

<c:when test="${isUserClickedProduct == 'true' }">
<%@ include file="product.jsp" %>
</c:when>
<c:when test="${isUserClickedAboutus == 'true' }">
<%@ include file="aboutus.jsp" %>
</c:when>
<c:when test="${isUserClickedLogin == 'true' }">
<%@ include file="login.jsp" %>
</c:when>
<c:when test="${isUserClickedSignup == 'true' }">
<%@ include file="user.jsp" %>
</c:when>

<c:when test="${isUserClickedCategory == 'true' }">
<%@ include file="category.jsp" %>
</c:when>
<c:when test="${isUserClickedSupplier == 'true' }">
<%@ include file="supplier.jsp" %>
</c:when>
<c:when test="${isUserClickedViewCategory == 'true' }">
<%@ include file="viewcategory.jsp" %>
</c:when>
<c:when test="${isUserClickedViewProduct == 'true' }">
<%@ include file="viewproduct.jsp" %>
</c:when>
<c:when test="${isUserClickedViewSupplier == 'true' }">
<%@ include file="viewsupplier.jsp" %>
</c:when>
<c:when test="${isUserClickedMoreDetails == 'true' }">
<%@ include file="productDescription.jsp" %>
</c:when>
<c:when test="${isUserClickedMyCart == 'true' }">
<%@ include file="cart.jsp" %>
</c:when>
<c:when test="${isUserClickedViewShippingaddress == 'true' }">
<%@ include file="viewshippingaddress.jsp" %>
</c:when>
<c:when test="${isUserClickedShippingaddress == 'true' }">
<%@ include file="Shippingaddress.jsp" %>
</c:when>
<c:when test="${editshippingaddressClicked == 'true' }">
<%@ include file="Shippingaddress.jsp" %>
</c:when>
<c:when test="${isUserClickedthankyou == 'true' }">
<%@ include file="thankyou.jsp" %>
</c:when>
 <c:otherwise>
<%@ include file="carousel.jsp" %>
<%@ include file="ProductList.jsp"%>
</c:otherwise> 
</c:choose>
</div>
   <%@ include file="footer.jsp" %> 
   </div>
</body>
</html>
