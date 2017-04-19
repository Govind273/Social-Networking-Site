
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">
</head>

<body>
	<div id="header1" style="height: 72px;">
		<div class="iulogo" style="float: left; width: 50%; height: 50px;"
			align="left">
			<img src="/images/2.png" width="65" height="56">
		</div>

	</div>
	<div class="gtco-container"></div>
	
	<form action="/checkOTP" method = "GET">>
	<div class="form-group col-lg-12">
				<label for="emailId">Email</label> <input type="email"
					name="emailId" required class="form-control" id="emailId">
			</div>
			
			<div class="form-group col-lg-12">
				<label for="OTP">OTP</label> <input type="OTP"
					name="OTP" required class="form-control" id="OTP">
			</div>

			<div class="form-group row text-left col-lg-9">
				<div class="col-lg-12">
					<button type="submit">Check</button>
				</div>
				</div>
	
	</form>


</body>
</html>


