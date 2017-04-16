<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">
</head>

<body>
<div id="header1" style="height:72px;">
		<div class="iulogo" style="float:left; width:50%; height:50px;" align="left">
		<img src="/images/2.png" width="65" height="56" >
		</div>
		<div align="right" style="padding:20px">
			<li id="logout">
			<a href="/logout" title="Logout">Logout</a>
		</li>
		</div>

 
<div class="gtco-container">
	<div class="coverTopSection" height="400px">
		<div class="coverPic" style="width:100% height:80%" valign="top">
			<img src="images/iu6.jpeg" height="280px" >
		</div>
	<jsp:include page="menuBar.jsp"/>	
	</div>
	




	<div id="section">
		<div class="tile_div" style="position:absolute;  top:555px; left:25%; " align="middle" >
				<font size="15" color="000000"><b>SEARCH RESULTS</b></font>
		</div>
	<div class="CLubmembership" align="middle">
<!--         
        <c:if test="${fn:length(search) > 0}">   -->
	<c:forEach items="${search}" var="post">
		<div id="left" class="row col-lg-12">

			<div class="form-group col-lg-6">
				<label for="PostBy" style="margin-top: 15%; font-size: 20px; left:20%">
				<b>Group
					Name:</b> ${post.groupName}</label>
			</div>
			
			<div class="form-group col-lg-6">
				<label for="PostBy" style="margin-top: 15%; font-size: 20px"><B>Group
					About:</B> ${post.about}</label>
			</div>
			<form action = "/requestGroup/${user.userId }/${post.groupId }" method="post">
			<button type="submit"> Join </button>
			</form>
			
			<form action = "/groupPage/${post.groupId }" method="get">
			<button type="submit"> see group </button>
			</form>
		</div>


	</c:forEach>
<!-- 	
</c:if>
	
        <c:if test="${fn:length(search) == 0}">
        No groups by that name[TO be CHANGED]
        
        </c:if>  -->
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>
