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
<spring:url value="/bill/add" var="itemActionUrl" />
	<form:form class="form-horizontal" method="post" name = "itemM" modelAttribute="itemM" action="${itemActionUrl}">
<div class = "inner-jsp">
<form:hidden path="id" />

<spring:bind path="itemName">

			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label"> itemName:
				</label>
				<div class="col-sm-10">
					<form:input path="itemName" type="text" class="form-control " id="itemName" placeholder="itemName" />
					<form:errors path="itemName" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		
		
		<spring:bind path="quantity">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label"> Quantity :
				</label>
				<div class="col-sm-10">
					<form:input path="quantity" type="text" class="form-control " id="quantity" placeholder="quantity " />
					<form:errors path="quantity" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		<spring:bind path="unitPrice">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label"> UnitPrice :
				</label>
				<div class="col-sm-10">
					<form:input path="unitPrice" type="text" class="form-control " id="unitPrice" placeholder="unitPrice " />
					<form:errors path="unitPrice" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		
	<spring:bind path="price">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label"> Price :
				</label>
				<div class="col-sm-10">
					<form:input path="price" type="text" class="form-control " id="price" placeholder="price " />
					<form:errors path="price" class="control-label" />
				</div>
			</div>
		</spring:bind>	
		
		<spring:bind path="total">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label"> Total :
				</label>
				<div class="col-sm-10">
					<form:input path="total" type="text" class="form-control " id="total" placeholder="total " />
					<form:errors path="total" class="control-label" />
				</div>
			</div>
		</spring:bind>	
		
		<spring:bind path="amountRecieved">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label"> AmountRecieved :
				</label>
				<div class="col-sm-10">
					<form:input path="amountRecieved" type="text" class="form-control " id="amountRecieved" placeholder="amountRecieved " />
					<form:errors path="amountRecieved" class="control-label" />
				</div>
			</div>
		</spring:bind>	
		
		<spring:bind path="balance">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label"> Balance :
				</label>
				<div class="col-sm-10">
					<form:input path="balance" type="text" class="form-control " id="balance" placeholder="balance " />
					<form:errors path="balance" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
</div>	
<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				
				<button type="submit" class="btn-lg btn-primary pull-right" >Add</button>
					
			</div>
		</div>	
</form:form>		
<script src="${pageContext.request.contextPath}/js/itemManagement.js"></script>



</body>
</html>