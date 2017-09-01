<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
img{max-width:100%;}
	*{transition: all .5s ease;-moz-transition: all .5s ease;-webkit-transition: all .5s ease}
  .my-list {
    width: 100%;
    padding: 10px;
    border: 1px solid #f5efef;
    float: left;
    margin: 15px 0;
    border-radius: 5px;
    box-shadow: 2px 3px 0px #e4d8d8;
    position:relative;
    overflow:hidden;
}  
.my-list h3{
    text-align: left;
    font-size: 14px;
    font-weight: 500;
    line-height: 21px;
    margin: 0px;
    padding: 0px;
    border-bottom: 1px solid #ccc4c4;
    margin-bottom: 5px;
    padding-bottom: 5px;
    }
	.my-list span{float:left;font-weight: bold;}
	.my-list span:last-child{float:right;}
	.my-list .offer{
    width: 100%;
    float: left;
    margin: 5px 0;
    border-top: 1px solid #ccc4c4;
    margin-top: 5px;
    padding-top: 5px;
    color: #afadad;
    }
	.moredetails {
    position: absolute;
    top: -100%;
    left: 0;
    text-align: center;
    background: #fff;height: 100%;width:100%;
	
}
	
.my-list:hover .moredetails{top:0;}
</style>
</head>
<body>
<!-- <h1>Products</h1> -->
 <div class="row"> 
 <!-- <div class="container"> -->
	<c:forEach items="${Productlist}" var="product">
		
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list">
		  <c:url value="/resources/product/${product.productId}.jpg"  var="url" ></c:url>
         <img src="${url}"alt="${product.productId}" /> 
				<%-- <img src="resources/product/${product.productId}.jpg" alt="${product.productId}" /> --%>
			<h5>${product.productName}</h5>
			<h6>Price:${product.price}</h6>
			<span class="pull-right"></span>
			<div class="offer">Extra 5% Off. Cart value Rs 500</div>
			<div class="moredetails">
			  <c:url value="/resources/product/${product.productId}.jpg"  var="url2" ></c:url>
         <img src="${url2}"alt="${product.productId}" /> 
			<%-- <img src="resources/product/${product.productId}.jpg" alt="${product.productId}" /> --%>
		<a href="MoreDetails/${product.productId}" class="btn btn-info">MoreDetails</a>
			</div>
		</div>
		</div>  
		<!-- </div> -->
	
	</c:forEach>	
  
 </div> 


</body>
</html>
