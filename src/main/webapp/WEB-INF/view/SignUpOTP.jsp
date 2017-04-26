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
<title>Validate Yourself</title>

</head>
<body>
	<jsp:include page="header.jsp" />
		
		</div>
		<div class="gtco-container">
	
		</div>
		<div id="section">
		<div class="tile_div" style="position:absolute;  top:35%; align:left "  >
				<font size="12px" color="000000"><b> Please enter the new password</b></font>
		</div>
		<div class="CLubmembership" style="position:absolute;  top:55%; left:25%; " align="left">
	<form action="/signup"    method="POST">

		<div class="col-md-4 col-sm-4">
			<div class="form-group" align="left" valign="middle">
				<label><b>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
				<input type="email" placeholder="Email"
					name="emailId"  required>

			</div>
		</div>
		<div class="col-md-4 col-sm-4">
			<div class="form-group" align="left" valign="middle">
				<label><b>One Time Password</b></label> 
				<input id="input2"
					type="OTP" placeholder="OTP"
					name="OTP"  required>
			</div>
		</div>

		<span id='message'></span>
		

		<div class="col-md-4 col-sm-4 col-md-offset-2">
			<button type="submit" >Sign Up</button>
			
			<button class="btn btn-default btn-block"><a href="/signup"><font color = " #">Cancel</font></a></button>
	</div>
	</form>
	</div>
	</div>
		<jsp:include page="footer.jsp" />
</body>
</html>


