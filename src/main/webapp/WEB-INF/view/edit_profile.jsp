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

<form action="/updateProfile"  enctype="multipart/form-data" method="POST">
    <label><b>email</b></label>
    <input type="text"  name="emailId" value="${user.emailId}" required readonly>

<label><b>First Name</b></label>
<input type="text"  name="firstName" value="${user.firstName}" required>

    <label><b>last Name</b></label>
    <input type="text"  name="lastName" value="${user.lastName}" required>

    <label><b>Password</b></label>
    <input type="password"  name="password" value="${user.password}" required>

    <label><b>About</b></label>
    <input type="text"  name="about" value="${user.about}" required>

    <label for="file"><b>Picture to upload:</b></label>
    <input type="file" name="file" class="form-control" id="file" required="true">

<button type="submit" >Edit</button>

</form>

</body>
</html>
