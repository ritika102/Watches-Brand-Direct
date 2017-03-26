<!DOCTYPE html>
<html lang="en">
<head>
 <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false" %>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="Resources/css/header.css">


   
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
  <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
 
    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
  
</head>
<nav style="margin-top:-40px;" class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav ">
        <li class="active"><a href="home">Home
        <span class="glyphicon glyphicon-home"></span></a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">BRANDS<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Rado</a></li>
            <li><a href="#">Rolex</a></li>
            <li><a href="#">GShock</a></li>
             <li><a href="#">Fastrack</a></li>
          </ul>
        </li>
        <li><a href="contactus">ContactUs
        <span class="glyphicon glyphicon-phone"></span></a></li>
         <c:url var="url" value="/admin/product/productform"></c:url>
      <c:if test="${pageContext.request.userPrincipal.name !=null }">
      <security:authorize access="hasRole('ROLE_ADMIN')">
   <li><a href="${url }">Add New Product</a></li>
   </security:authorize>
   
   <c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
   
   <li><a href="${allProducts}">Browse all products</a></li>
    <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:forEach var="c" items="${categories }">
			<li>
<a href="<c:url value="/all/product/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>" >
  ${c.categoryDetails }</a></li>
			</c:forEach>
			</ul>
			</li>
 </c:if>	
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
			 <c:if test="${pageContext.request.userPrincipal.name !=null }">
     
			<li><a href="">welcome ${pageContext.request.userPrincipal.name }</a></li>
		</c:if>
			<c:if test="${pageContext.request.userPrincipal.name ==null }">
			<li><a href="<c:url value="/login"></c:url>"><span class="glyphicon glyphicon-log-in"></span>  Login</a></li>
			<li> <a href="<c:url value="/register"></c:url>"><span class="glyphicon glyphicon-pencil"></span> Register</a></li>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name !=null }">
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
			</c:if>
			<li>
      <security:authorize access="hasRole('ROLE_USER')">
        <li><a href="<c:url value="/cart/getCartId"></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>    Shopping Cart:0</a></li>
        </security:authorize>
			


  </ul>
      
    
    
   
    </div>
  </div>
</nav>
  



<div style="background-color:#fffff; class="jumbotron">
 <div class="container-fluid">
 <div class="row">
      <div class="col-sm-4">
           <a><img style= " width:100%;height:200px;margin-top:2px;margin-left:0px;"class="img-responsive" src="Resources/images/banner1.jpg"></a>
        </div>
         <div class="col-sm-4">
         <a class="img-responsive"  class="navbar-brand" href="#"><img style=" width:100%;height:200px;margin-top:2px;margin-left:0px;" id="banner" src="Resources/images/logo.png"></img></a>
        </div>
         <div class="col-sm-4">
         <a class="img-responsive"  class="navbar-brand" href="#"><img style=" width:100%;height:200px;margin-top:2px;margin-left:0px;" id="banner" src="Resources/images/banner3.jpg"></img></a>
        </div>
           
       
       </div>
       </div>
       </div>
      
    
 