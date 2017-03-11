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
<div id ="navfirst">
	<ul id="menu">
		<li id="editProfile">
    			<a href="/editProfile" title="Edit" type="submit" >Edit</a>
		</li>
		<li id="createGroup">
			<a href="/createGroup" title="Group">Group</a>
		</li>
		<li id="logout">
			<a href="/logout" title="Logout">Logout</a>
		</li>
		
		
	</ul>
</div>
<div id="content" class="clearfix">
    <section id="left">
        <div id="userStats" class="clearfix">
            <div class="pic">
                <a href="#"><img src="view/1.jpg" width="700" height="300" /></a>
            </div>

            <div class="pic">
                <a href="#"><img src="${user.profilePic}" width="150" height="150" />${user.profilePic}</a>
            </div>

            <div class="tile_div">
                <%--<a href="#">About</a>--%>
                <a href="#" class="light">${user.firstName}</a>

                <a href="#" class="light">${user.emailId}</a>
            </div>
        </div>
    </section>
</div>

</body>
</html>