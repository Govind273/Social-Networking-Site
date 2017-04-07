<html  xmlns:th="http://www.thymeleaf.org">
<body bgcolor="#FFFFFF">
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

 
<div class="gtco-container">
	<div class="coverTopSection" height="400px">
		<div class="coverPic" style="width:100% height:80%" valign="top">
			<img src="images/iu4.jpeg" height="280px" >
		</div>
		<div id="navfirst" style="width:100% height:20%" valign="bottom">
			<a id="home" class="homebutton" href="profile.jsp" style="width:30px; height=100%; position:absolute; left:20px; background:#FFFFFF; top:420px;  border:#000 solid 1px;no-repeat;">
				<img src="images/home.jpg">
			</a>
			<ul id="menu">
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
	<div id="nav">
<!--		<div class="CLubmembership" align="middle" heightï¼"400px"><p2>Club Menbership</p2></div>     -->
		<div >
			<img src="images/2.png" width="170" height="120" style="position:absolute; left:80px; top:480px; border:#000 solid 1px;">
			
		</div>
		<!-- class="nav-main" Commented by vishi-->
		<div  style="top:250px">
<!--			<div class="nav-box">
				<div class="nav">
  					<ul class="nav-ul">
  						<li><a><span>Club Membership</span></a></li>
  						<li><a href="#" class="develop"><span>Data Science Club</span></a></li>
  						<li><a href="#" class="wechat"><span>The Karun Fan Club</span></a></li>
  						<li><a href="#" class="case"><span>I love Junjie Club</span></a></li>
  						<li><a href="#" class="news"><span>Awesome People Club</span></a></li>
  						<li><a href="#" class="contact"><span>View All Club</span></a></li>
  					</ul>
				</div>
				<div class="nav-slide">
    				<div class="nav-slide-o"></div>
    					<div class="nav-slide-o">
    						<ul>
    							<li><a href="#"><span>Tim</span></a></li>
    							<li><a href="#"><span>Karun</span></a></li>
    							<li><a href="#"><span>Vishi</span></a></li>
    							<li><a href="#"><span>Junjie</span></a></li>
    							<li><a href="#"><span>Nick</span></a></li>
    						</ul>
    					</div>
    				<div class="nav-slide-o">
    					<ul>
    						    <li><a href="#"><span>Tom</span></a></li>
    							<li><a href="#"><span>Jason</span></a></li>
    							<li><a href="#"><span>Vincent</span></a></li>
    							<li><a href="#"><span>Jackie</span></a></li>
    							<li><a href="#"><span>Martina</span></a></li>
    					</ul>
    				</div>
    				<div class="nav-slide-o">
    					<ul>
    						    <li><a href="#"><span>Vicky</span></a></li>
    							<li><a href="#"><span>Kevin</span></a></li>
    							<li><a href="#"><span>Vector</span></a></li>
    							<li><a href="#"><span>Jarvan</span></a></li>
    							<li><a href="#"><span>Neon</span></a></li>
    					</ul>
    				</div>
    				<div class="nav-slide-o">
    					<ul>
    						<li><a href="#"><span>Rekton</span></a></li>
    						<li><a href="#"><span>Rengar</span></a></li>
    						<li><a href="#"><span>Jax</span></a></li>
    						<li><a href="#"><span>Lucian</span></a></li>
    						<li><a href="#"><span>Morgana</span></a></li>
    						<li><a href="#"><span>Rumble</span></a></li>
    						<li><a href="#"><span>Graves</span></a></li>
    						<li><a href="#"><span>Gragas</span></a></li>
    						<li><a href="#"><span>Nocturne</span></a></li>
    					</ul>
    				</div>
				</div>
			</div>  -->
		</div>
	</div>  



	<div id="section8">
		<div class="tile_div" id="username" style="position:absolute;  top:555px; left:280px; " align="middle" >
				<font size="15" color="000000">${searchGroup.groupName}</font>
		</div>
	
	

		
		<div class="CLubmembership" align="middle">
<!--  			<p2>This is the location of user post. It is static now. And I can make it dynamic with the data name.</p2>

			<p2>Club Menbership</p2>
			<p>User Profile Page.
Club Membership list of clubs user belongs to. Star denotes whether user is admin to club. Each club is a link to the member page of the club. The "view all clubs" button goes to the search results page that is filtered by clubs
</p>
			<p>Club Profile Page
The Club Profile Page will be nearly identical except 1) it lists club members instead of clubs that user is a member of. 2) the star denotes the admins, 3) âView all Clubsâ is âView all Membersâ and goes to search results page that is filtered by users who belong to club, and 4) edit profile in the header is grayed out / does not appear unless user is the admin</p>-->
<!--  <font size="15" color="000000" href="#" class="light">${searchGroup.groupName}</font>  -->

                <font href="#" class="light">${searchGroup.about}</font>


                <!--  <a >${searchGroup.groupId }</a>-->

		</div>


	
<!--	<div id="section1">
		<form action="/createPost/${searchGroup.groupId }"  method="POST" class="form-inline" align="left">
    <form action="/createPost/"  method="POST" class="form-inline" align="left">
                	



		<div class="userpost" align="middle">
			<font href="#" class="light"></font>
		</div>  -->
	
	<div id="section1">
		


	   <form action="/createPost/${searchGroup.groupId }/${user.userId }"  method="POST" class="form-inline" align="left">

    <!-- <form action="/createPost/"  method="POST" class="form-inline" align="left">-->
                	

                	<div class="posts_div" align="center" valign="middle">
                        <label><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Club Posts</b></label>
                        <input type="text" placeholder="posts" name="postDesc"  class="mytext" maxlength="150" required>
                         <button type="submit" class="btn btn-default btn-block"> Post</button>
                    </div>
         </form>
                <h2>Recent Posts</h2>

                <a href=â#â th:each=âp:${latestposts}â th:text=â${p.title}â th:href=â@{/posts/view/{id}/(id=${p.id})}â>
</a>

	</div>
	<div class="userpost" align="middle" width="841px">
		<font href="#" class="light"></font>
	</div>

  <!--  	 	<div>
	 		<form action="/createPost/${group.group_id}"  method="POST" class="form-inline" align="left">




		</div>  -->
<<<<<<< HEAD

=======
=======
>>>>>>> 3cbecd48e0dbc91364c004000fee14b68c20660c
  

               
                <h1>${postDesc }<h1>

<!--
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
   
-->
</div>
<link rel="stylesheet" href="css/style.css">

