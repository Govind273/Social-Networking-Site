<!DOCTYPE html>
<html>
<head>

<!-- Template modified from "https://www.w3schools.com/w3css/default.asp" target="_blank" and  https://www.w3schools.com/w3css/tryit.asp?filename=tryw3css_templates_social&stacked=h-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/js/jquerygroupsProfile.js"></script>
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
	
</head>
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}

#text {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	height: 25%;
}

#coverTopSection {
	margin: 0;
	padding: 0;
}

.coverPic {
	display: block;
	position: relative;
	height: 415px;
	overflow: hidden;
	text-decoration: none;
}

.cover {
	height: 300px;
	position: relative;
	overflow: hidden;
}

.cover>img {
	position: absolute;
	display: block;
	max-width: 1100px;
	top: 0;
	left: 0;
}
</style>
<body class="w3-theme-l5">

	<!----------------------Header, Cover Photo, Menu Bar---------------------- -->
	<jsp:include page="header.jsp" />



	<!--Page Container-->
	<div class="w3-container w3-content" style="max-width: 1100px">
		<!--Background Image, Menu Bar -->
		<div class="cover">
			<img src="${user.backgroundPic}">
		</div>

		<!-- form to upload background picture -->
		<form action="/uploadBackgroundPhoto/${user.userId}"
			enctype="multipart/form-data" method="POST">
			<div class="form-group col-lg-6">
				<label for="profilePic"><b>Edit Cover Picture</b></label> <input
					type="file" name="file">
			</div>
			<button type="submit">Upload</button>
		</form>



		<!--The Grid -->
		<div class="w3-row">
			<jsp:include page="menuBar.jsp" />

			<!-----------------------Left Column----------------------->
			<div class="w3-col m4">
		
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<div class="w3-container">
						<p class="w3-center">

							<br> <img src="${user.profilePic}" width="200" height="200">

						</p>
						<p>
						<form action="/uploadProfilePhoto/${user.userId}"
							enctype="multipart/form-data" method="POST">
							<div class="form-group col-lg-6">
								<label for="profilePic"><b>Edit Profile Picture</b></label> <input
									type="file" name="file">
							</div>
							<button type="submit">Upload</button>
						</form>
						<br>

				<!-- Clubs
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<h3>Find New Clubs</h3>
					<p>Input Search box here and pre-filter by clubs</p>
				</div> -->
			</div>
	</div>
	</div>

			<!--------------------Middle Column--------------------->
			<div class="w3-col m8">
				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<div class="w3-container w3-padding">
						<h6 class="w3-opacity">EDIT PROFILE ${jobDetails.company}</h6>
						<div style="padding: 0px 30px 20px 0px">
							<form action="/updateProfile" method="POST">
								<table style="border-collapse: separate; border-spacing: 11px;">
									<tr>
										<!--<td><label><b>Email</b></label></td>-->
										<td><input type="hidden" name="emailId"
											value="${user.emailId}" required readonly></td>
									</tr>

									<tr>
										<td><label><b>First Name</b></label></td>
										<td><input type="text" name="firstName"
											value="${user.firstName}" required></td>
									</tr>
									<tr>
										<td><label><b>Last Name</b></label></td>
										<td><input type="text" name="lastName"
											value="${user.lastName}" required></td>
									</tr>

									<tr>
										<td><label><b>Password</b></label></td>
										<td><input type="password" name="password"
											value="${user.password}" required></td>
									</tr>
									<tr></tr>
									<tr>
										<td><label><b>About</b></label></td>
										<td><input type="text" name="about" value="${user.about}"
											required></td>
									</tr>
									<tr></tr>
									<tr></tr>
									<tr>
										<td><label><b>languages</b></label></td>
										<td><input type="text" name="languages"
											value="${user.languages}"></td>
									</tr>
																	<tr>
									<td><label><b>Gender</b></label></td>
									<td><input type="text" name="gender"
										value="${user.gender}"></td>
								</tr>
								<tr>

									<td><label><b>location</b></label></td>
									<td><input type="text" name="location"
										value="${user.location}"></td>
								</tr>
								<tr>
									<td><label><b>Birthday<sub><br>please
													enter in the format mm/dd/yy e.g 01/01/1999</sub></b></label></td>
									<td><input type="text" name="birthdate"
										placeholder="mm/dd/yyyy" value="${user.birthdate}"></td>
								</tr>
									<tr></tr>
									<tr>
										<td>
											<button type="submit" class="button">Edit</button>
										</td>
										<td>
											<button class="button">
												<a href="/profile"> Cancel</a>
											</button>
										</td>
									</tr>

								</table>
							</form>
						</div>

					</div>
				</div>

			</div>

		</div>
	</div>

		<jsp:include page="footer.jsp" />
</body>
</html>

