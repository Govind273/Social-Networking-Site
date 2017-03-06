<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Profile</title>
    <link rel="stylesheet" type="text/css" href="global.css" />

    <style>
        img {
            display: block;
            margin: 0 auto;
        }

        .tile_div a {
            display: block;
            float: left;
            height: 50px;
            width: 100px;
            margin-right: 5px;
            //background-image: url(./images/button_left.png);
            text-align: center;
            line-height: 50px;
            text-decoration: none;
        }

        .title_div a.last {
            margin-right: 0;
        }

        .clear {
            clear: both;
        }

        a.light{
            font-weight: bold;
        }
    </style>
</head>
<body>
<div id="header1">
<h1>Club Connect</h1>
</div>
<div id ="navfirst">
	<ul id="menu">
		<li id="h">
			<a href="#" title="Home">Home</a>
		</li>
		<li id="ch">
			<a href="#" title="chat">Chat</a>
		</li>
		<li id="cl">
			<a href="#" title="Clubs">Clubs</a>
		</li>
		<li id= "ed">
			<form action="/editProfile">
    			<button type="submit" >Edit</button>
			</form>
		</li>>
	</ul>
</div>

<link rel="stylesheet" href="css/style.css">
<form action="/editProfile">
    <button type="submit" >Edit</button>
</form>

<form action="/logout">

    <button type="submit" >Logout</button>
</form>

<form action="/createGroup">

    <button type="submit" >Create Group</button>
<div id="content" class="clearfix">
    <section id="left">
        <div id="userStats" class="clearfix">
            <div class="pic">
                <a href="#"><img src="view/1.jpg" width="700" height="300" /></a>
            </div>

            <div class="pic">
                <a href="#"><img src="img/user_avatar.jpg" width="150" height="150" /></a>
            </div>

            <div class="tile_div">
                <%--<a href="#">About</a>--%>
                <a href="#" class="light">${user.firstName}</a>

                <a href="#" class="light">${user.emailId}</a>
            </div>
        </div>
    </section>
</div>

</form>
</body>
</html>