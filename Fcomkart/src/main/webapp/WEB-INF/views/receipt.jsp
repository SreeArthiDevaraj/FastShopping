<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
body {
    margin-top: 50px;
   
}
.row
{
	margin-left: auto !important;
	margin-right: auto !important;
}
</style>
</head>
<body>
<div class="text-center">
			<h1>Receipt</h1>		
				</div>
<%-- <c:url value="/Cart/receipt" var="url1"/>
<form action="${url1}" class="form-horizontal" method="post"> --%>
<div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
					<address>
						<strong>${shipping.userName}</strong> <br> <i
							style="word-wrap: break-word;">Address:${shipping.address}</i> <br>
						<i>Phone:${shipping.contactNumber}</i>
					</address>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6 text-right">
					<p>
						<em>${date}</em>
					</p>
					
				</div>
			</div>
			</div>
			<div class="row">
				<div class="text-center">
					
				</div>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Product</th>
						<th>#</th>
						<th class="text-center">Price</th>
						<th class="text-center">Total</th>
					</tr>
				</thead>
				<tbody>
			
					<c:forEach items="${cart}" var="cart">
				  <div class="text-center">
			
				<c:url value="/resources/product/${cart.productId}.jpg"  var="url" ></c:url>
									    <td class="col-md-8" class ="f"><img src="${url}" height="50" width="50" />${product.productName}</td>
							  </div>		   
               
						<tr>
							<td class="col-md-9"><em>${cart.productName}</em></td>
							<td class="col-md-1" style="text-align: center;">${cart.qty}</td>
							<td class="col-md-1 text-center">${cart.price}</td>
							<td class="col-md-1 text-center">${cart.total}</td>
							<c:set var="grandTotal" value="${grandtotal + cart.total }"></c:set>
						</tr>
						
					 </c:forEach>
				
					<tr>
                                    <td></td>
                                    
                                    <td colspan="2" class="text-center" class ="f">
                                        Grand Total:
                                    </td>
                                    <td class="text-center text-danger" class ="f">
                                        &#8377; ${GrandTotal}
                                    </td>
                                </tr>
						
				</tbody>
			</table>

                <a href="thankyou" class="btn btn-success btn-lg btn-block">
                  Clickhere  <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
       </div>
</div>
<div>
                  
                </div>
                </form>
</body>
</html>