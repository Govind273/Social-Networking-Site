<!DOCTYPE html>
<html>
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
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
        padding: 14px 20px;
        background-color: #f44336;
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
</style>
<body>

<h2>Edit Profile</h2>

<form action="/editProfile/{firstName}"  method="PUT">
    <label><b>email</b></label>--%>
    <input type="text"  name="emailId" value="${user.emailId}" required readonly>

<label><b>Name</b></label>
<input type="text"  name="firstName" value="${user.firstName}" required>

<button type="submit" >Edit</button>

</form>
<%--<form>--%>
    <%--<div class="container">--%>
        <%--<label><b>email</b></label>--%>
        <%--<input type="text"  name="emailId" value="${user.emailId}" required readonly>--%>

        <%--<label><b>Name</b></label>--%>
        <%--<input type="text"  name="firstName" value="${user.firstName}" required>--%>

        <%--<label><b>Last Name</b></label>--%>
        <%--<input type="text" value="${user.lastName}" name="lastName"  required>--%>

        <%--&lt;%&ndash;<label><b>Place</b></label>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<input type="text" placeholder="Enter Email" name="emailId" required>&ndash;%&gt;--%>

        <%--<label><b>About</b></label>--%>
        <%--<input type="text" placeholder="About Me" name="about" required>--%>
    <%--</div>--%>
<%--</form>--%>
<form>

    <div class="clearfix">
        <button type="submit">OK`</button>
    </div>
</form>




</body>
</html>
<%--Skip to content--%>
<%--This repository--%>
<%--Search--%>
<%--Pull requests--%>
<%--Issues--%>
<%--Gist--%>
<%--@KarunAhluwalia--%>
<%--Sign out--%>
<%--Watch 1--%>
<%--Star 0--%>
<%--Fork 0 kumasuje/Social-Network-Web-Application--%>
<%--Code  Issues 0  Pull requests 0  Projects 0  Wiki  Pulse  Graphs--%>
<%--Branch: master Find file Copy pathSocial-Network-Web-Application/src/main/webapp/WEB-INF/views/editProfile.jsp--%>
<%--abc4d9f  on May 25, 2016--%>
<%--@kumasuje kumasuje Web based Social Network application. Build using Java ( Spring MVC f…--%>
<%--1 contributor--%>
<%--RawBlameHistory--%>
<%--127 lines (96 sloc)  4.75 KB--%>
<%--&lt;%&ndash;<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>&ndash;%&gt;--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Social Network</title>--%>

    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0">--%>

    <%--<!-- Bootstrap -->--%>
    <%--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-7s5uDGW3AHqw6xtJmNNtr+OBRJUlgkNJEo78P4b0yRw= sha512-nNo+yCHEyn0smMxSswnf/OnX6/KwJuZTlNZBjauKhTK0c+zT+q5JOCx0UFhXQ6rJR9jg6Es8gPuD2uZcYDLqSw==" crossorigin="anonymous">--%>
    <%--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>--%>
    <%--<script type="text/javascript">--%>

    <%--</script>--%>
<%--</head>--%>
<%--<body>--%>

<%--<!-- Navigator for the website, Home is active. Once finalised override -->--%>
<%--<nav class="navbar navbar-inverse">--%>

    <%--<!-- To cover the complete width -->--%>
    <%--<div class="container-fluid">--%>
        <%--<!-- Brand and toggle get grouped for better mobile display -->--%>
        <%--<div class="container">--%>
            <%--<div class="navbar-header">--%>
                <%--<a class="navbar-brand" >Social network</a>--%>
            <%--</div>--%>

        <%--</div><!-- /.navbar-collapse -->--%>
    <%--</div><!-- /.container-fluid -->--%>
<%--</nav>--%>

<%--<div class="container" >--%>
    <%--<div id="left">--%>
        <%--<form name="project_form" id="project_form" action="/SE-project-team-six/newsFeed" enctype="multipart/form-data" method="POST">--%>

            <%--<div class="row col-lg-12">--%>
                <%--<h3 class="text-left">Welcome to Social Network, Please complete your profile to proceed further </h3>--%>
                <%--<hr size="10" width="100%" noshade style="color:#000000" align="left" />--%>

                <%--<h5 class="text-left"><b>This section contains information provided on registration page which can be edited here </b></h5>--%>
                <%--<div class="form-group col-lg-6">--%>
                    <%--<label for="emailId">Email1</label>--%>
                    <%--<input type="text" name="emailId" class="form-control" id="emailId" value="${registerDetail.emailId}" >--%>
                <%--</div>--%>


                <%--<div class="form-group col-lg-6" >--%>

                    <%--<label for="password">Password</label>--%>
                    <%--<input type="password" name="password" class="form-control" id="password" value="${registerDetail.password}">--%>
                <%--</div>--%>


                <%--<div class="form-group col-lg-6" >--%>
                    <%--<label for="dob">Date of Birth</label>--%>
                    <%--<input type="text" name="dob" class="form-control" id="dob" value="${registerDetail.dob}">--%>
                <%--</div>--%>
                <%--<div class="form-group col-lg-6" >--%>

                    <%--<label for="gender">Gender</label>--%>
                    <%--<input type="text" name="gender" class="form-control" id="gender" value="${registerDetail.gender}">--%>
                <%--</div>--%>

                <%--<div class="form-group col-lg-6" >--%>
                    <%--<label for="securityQuestion1">Your mother's maiden name ?</label>--%>
                    <%--<input type="text" name="securityQuestion1" class="form-control" id="securityQuestion1" value="${registerDetail.securityQuestion1}">--%>
                <%--</div>--%>

                <%--<div class="form-group col-lg-6" >--%>

                    <%--<label for="securityQuestion2">Your father's maiden name ?</label>--%>
                    <%--<input type="text" name="securityQuestion2" class="form-control" id="securityQuestion2" value="${registerDetail.securityQuestion2}">--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="row col-lg-12">--%>

                <%--<hr size="10" width="100%" noshade style="color:#000000" align="left" />--%>
                <%--<h5 class="text-left"><b>This section requires few mandatory information required to join the Social Network </b></h5>--%>

                <%--<div class="form-group col-lg-6" >--%>
                    <%--<label for="fullName">Full Name</label>--%>
                    <%--<input type="text" name="fullName" class="form-control" id="fullName" placeholder="Enter Your Full Name">--%>
                <%--</div>--%>
                <%--<div class="form-group col-lg-6" >--%>

                    <%--<label for="school">School</label>--%>
                    <%--<input type="text" name="school" class="form-control" id="school" placeholder="Enter Your School">--%>
                <%--</div>--%>
                <%--<div class="form-group col-lg-6" >--%>

                    <%--<label for="phoneNumber">Phone number</label>--%>
                    <%--<input type="text" name="phoneNumber" class="form-control" id="phoneNumber" placeholder="Enter Your Phone Number">--%>
                <%--</div>--%>
                <%--<div class="form-group col-lg-6" >--%>

                    <%--<label for="address">Address number</label>--%>
                    <%--<input type="text" name="address" class="form-control" id="address" placeholder="Enter Your Address">--%>
                <%--</div>--%>

                <%--<div class="form-group col-lg-6" >--%>
                    <%--<label for="profilePic">Upload Your Profile Picture</label>--%>
                    <%--<input type="file" name="profilePic" accept="image/*" class="form-control" id="profilePic" >--%>
                <%--</div>--%>

                <%--<div class="form-group col-lg-6" >--%>
                    <%--<label for="backgroundPic">Upload Your Background Picture</label>--%>
                    <%--<input type="file" name="backgroundPic" accept="image/*" class="form-control" id="backgroundPic" >--%>
                <%--</div>--%>

                <%--<div class="form-group row text-left col-lg-9">--%>
                    <%--<div class="col-lg-12">--%>
                        <%--<button type="submit" name="save" value="save" id="save" class="btn btn-primary"> Save Changes </button>--%>
                    <%--</div>--%>
                <%--</div>--%>

            <%--</div>--%>

        <%--</form>--%>
    <%--</div>--%>
    <%--<br style="clear:both;"/>--%>


<%--</div>--%>

<%--</body>--%>
<%--</html>--%>
<%--Contact GitHub API Training Shop Blog About--%>
<%--© 2017 GitHub, Inc. Terms Privacy Security Status Help--%>