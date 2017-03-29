<html>
<body bgcolor="#000000">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/index.css">

</head>
<div id="header1" style="height:72px;">
		<div class="iulogo" style="float:left; width:50%; height:50px;" align="left">
		<img src="images/2.png" width="65" height="56" >
		</div>
		<div align="right" style="padding:20px">
			<li id="logout">
			<a href="/logout" title="Logout">Logout</a>
		</li>
		</div>
</div>
<div class="gtco-container">
	<div class="coverTopSection" height="400px">
		<div class="coverPic" style="width:100% height:80%" valign="top">
			<img src="images/iu4.jpeg" height="280px" >
		</div>
		<div id="navfirst" style="width:100% height:20%" valign="bottom">
<!--			<div >
			<img src="images/home.png" width="30px" height="30px" style="position:absolute; left:30px; top:420px; border:#000 solid 1px;" onclick="profile.html" >
			</div>  -->
			
<!--			<input name="home" type="button" onclick="JavaScript:window.location.href＝'profile.html'" style="width:30px; height=30px; position:absolute; left:30px; top:420px;  border:#000 solid 1px;background:url("images/home.png") no-repeat;"> 
			-->
			<a id="home" class="homebutton" href="profile.jsp" style="width:30px; height=100%; position:absolute; left:20px; background:#FFFFFF; top:420px;  border:#000 solid 1px;no-repeat;">
				<img src="images/home.png">
			</a>
			<ul id="menu" width="70%" align="right">
				<li id="editProfile">
					<a href="/editProfile" title="Edit" type="submit" >Edit Profile</a>
				</li>
				<li id="ch">
					<a href="#" title="chat">Club Chat</a>
				</li>

			</ul>   

<!--			<div id="userPic">
				<img src=${user.profilePic} width="170" height="120" style="position:absolute; left:80px; top:230px; border:#000 solid 1px;">
			</div>   -->


			<div class="search" align="right">
				<form action="/searchGroup" method="post">
  					<input type="text" name="groupName" placeholder="Search.." >
  					<button type="submit">Search</button>
				</form>			
			</div>
		</div>
	</div>

	<div id="section1">
		<div class="tile_div" id="username" style="position:absolute;  top:555px;" style="position:absolute; left:80px; top:230px;" align="middle">
				<a font size="10" color="FFFFFF">${user.firstName} ${user.emailId}</font>
		</div>
		<div class="CLubmembership" align="middle">
			

		</div>
	</div>


   

</div>


<link rel="stylesheet" href="css/style.css">
</body>
</html>
