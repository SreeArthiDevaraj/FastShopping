<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping-${title}</title>
<style>
#search {
    float: right;
    margin-top: 9px;
    width: 250px;
}

.search {
    padding: 5px 0;
    width: 230px;
    height: 30px;
    position: relative;
    left: 10px;
    float: left;
    line-height: 22px;
}

    .search input {
        position: absolute;
        width: 0px;
        float: Left;
        margin-left: 210px;
        -webkit-transition: all 0.7s ease-in-out;
        -moz-transition: all 0.7s ease-in-out;
        -o-transition: all 0.7s ease-in-out;
        transition: all 0.7s ease-in-out;
        height: 30px;
        line-height: 18px;
        padding: 0 2px 0 2px;
        border-radius:1px;
    }

        .search:hover input, .search input:focus {
            width: 200px;
            margin-left: 0px;
        }

.btn {
    height: 30px;
    position: absolute;
    right: 0;
    top: 3px;
    border-radius:1px;
}

</style>
</head>
<body>
<c:url value="/admin/product" var="url3" />
<c:url value="/admin/category" var="url4" />
<c:url value="/admin/supplier" var="url5" />
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <c:url value="/resources/download.jpg" var="url2"></c:url>
      <img src="${url2}" class="img-responsive" href="#"> 
    </div>
    <div class="navbar-collapse collapse" id="searchbar">
     
      <ul class="nav navbar-nav navbar-left">
      <c:url value="/aboutus" var="url1"></c:url>
      <c:url value="/home" var="url6"></c:url>
      
      <li id="home"><a href="${url6}">Home</a></li>
      
        <li id="aboutus"><a href="${url1}">Aboutus</a></li>
      
       
    <security:authorize access="hasRole('ROLE_ADMIN')">
             <li class="dropdown-active"> 
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Product <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li id ="Product"> 
          <a href="${url3}/addproduct">Add</a>
          <a href="${url3}/viewproduct">view</a>
        </ul>
      </li>      
      
       
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Category <b class="caret"></b></a>
        <ul class="dropdown-menu">
       <li id ="Category"> 
          <a href="${url4}/addcategory">Add</a>
          <a href="${url4}/viewcategory">view</a>
        </ul>
      </li>
    
    
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Supplier <b class="caret"></b></a>
        <ul class="dropdown-menu">
       <li id="Supplier"> 
          <a href="${url5}/addsupplier">Add</a>
          <a href="${url5}/viewsupplier">view</a>
        </ul>
      </li>
      </security:authorize>
      <c:url value="/all/signup" var="action"></c:url>
       <c:if test="${pageContext.request.userPrincipal.name == null }">
      <li id ="signup"><a href="${action}"><span class="glyphicon glyphicon-user"></span>Signup</a></li>
           </c:if>
           <c:if test="${pageContext.request.userPrincipal.name==null }">
					<c:url value="/login" var="login"></c:url>
					<li id ="login"><a href="${login}"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
					
					
         </c:if>
         <c:if test="${pageContext.request.userPrincipal.name!=null }">
					<security:authorize access="hasRole('ROLE_USER')">
					 <c:url value="/Cart/myCart" var="url7"></c:url>	 
        <li id="myCart"><a href="${url7}"><span class="glyphicon glyphicon-shopping-cart" ></span>myCart</a></li>
				   </security:authorize> 
				   </c:if>
		
       
       
        <c:if test="${pageContext.request.userPrincipal.name!=null }">
					<c:url value="/j_spring_security_logout" var="logout"></c:url>
          <li id ="logout"><a href="${logout}"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
         </c:if>
      </ul>
            
      <!-- <ul class="nav navbar-nav navbar-right">
        <li>
        <div class="search">
<input type="text" class="form-control input-sm" maxlength="64" placeholder="Search" />
 <button type="submit" class="btn btn-primary btn-sm">Search</button>
</div>
      </li>
      </ul> -->
     
     

    </div><!--/.nav-collapse -->
  </div>
</div>


</body>
</html>