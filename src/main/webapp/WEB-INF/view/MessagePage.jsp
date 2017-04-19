<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List"%>

<html>


Hi !!!!!!!!!!!!!!!!!
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<style>
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
	top: 20%;
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

input[type=text1] {
	color: white;
	position: absolute;
	right: 15%;
	margin: 8px 0;
	cursor: pointer;
	width: 20%;
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
</style>
<body>
	<div id="header1" style="height: 72px;">
		<div class="iulogo" style="float: left; width: 50%; height: 50px;"
			align="left">
			<img src="/images/2.png" width="65" height="56">
		</div>
		<div align="right" style="padding: 20px">
			<li id="logout"><a href="/logout" title="Logout">Logout</a></li>
		</div>
	</div>
	<div class="gtco-container">
		<div class="coverTopSection" height="400px">
			<div class="coverPic" style="width: 100% height:80%" valign="top">
				<img src="/images/iu4.jpeg" height="280px">
			</div>
			<div id="navfirst" style="width: 100% height:20%" valign="bottom">
				<!--			<div >
			<img src="images/home.png" width="30px" height="30px" style="position:absolute; left:30px; top:420px; border:#000 solid 1px;" onclick="profile.html" >
			</div>  -->

				<input name="home" type="button"
					onclick="JavaScript:window.location.hrefï¼'profile.html'"
					style="width: 30px; height =30px; position: absolute; left: 30px; top: 420px; border: #000 solid 1px; background: url("images/home.png") no-repeat;">
				- <a id="home" class="homebutton" href="/profile"
					style="width: 30px; height =100%; position: absolute; left: 20px; background: #FFFFFF; top: 420px; border: #000 solid 1px;">
					<img src="/images/home.jpg">
				</a>
				<ul id="menu" width="70%" align="right">

					<li id="editProfile"><a href="/editProfile" title="Edit"
						type="submit">Edit Profile</a></li>
					<li id="ch"><a href="#" title="chat">Club Chat</a></li>

				</ul>
				<div class="search" align="right">
					<form action="/search" method="get">
						<input type="text1" name="groupName" placeholder="Search.."
							class="search_text">
						<button1 type="submit" class="search_button">Search</button1>
					</form>
				</div>
			</div>
		</div>
		<div id="nav">
			<div id="section" width="550%">
				<div class="tile_div" id="username"
					style="position: absolute; top: 555px;"
					style="position:absolute; left:80px; top: 230px;" align="middle">
					<label><h4>
							<b>Message</b>
						</h4></label>
				</div>
				<div class="CLubmembership" align="left">
					<c:forEach items="${myMessages}" var="post">
						<div id="left" class="row col-lg-12">

							<div class="form-group col-lg-6">
								<label for="PostBy" style="margin-top: 15%; font-size: 20px">Sender
									Name: ${post.senderName}</label>
							</div>

							<div class="form-group col-lg-6">
								<label for="PostBy" style="margin-top: 15%; font-size: 20px">Message:
									${post.message}</label>
							</div>

						</div>
==============================
					</c:forEach>
				</div>
			</div>
		</div>
		<div>
		<form action = "/sendMessage/${user.userId }/${friendMessage}" method = "POST">
		<textarea  cols="40" rows="5" name = "message"></textarea>
		<button type = "submit">Send</button> 
		
		</form>
		</div>
</body>