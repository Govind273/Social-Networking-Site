<!DOCTYPE html>
<html>
<!-- <style>
    /* Full-width input fields */
    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    /* Set a style for all buttons */
    button {
        background-color: #750000;
        color: white;
        padding: 8px 0;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }
    
    button1 {
    top:20%;
   width: 100px;
    height: 28px;
    line-height: 28px;
    background: red;
    color: #FFF;
    margin: 5px 10px;
    font-size: 12px;
    display: block;
    text-align: center;
    text-decoration: none;
    }
    input[type=text1]{
        color: white;
       position:absolute;
       right: 15%;
        margin: 8px 0;
        
        cursor: pointer;
        width: 20%;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
        padding: 14px 20px;
        background-color: #750000;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn,.signupbtn {
        float: left;
        width: 50%;
    }

    /* Add padding to container elements */
    .container {
        padding: 16px;
    }

    /* Clear floats */
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }

    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signupbtn {
            width: 100%;
        }
    }
</style> -->
<body>
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
			<div id="section" width="550%">

				<div class="tile_div" id="username"
					style="position: absolute; top: 555px;"
					style="position:absolute; left:80px; top: 230px;" align="middle">
					<label><h4>
							<b>EDIT PROFILE DETAILS</b>
						</h4></label>
				</div>
				<div class="CLubmembership" align="left">
					<form action="/updateProfile" method="POST">
						<label><b>Email</b></label> <input type="text" name="emailId"
							value="${user.emailId}" required readonly> <label><b>First
								Name</b></label> <input type="text" name="firstName"
							value="${user.firstName}" required> <label><b>Last
								Name</b></label> <input type="text" name="lastName" value="${user.lastName}"
							required> <label><b>Password</b></label> <input
							type="password" name="password" value="${user.password}" required>

						<label><b>About</b></label> <input type="text" name="about"
							value="${user.about}" required>

						<button type="submit" class="button">Edit</button>
						<button class="button">
							<a href="/profile"><font color=" #ffffff"> Cancel </font></a>
						</button>
						<!-- 
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" href="css/style.css"> -->
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
