
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

<body >
<div id="header1" style="height:72px;">
		<div class="iulogo" style="float:left; width:50%; height:50px;" align="left">
		<img src="/images/2.png" width="65" height="56" >
		</div>
		
		</div>
		<div class="gtco-container">
	
		</div>
	<!--<form name="forget_form" id="forget_form" action="/sendMail"
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

</form>-->

	<div id="section">
		<div class="tile_div" style="position:absolute;  top:35%; align:left "  >
				<font size="12px" color="000000"><b> Recover Password by Security Question</b></font>
		</div>
	
<div class="CLubmembership" style="position:absolute;  top:55%; left:25%; " align="left">
<form action="/recoverPassword" method="GET">

	<div class="col-md-4 col-sm-4">

		<div class="form-group" align="left" valign="left">
			<label><b>Please enter your details below. Responses are case sensitive</b></label>
		</div>
	</div>
	<div class="col-md-4 col-sm-4">

		<div class="form-group" align="left" valign="left">
			<label><b>Email ID</b></label> <input
				type="text" placeholder="Email" name="emailId" required>
		</div>
	</div>
	
	

	<div class="col-md-4 col-sm-4">

		<div class="form-group" align="left" valign="left">
			<label><b>Question 1: What is mother's first name?</b></label> <input
				type="text" placeholder="Answer" name="question1" required>
		</div>
	</div>

	<div class="col-md-4 col-sm-4">

		<div class="form-group" align="left" valign="left">
			<label><b>Question 2: What is your favorite movie?</b></label> <input
				type="text" placeholder="Answer" name="question2" required>
		</div>
	</div>

	<div class="col-md-4 col-sm-4 col-md-offset-2">
		<button type="submit" class="btn btn-default btn-block">Submit</button>
		<button class="btn btn-default btn-block"><a href="/#"><font color = " #">Cancel--BROKEN!</font></a></button>
	</div>


</form>
</div>
</div>


</body>
</html>


