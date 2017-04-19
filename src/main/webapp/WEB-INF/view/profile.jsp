
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>


<html>
<body bgcolor="#000000">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">

</head>

<!--Top header -->
<jsp:include page="header.jsp" />

<div class="gtco-container">

	<!--Background Image, Menu Bar -->
	<div class="coverTopSection" height="400px">
		<div class="coverPic" style="width: 100% height:80%" valign="top">
			<img src="images/iu6.jpeg" height="280px">
		</div>
		<jsp:include page="menuBar.jsp" />
	</div>

	<div id="nav">
		<div>
			<img src="images/2.png" width="170" height="120"
				style="position: absolute; left: 80px; top: 480px;">
		</div>
		<div style="position: relative; left: 80px; top: 250px;">
			<form action="/yourGroups/${user.userId}" method="GET">
				<button type="submit">Ownership</button>
			</form>
		</div>
		<div style="position: relative; left: 80px; top: 250px;">
			<form action="/friends/${user.userId}" method="GET">
				<button type="submit">Friends</button>
			</form>
		</div>
	</div>

	<div id="section" align="right">
		<div class="tile_div" id="username"
			style="position: absolute; top: 555px; left: 330px;" align="middle">
			<a1 font size="10" color="FFFFFF">${user.firstName}
			${user.lastName} </a1>
		</div>
		<div class="CLubmembership"
			style="margin: -110px 0px 0px -50px; float: left;">
			${user.about}</div>
	</div>

	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
		$(function() {
			var thisTime;
			$('.nav-ul li').mouseleave(function(even) {
				thisTime = setTimeout(thisMouseOut, 1000);
			})
			$('.nav-ul li').mouseenter(function() {
				clearTimeout(thisTime);
				var thisUB = $('.nav-ul li').index($(this));
				if ($.trim($('.nav-slide-o').eq(thisUB).html()) != "") {
					$('.nav-slide').addClass('hover');
					$('.nav-slide-o').hide();
					$('.nav-slide-o').eq(thisUB).show();
				} else {
					$('.nav-slide').removeClass('hover');
				}
			})
			function thisMouseOut() {
				$('.nav-slide').removeClass('hover');
			}
			$('.nav-slide').mouseenter(function() {
				clearTimeout(thisTime);
				$('.nav-slide').addClass('hover');
			})
			$('.nav-slide').mouseleave(function() {
				$('.nav-slide').removeClass('hover');
			})
		})
	</script>


</div>
<!--<iframe src="signup.html" width="100%" height="100%"></iframe>-->
<link rel="stylesheet" href="css/style.css">
</body>
</html>
