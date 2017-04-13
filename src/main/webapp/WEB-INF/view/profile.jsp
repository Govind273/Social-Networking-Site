

<!DOCTYPE html>
<html>
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
			<li id="logout"><a href="/logout" title="Logout"><font
					color=" #ffffff">Logout</font></a></li>
		</div>
	</div>
	<form action="/uploadProfilePhoto/${user.userId}"
		enctype="multipart/form-data" method="POST">
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
			<label for="file">Picture to upload:</label> <input type="file"
				name="file" class="form-control" id="file" required="true">
		</div>

		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">

			<button type="submit" name="register" value="register" id="register"
				class="btn btn-primary">Upload</button>
		</div>

	</form>
	<div class="gtco-container">
		<div class="coverTopSection" height="400px">

			<div class="coverPic" style="width: 100% height:80%" valign="top">
				<img src="${user.profilePic}" height="280px">
			</div>

			<div id="navfirst" style="width: 100% height:20%" valign="bottom">

				<a id="home" class="homebutton" href="/profile"
					style="width: 30px; height =100%; position: absolute; left: 20px; background: #FFFFFF; top: 420px; border: #000 solid 1px;">
					<img src="/images/home.jpg">
				</a>
				<ul id="menu" width="70%" align="right">

					<li id="editProfile"><a href="/editProfile" title="Edit"
						type="submit">Edit Profile</a></li>

					
					
					<li id="seeRequest"><a href="/seeAllRequest/${user.userId }" title="Request"
						type="submit">Friend Requests</a></li>
						
						
						<!--  <form action="/seeAllRequest/${user.userId }" method="GET">
							<button type="submit">Friend Requests</button>

						</form>-->
					
					
					<li id="createGroup"><a href="/createGroup" title="Group"
						type="submit">Create Group</a></li>
						

					<li>
						

					</li>

				</ul>
				<div class="search" align="right">
					<form action="/search" method="get">
						<input type="text" name="groupName" placeholder="Search..">
						<button type="submit">Search</button>
					</form>
				</div>

			</div>
		</div>
	</div>

<!--  	<div id="userPic">
		<img src=${user.profilePic } width="170" height="120"
			style="position: absolute; left: 80px; top: 230px; border: #000 solid 1px;">
	</div>
	<div class="tile_div" id="username"
		style="position: absolute; left: 320px; top: 350px;"
		style="position:absolute; left:80px; top:230px;">
		<a font size="6" color="FFFFFF">${user.firstName} ${user.emailId}</font>
		</a>

	</div>
>>>>>>> Stashed changes
	</div>
	<div id="nav">
		<div>
			<img src="images/2.png" width="170" height="120"
				style="position: absolute; left: 80px; top: 480px;">
		</div>
		<div style="position: relative; left: 80px; top: 250px;">
			<a1>Karun</a1>
		</div>
	</div>


	<div id="section" align="right">
<<<<<<< Updated upstream
		<div class="tile_div" id="username" style="position:absolute;  top:555px; left:330px;"  align="middle">
				<a1 font size="10" color="FFFFFF">${user.firstName} ${user.lastName} </a1>

<!--		<div class="CLubmembership" align="middle" height＝"400px"><p2>Club Menbership</p2></div>     -->
		
			</div>
		
		</div>
		<div class="CLubmembership" style="margin:-110px 0px 0px -50px; float:left;">
			${user.about} 

		</div>
	</div>

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function(){
	var thisTime;
	$('.nav-ul li').mouseleave(function(even){
			thisTime	=	setTimeout(thisMouseOut,1000);
	})

	$('.nav-ul li').mouseenter(function(){
		clearTimeout(thisTime);
		var thisUB	=	$('.nav-ul li').index($(this));
		if($.trim($('.nav-slide-o').eq(thisUB).html()) != "")
		{
			$('.nav-slide').addClass('hover');
			$('.nav-slide-o').hide();
			$('.nav-slide-o').eq(thisUB).show();
		}
		else{
			$('.nav-slide').removeClass('hover');
		}
		
	})
	
	function thisMouseOut(){
		$('.nav-slide').removeClass('hover');
	}
	 
	$('.nav-slide').mouseenter(function(){
		clearTimeout(thisTime);
		$('.nav-slide').addClass('hover');
	})
	$('.nav-slide').mouseleave(function(){
		$('.nav-slide').removeClass('hover');
	})

})
</script>  
   

</div>

<!--
<div id ="navfirst">
	<ul id="menu">
		<li id="h">
			<a href="#" title="Home">Home</a>
				<ul>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
				</ul>   
		</li>
		<li id="ch">
			<a href="#" title="chat">Chat</a>
		</li>
		<li id="cl">
			<a href="#" title="Clubs">Clubs</a>
		</li>
	</ul>
	<div class="search" align="right">
		<input type="text" class="search_key" value="" />
        <input type="submit" class="submit" value="Search">
	</div>
</div> -->
		<div class="tile_div" id="username"
			style="position: absolute; top: 555px; left: 330px;" align="middle">
			<a1 font size="10" color="FFFFFF">${user.firstName}
			${user.lastName} </a1>


			<div class="CLubmembership"
				style="margin: -110px 0px 0px -50px; float: left;">
				${user.about}


				<div id="section">
					<div class="tile_div" id="username"
						style="position: absolute; top: 555px;"
						style="position:absolute; left:80px; top:230px;" align="middle">
						<a font size="10" color="FFFFFF">${user.firstName}
							${user.emailId} ${user.userId }</font>
					</div>
					<div class="CLubmembership" align="middle">${user.about}</div>
				</div>

				<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
				<script type="text/javascript">
					$(function() {
						var thisTime;
						$('.nav-ul li').mouseleave(function(even) {
							thisTime = setTimeout(thisMouseOut, 1000);
						})

						$('.nav-ul li')
								.mouseenter(
										function() {
											clearTimeout(thisTime);
											var thisUB = $('.nav-ul li').index(
													$(this));
											if ($.trim($('.nav-slide-o').eq(
													thisUB).html()) != "") {
												$('.nav-slide').addClass(
														'hover');
												$('.nav-slide-o').hide();
												$('.nav-slide-o').eq(thisUB)
														.show();
											} else {
												$('.nav-slide').removeClass(
														'hover');
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


			</div>-->

			<link rel="stylesheet" href="/css/style.css">

</body>
</html>
