<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>

<html>
<head>
<title>Change Password</title>
</head>
<body>
	<form action="/newPassword/${forgetPassword}" method="POST">

		<div class="col-md-4 col-sm-4">
			<div class="form-group" align="center" valign="middle">
				<label><b>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></label>
				<input type="password" placeholder="Enter New Password"
					name="password" id="password" required>

			</div>
		</div>
		<div class="col-md-4 col-sm-4">
			<div class="form-group" align="center" valign="middle">
				<label><b>Re-enter Password</b></label> <input id="input2"
					type="password" placeholder="Re-enter Password"
					name="Re-enter password" id="confirm_password" required>
			</div>
		</div>

		<span id='message'></span>
		<script>
			$('#password, #confirm_password').on('keyup', function() {
				if ($('#password').val() == $('#confirm_password').val()) {
					$('#message').html('Matching').css('color', 'green');
				} else
					$('#message').html('Not Matching').css('color', 'red');
			});
		</script>

		<div class="col-md-4 col-sm-4 col-md-offset-2">
			<button type="submit" class="btn btn-default btn-block">Change</button>
	</form>
</body>
</html>


