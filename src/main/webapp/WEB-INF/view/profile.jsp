<html>
<body bgcolor="#000000">
<head>
<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/index.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">


</head>



<div id="header1" style="height: 72px;">
	<div class="iulogo" style="float: left; width: 50%; height: 50px;"
		align="left">
		<img src="images/2.png" width="65" height="56">
	</div>
	<div align="right" style="padding: 20px">
		<li id="logout"><a href="/logout" title="Logout">Logout</a></li>
	</div>

</div>

<form name="register_form" id="register_form" action="/uploadProfilePhoto/${user.userId }"
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

			<img src="images/home.png" width="30px" height="30px" style="position:absolute; left:30px; top:420px; border:#000 solid 1px;" onclick="profile.html" >
			</div>  -->

			<!--			<input name="home" type="button" onclick="JavaScript:window.location.href＝'profile.html'" style="width:30px; height=30px; position:absolute; left:30px; top:420px;  border:#000 solid 1px;background:url("images/home.png") no-repeat;"> 
			-->

			<a id="home" class="homebutton"  type="submit" style="width:30px; height=100%; position:absolute; left:20px; background:#FFFFFF; top:420px; no-repeat;" onclick="javascript:window.location.href ='/profile';">
				<img src="/images/home.jpg">
			</a>
			<ul id="menu" width="70%" align="right">
			
			<li>
			<form action = "/seeAllRequest/${user.userId }" method = "GET">
			<button type = "submit">Friend Requests</button>
			
			</form>
			</li>
			
			<li>
			<form action = "/createGroup/" method = "GET">
			<button type = "submit">Create</button>
			
			</form>
			</li>

				<li id="editProfile">
					<a href="/editProfile" title="Edit" type="submit" >Edit Profile</a>

				</li>

				<li>
					<form action="/createGroup/" method="GET">
						<button type="submit">Create</button>

					</form>
				</li>
				<li id="editProfile"><a href="/editProfile" title="Edit"
					type="submit">Edit Profile</a></li>
				<li id="ch"><a href="#" title="chat">Club Chat</a></li>

			</ul>


			<div id="userPic">
				<img src=${user.profilePic} width="170" height="120" style="position:absolute; left:80px; top:230px; border:#000 solid 1px;">
			</div>
			<div class="tile_div" id="username" style="position:absolute; left:320px; top:350px;" style="position:absolute; left:80px; top:230px;">
				<a font size="6" color="FFFFFF">${user.firstName} ${user.emailId}</font>

			<div class="search" align="right">

				<form action="/createGroup" >
  					<button type="submit">CREATE</button>
				</form>			

>
			</div>


			<div class="search" align="right">

				<form action="/searchGroup" method="post">

				<form action="/search" method="get">

					<input type="text" name="groupName" placeholder="Search..">
					<button type="submit">Search</button>
				</form>

			</div>


		</div>
	</div>
	<div id="nav">
		<div >
			<img src="images/2.png" width="170" height="120" style="position:absolute; left:80px; top:480px;">
		</div>
		<div style="position:relative; left:80px; top:250px;">
			<a1>Karun</a1>
		</div>
	</div>


	<div id="section" align="right">
		<div class="tile_div" id="username" style="position:absolute;  top:555px; left:330px;"  align="middle">
				<a1 font size="10" color="FFFFFF">${user.firstName} ${user.lastName} </a1>


		<div class="CLubmembership" style="margin:-110px 0px 0px -50px; float:left;">
			${user.about} 


<div id="section">
	<div class="tile_div" id="username"
		style="position: absolute; top: 555px;"
		style="position:absolute; left:80px; top:230px;" align="middle">
		<a font size="10" color="FFFFFF">${user.firstName} ${user.emailId}
			${user.userId }</font>
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

		$('.nav-ul li').mouseenter(function() {
			clearTimeout(thisTime);
			var thisUB = $('.nav-ul li').index($(this));
			if ($.trim($('.nav-slide-o').eq(thisUB).html()) != "") {
				$('.nav-slide').addClass('hover');
				$('.nav-slide-o').hide();
				$('.nav-slide-o').eq(thisUB).show();
			} else {
				$('.nav-slide').removeClass('hover');
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

<!--<iframe src="signup.html" width="100%" height="100%"></iframe>-->
<link rel="stylesheet" href="/css/style.css">
</body>
</html>
