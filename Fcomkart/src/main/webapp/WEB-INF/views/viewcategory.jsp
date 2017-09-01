<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<h3 style="margin-top: 30px;">Category Details</h3>
		<div class="row col-md-10 custyle">
			<table class="table table-striped custab">
				<thead style="color: #090df7; font-weight: bold; font-size: 18px;"
					class="table-default active">
					<tr>
						<td>S.No</td>
						<td>CategoryId</td>
						<td>CategoryName</td>
						<td>Description</td>
						<td>Update</td>
						<td>Delete</td>
					</tr>
				</thead>
				<tbody style="color: #f90404; font-size: 15px; font-family: serif;">
					<c:forEach items="${CategoryList}" var="category" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${category.categoryId}</td>
							<td>${category.categoryName}</td>
							<td>${category.description}</td>
							<td><a href="editCategory?categoryId=${category.categoryId}">Edit</a></td>
			<td><a href="deleteCategory?categoryId=${category.categoryId}" onclick="return confirm('Are You Sure? Do you Want Delete Category : ${category.categoryName} ?')">Delete</a></td>
		
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>