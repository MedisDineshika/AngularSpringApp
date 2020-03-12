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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
<script src="${pageContext.request.contextPath}/jQuery/jquery-3.1.1.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/js/jQuerySave.js"></script>  
<script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  
  
  
  
  
  </script>

</head>


<body>


<spring:url value="/add/{id}/update/save" var="updateActionUrl" />

	<form:form class="form-horizontal" method="post" name="dataUpdateForm" 
	 modelAttribute="updateForm" action="${updateActionUrl}" >
	
	
		<form:hidden path="id" />
		
		<spring:bind path="firstName">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">First Name :
				</label>
				<div class="col-sm-10">
					<form:input path="firstName" type="text" class="form-control " id="firstName" placeholder="firstName " />
					<form:errors path="firstName" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		<spring:bind path="lastName">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Last Name :
				</label>
				<div class="col-sm-10">
					<form:input path="lastName" type="text" class="form-control " id="lastName" placeholder="lastName " />
					<form:errors path="lastName" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		<spring:bind path="DOB">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">DOB :
				</label>
				<div class="col-sm-10">
					<form:input path="DOB" type="text" class="form-control " id="datepicker" />
					<form:errors path="DOB" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		
		
		<spring:bind path="gender">
		
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Gender</label>
				<div class="col-sm-10">
				<label class="radio-inline"> 
				<form:radiobutton path="gender" id = "gender" value="Male" /> Male
				</label> 
				<label class="radio-inline"> 
				<form:radiobutton path="gender" id = "gender" value="Female" /> Female
				</label> <br />
				<form:errors path="gender" class="control-label" />
					
				</div>
			</div>
		</spring:bind>

		
		<spring:bind path="userName">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">UserName :
				</label>
				<div class="col-sm-10">
					<form:input path="userName" type="text" class="form-control " id="userName" placeholder="e-mail address " />
					<form:errors path="userName" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		<spring:bind path="password">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Pass word :
				</label>
				<div class="col-sm-10">
					<form:input path="password" type="password" class="form-control " id="password" placeholder="password " />
					<form:errors path="password" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				
						<button type="submit" class="btn-lg btn-primary pull-right" >Add</button>
					
						
					
			</div>
		</div>

</form:form>


</body>
</html>