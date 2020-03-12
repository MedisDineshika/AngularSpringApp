<%@page import="com.pharmacy.model.Product"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page isELIgnored="false"%>
<%@ page import = "com.pharmacy.model.Bill" %>
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
<script src="${pageContext.request.contextPath}/js/jquery.multi-select.js"></script>
<script>
$(function() {   
  $('#undo_redo').multiselect();
});
</script>
</head>
<body>
<spring:url value="/bill2/add" var="billActionUrl" />

	<form:form class="form-horizontal" method="post" name="categoriseForm" 
	 modelAttribute="itemM" action="${billActionUrl}" >
<div class="row">
    <div class="col-xs-5">
   
        <select name="from[]" id="undo_redo" class="form-control" size="13" multiple="multiple">

            <option value="1">C++</option>
            <option value="2">C#</option>
            <option value="3">Haskell</option>
            <option value="4">Java</option>
            <option value="5">JavaScript</option>
            <option value="6">Lisp</option>
            <option value="7">Lua</option>
            <option value="8">MATLAB</option>
            <option value="9">NewLISP</option>
            <option value="10">PHP</option>
            <option value="11">Perl</option>
            <option value="12">SQL</option>
            <option value="13">Unix shell</option>
        </select>
    </div>
 
    <div class="col-xs-2">
        <button type="button" id="undo_redo_undo" class="btn btn-primary btn-block">undo</button>
        <button type="button" id="undo_redo_rightAll" class="btn btn-default btn-block"><i class="glyphicon glyphicon-forward"></i></button>
        <button type="button" id="undo_redo_rightSelected" class="btn btn-default btn-block"><i class="glyphicon glyphicon-chevron-right"></i></button>
        <button type="button" id="undo_redo_leftSelected" class="btn btn-default btn-block"><i class="glyphicon glyphicon-chevron-left"></i></button>
        <button type="button" id="undo_redo_leftAll" class="btn btn-default btn-block"><i class="glyphicon glyphicon-backward"></i></button>
        <button type="button" id="undo_redo_redo" class="btn btn-warning btn-block">redo</button>
    </div>
 
    <div class="col-xs-5">
        <select name="to[]" id="undo_redo_to" class="form-control" size="13" multiple="multiple"></select>
    </div>
 </div>
 <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				
					 	<button type="submit" class="btn-lg btn-primary pull-right" >Add</button>
					<!--<button type="submit" class="btn-lg btn-primary pull-right" onclick="validateSubmitForm();">Add</button>  -->	
						
					
			</div>
		</div>

</form:form>
</body>
</html>