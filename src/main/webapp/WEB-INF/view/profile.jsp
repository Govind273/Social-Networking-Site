<html>
<body bgcolor="#000000">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="/css/index.css">

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
<<<<<<< HEAD
			<ul id="menu">
=======
<!--			<div >
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
>>>>>>> d86731f3d1f33087cc6a2a092a15cf8e444e32ce
				<li id="editProfile">
					<a href="/editProfile" title="Edit" type="submit" >Edit Profile</a>
				</li>
				<li id="ch">
					<a href="#" title="chat">Club Chat</a>
				</li>

			</ul>   

<<<<<<< HEAD
			<div id="userPic">
				<img src=${user.profilePic} width="170" height="120" style="position:absolute; left:80px; top:230px; border:#000 solid 1px;">
			</div>
			<div class="tile_div" id="username" style="position:absolute; left:320px; top:350px;" style="position:absolute; left:80px; top:230px;">
				<a font size="6" color="FFFFFF">${user.firstName} ${user.emailId}</font>
=======
			<div class="search" align="right">
				<form action="/createGroup" >
  					<button type="submit">CREATE</button>
				</form>			
>>>>>>> d86731f3d1f33087cc6a2a092a15cf8e444e32ce
			</div>


			<div class="search" align="right">
<<<<<<< HEAD
				<form action="/searchGroup" method="post">
=======
				<form action="/search" method="get">
>>>>>>> d86731f3d1f33087cc6a2a092a15cf8e444e32ce
  					<input type="text" name="groupName" placeholder="Search.." >
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
<<<<<<< HEAD
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
=======
>>>>>>> d86731f3d1f33087cc6a2a092a15cf8e444e32ce
<!--<iframe src="signup.html" width="100%" height="100%"></iframe>-->
<link rel="stylesheet" href="/css/style.css">
</body>
</html>
