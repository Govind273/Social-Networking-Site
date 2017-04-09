<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>

<html>
<body bgcolor="#000000">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/index.css">

</head>
<div id="header1" style="height:72px;">
		<div class="iulogo" style="float:left; width:50%; height:50px;" align="left">
		<img src="images/2.png" width="65" height="56" >
		</div>
		<div align="right" style="padding:20px">
			<li id="logout">
			<a href="/logout" title="Logout">Logout</a>
		</li>
		</div>
</div>

<body>
<c:forEach items="${friendRequests}" var="post">
		<div id="left" class="row col-lg-12">

			<div class="form-group col-lg-6">
				<label for="PostBy" style="margin-top: 15%; font-size: 20px">Requested
					By ${post.userId}</label>
			</div>
			
			<div class="form-group col-lg-6">
				<label for="PostBy" style="margin-top: 15%; font-size: 20px">Requested
					To ${post.groupName}</label>
			</div>
			<form action = "/acceptRequest/${user.userId }/${post.groupId }/${post.requestId }" method="post">
			<button type="submit"> Accept </button>
			</form>
			
			<form action = "/groupPage/${post.groupId }" method="get">
			<button type="submit"> see group </button>
			</form>
		</div>

	</c:forEach>
</body>