<%@page import="com.pharmacy.model.Reg"%>
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

<script>
(function () {
    $('#btnRight').click(function (e) {
        var selectedOpts = $('#lstBox1 option:selected');
        if (selectedOpts.length == 0) {
            alert("Nothing to move.");
            e.preventDefault();
        }

        $('#lstBox2').append($(selectedOpts).clone());
        $(selectedOpts).remove();
        e.preventDefault();
    });

    $('#btnAllRight').click(function (e) {
        var selectedOpts = $('#lstBox1 option');
        if (selectedOpts.length == 0) {
            alert("Nothing to move.");
            e.preventDefault();
        }

        $('#lstBox2').append($(selectedOpts).clone());
        $(selectedOpts).remove();
        e.preventDefault();
    });

    $('#btnLeft').click(function (e) {
        var selectedOpts = $('#lstBox2 option:selected');
        if (selectedOpts.length == 0) {
            alert("Nothing to move.");
            e.preventDefault();
        }

        $('#lstBox1').append($(selectedOpts).clone());
        $(selectedOpts).remove();
        e.preventDefault();
    });

    $('#btnAllLeft').click(function (e) {
        var selectedOpts = $('#lstBox2 option');
        if (selectedOpts.length == 0) {
            alert("Nothing to move.");
            e.preventDefault();
        }

        $('#lstBox1').append($(selectedOpts).clone());
        $(selectedOpts).remove();
        e.preventDefault();
    });
}(jQuery));

</script>
<style type="text/css">
.subject-info-box-1,
.subject-info-box-2 {
    float: left;
    width: 45%;
    
    select {
        height: 200px;
        padding: 0;

        option {
            padding: 4px 10px 4px 10px;
        }

        option:hover {
            background: #EEEEEE;
        }
    }
}

.subject-info-arrows {
    float: left;
    width: 10%;

    input {
        width: 70%;
        margin-bottom: 5px;
    }
}
</style>
</head>

<body>
	
	<%
	HttpSession httpSession = request.getSession();
	Reg reg = (Reg) httpSession.getAttribute("reg");


	%>
	<% response.setHeader("Cache-Control","no-store,must-revalidate"); %>
	
	
	<nav class="navbar navbar-light bg-light static-top">
	<div class="row">
	
		<label class="col-sm-2">welcome </label>
		<div class="col-sm-10">${reg.firstName}</div>
	</div>
	
    <div class="container">
      <a class="navbar-brand" href="out/"> Log Out </a>
     
     </div>
     </nav>
     
     <header class="masthead text-white text-center">
          
     
    <div>
    <% out.print(java.util.Calendar.getInstance().getTime()); %>  
    </div>
	</header>
	<!-- 
	<div class="subject-info-box-1">
  <select multiple="multiple" id='lstBox1' class="form-control">
    <option value="ajax">Ajax</option>
    <option value="jquery">jQuery</option>
    <option value="javascript">JavaScript</option>
    <option value="mootool">MooTools</option>
    <option value="prototype">Prototype</option>
    <option value="dojo">Dojo</option>
  </select>
</div>

<div class="subject-info-arrows text-center">
  <input type="button" id="btnAllRight" value=">>" class="btn btn-default" /><br />
  <input type="button" id="btnRight" value=">" class="btn btn-default" /><br />
  <input type="button" id="btnLeft" value="<" class="btn btn-default" /><br />
  <input type="button" id="btnAllLeft" value="<<" class="btn btn-default" />
</div>

<div class="subject-info-box-2">
  <select multiple="multiple" id='lstBox2' class="form-control">
    <option value="asp">ASP.NET</option>
    <option value="c#">C#</option>
    <option value="vb">VB.NET</option>
    <option value="java">Java</option>
    <option value="php">PHP</option>
    <option value="python">Python</option>
  </select>
</div>

<div class="clearfix"></div>
	
	
 -->	
	
	
	
	
	
	
	
	<!--  
	<div class="row">
		<label class="col-sm-2">Last Name</label>
		<div class="col-sm-10">${reg.lastName}</div>
	</div>
	
	<div class="row">
		<label class="col-sm-2">DOB</label>
		<div class="col-sm-10">${reg.DOB}</div>
	</div>
	
	<div class="row">
		<label class="col-sm-2">gender</label>
		<div class="col-sm-10">${reg.gender}</div>
	</div>
	
	<div class="row">
		<label class="col-sm-2">userName</label>
		<div class="col-sm-10">${reg.userName}</div>
	</div>
	
	<div class="row">
		<label class="col-sm-2">password</label>
		<div class="col-sm-10">${reg.password}</div>
	</div>
-->








 

<input type="button" value="Items (drugs) Adding Form" onclick="addItem()"/>

<input type="button" value="Manage Catergerise Form" onclick="addCategory()"/> 

<input type="button" value="View All Drug List" onclick="GetProductsBEx()"/> 

<input type="button" value="View Drug Due to Expire List" onclick="GetDueProduct()"/> 

<input type="button" value="View minimum stock drug list" onclick="GetDueStock()"/>

<input type="button" value="Catergorise" onclick="GetCatergorise()"/>  

<input type="button" value="Selling Drugs" onclick="GetBill2()"/> 
<input type="button" value="Issuing Drugs" onclick="GetBill()"/> 



<input type="button" value="Drug Request Form" onclick="GetDrugRequest()"/>

  <spring:url value="/login/add/${reg.id}/update" var="updateUrl" />	
 
  <button class="btn btn-primary"  onclick="location.href='${updateUrl}'">Update</button>
<%
	      String user_Type = reg.getRole_Type();
	      if(user_Type.equals("admin")){ %>
	      	<div>
					<ul class="nav navbar-nav">
						      
						     <!--  <li><a href="roleType/">Add roles</a></li>--> 
						     <li><a href="role/">Add roles</a></li>
						      <li><a href="/login/add/AllowPermission/">Allow Permission</a></li>
						      <li><a href="ViewReports/">View Reports </a></li>
						     <li><a href="users/">All Users</a></li>
						      
						     <!--   <li><button class="btn btn-primary"  onclick="location.href='${updateUrl}'">Delete</button></li>-->
					 </ul>
					 </div>
	       	  
	       	 
	     <%} %>

 	
 
  

<script src="${pageContext.request.contextPath}/js/itemManagement.js"></script>
</body>
</html>