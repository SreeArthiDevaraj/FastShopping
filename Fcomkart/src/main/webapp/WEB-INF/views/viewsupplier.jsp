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
		<h3 style="margin-top: 30px;">Supplier Details</h3>
		<div class="row col-md-10 custyle">
			<table class="table table-striped custab">
				<thead style="color: #090df7; font-weight: bold; font-size: 20px;"
					class="table-default active">
					<tr>
						<td>S.No</td>
						<td>SupplierId</td>
						<td>SupplierName</td>
						<td>ContactNo</td>
						<td>Address</td>
						<td>Update</td>
						<td>Delete</td>
					</tr>
				</thead>
				<tbody style="color: #090df7; font-size: 15px;">
					<c:forEach items="${SupplierList}" var="supplier" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${supplier.supplierId}</td>
							<td>${supplier.supplierName}</td>
							<td>${supplier.contactNo}</td>
							<td>${supplier.address}</td>
							<td><a href="editsupplier?supplierId=${supplier.supplierId}">Edit</a></td>
			<td><a href="deleteSupplier?supplierId=${supplier.supplierId}" onclick="return confirm('Are You Sure? Do you Want Delete Product : ${supplier.supplierName} ?')">Delete</a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>


</body>
</html>