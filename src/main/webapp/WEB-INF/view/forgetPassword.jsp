<<<<<<< HEAD
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
<link rel="stylesheet" type="text/css" href="css/index.css">

</head>
<div id="header1" style="height: 72px;">
	<div class="iulogo" style="float: left; width: 50%; height: 50px;"
		align="left">
		<img src="images/2.png" width="65" height="56">
	</div>

</div>

<form name="forget_form" id="forget_form" action="/sendMail"
	method="POST">

	<div class="row col-lg-12">
		<h3 class="text-left">Welcome to Social Network, Please enter the
			details to retrieve your password</h3>
		<hr size="10" width="100%" noshade style="color: #000000" align="left" />

		<div class="form-group col-lg-12">
			<label for="emailId">Email</label> <input type="email" name="emailId"
				required class="form-control" id="emailId">
		</div>

		<div class="form-group row text-left col-lg-9">
			<div class="col-lg-12">
				<button type="submit" name="continue" value="continue" id="continue"
					class="btn btn-primary" onclick="alert()">Submit</button>
			</div>
		</div>
	</div>

</form>


<form action="/recoverPassword" method="GET">

	<div class="col-md-4 col-sm-4">

		<div class="form-group" align="center" valign="middle">
			<label><b>The answers you will fill below are case
					sensitive.</b></label>
		</div>
	</div>
	<div class="col-md-4 col-sm-4">

		<div class="form-group" align="center" valign="middle">
			<label><b>Email Id</b></label> <input
				type="text" placeholder="Email" name="emailId" required>
		</div>
	</div>
	
	

	<div class="col-md-4 col-sm-4">

		<div class="form-group" align="center" valign="middle">
			<label><b>Question 1:What is mother's first name ?</b></label> <input
				type="text" placeholder="Answer" name="question1" required>
		</div>
	</div>

	<div class="col-md-4 col-sm-4">

		<div class="form-group" align="center" valign="middle">
			<label><b>Question 2:Which is your favourite movie ?</b></label> <input
				type="text" placeholder="Answer" name="question2" required>
		</div>
	</div>

	<div class="col-md-4 col-sm-4 col-md-offset-2">
		<button type="submit" class="btn btn-default btn-block">Click</button>
	</div>


</form>
</body>
</html>

