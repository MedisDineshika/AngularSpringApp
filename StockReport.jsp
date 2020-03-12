<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page isELIgnored="false"%>
<html lang="en">
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Landing Page - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/css/landing-page.min.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/jQuery/jquery-3.1.1.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>



<body>
<div class="container">
  <h2> Stock List</h2>
  <p>Date : 21/11/2019</p>    
  <p>Product Category : All </p>  
  <p>Drugs (Items) : All</p>  
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Drugs (Items)</th>
		<th>Volume</th>
		<th>Min Stock</th>
		<th>Max Stock </th>
		<th>InStock</th>
		<th>Quantity close to Expire </th>
		<th>In Order</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Metphormin</td>
        <td>Packets</td>
		<td>5</td>
		<td>55</td>
        <td>50</td>
		<td>12</td>
		<td>12</td>
      </tr>
	<tr>
        <td>Surgical Spirit</td>
        <td>bottles</td>
		<td>10</td>
		<td>25</td>
        <td>20</td>
		<td>none</td>
		<td>none</td>
		
      </tr> 
	<tr>
        <td>Panadol</td>
        <td>Packets</td>
        <td>10</td>
		<td>25</td>
		<td>10</td>
		<td>none</td>
		<td>10</td>
		
      </tr> 
	  
	 
      
    </tbody>
  </table>
</div>


</body>
</html>