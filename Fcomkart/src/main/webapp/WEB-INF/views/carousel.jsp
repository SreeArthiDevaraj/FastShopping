<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
    .container-fluid{
      margin-top:50px;
      padding:5px 0px;
    }
  </style>
<body>
<div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <c:url value="/resources/images/bunk_1500X300-without-TV._CB519972755_.jpg" var="val1" />
        <img src="${val1}" alt="Mobilphone" style="width:100%;">
      </div>

      <div class="item">
      <c:url value="resources/images/1064351_TV_FESTIVE_1500x300PChero_6._CB518578775_.jpg" var="val2" />
        <img src="${val2}" alt="laptop" style="width:100%;">
      </div>
    
      <div class="item">
      <c:url value="resources/images/PC_Bunk_category-1500X300._CB519605751_.jpg" var="val3" />
        <img src="${val3}" alt="grocery" style="width:100%;">
      </div>
      
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</body>
</html>