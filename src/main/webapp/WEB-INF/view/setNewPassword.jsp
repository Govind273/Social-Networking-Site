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
<title>Change Password</title>
<script>
			/* $('#password, #confirm_password').on('keyup', function() {
				if ($('#password').val() == $('#confirm_password').val()) {
					$('#message').html('Matching').css('color', 'green');
				} else
					$('#message').html('Not Matching').css('color', 'red');
			}); */
			
			function check()
			{ 
			with(document.all){
				var ok = true;
			if(input1.value!=input2.value)
			{
			alert("Password does not match")
			input1.value = "";
			input2.value = "";
			ok= false;
			}
			else ok= true; 
			return ok;<!--document.forms[0].submit();-->
			}
			}
		</script>
</head>
<body>
<div id="header1" style="height:72px;">
		<div class="iulogo" style="float:left; width:50%; height:50px;" align="left">
		<img src="/images/2.png" width="65" height="56" >
		</div>
		
		</div>
		<div class="gtco-container">
	
		</div>
		<div id="section">
		<div class="tile_div" style="position:absolute;  top:35%; align:left "  >
				<font size="12px" color="000000"><b> Please enter the new password</b></font>
		</div>
		<div class="CLubmembership" style="position:absolute;  top:55%; left:25%; " align="left">
	<form action="/newPassword/${forgetPassword}"    method="POST">

		<div class="col-md-4 col-sm-4">
			<div class="form-group" align="left" valign="middle">
				<label><b>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
				<input type="password" placeholder="Enter New Password"
					name="password" id="input1" required>

			</div>
		</div>
		<div class="col-md-4 col-sm-4">
			<div class="form-group" align="left" valign="middle">
				<label><b>Re-enter Password</b></label> 
				<input id="input2"
					type="password" placeholder="Re-enter Password"
					name="Re-enter password"  required>
			</div>
		</div>

		<span id='message'></span>
		

		<div class="col-md-4 col-sm-4 col-md-offset-2">
			<button type="submit" onclick="return check()" class="btn btn-default btn-block">Change Password</button>
			
			<button class="btn btn-default btn-block"><a href="/signup"><font color = " #">Cancel</font></a></button>
	</div>
	</form>
	</div>
	</div>
</body>
</html>


