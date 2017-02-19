<!DOCTYPE html>
<html>
<style>
  form {
    border: 3px solid #f1f1f1;
  }
  
  body{
      background-image: image\sample_gate.jpg;

  }

  input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
  }
  button {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 10%;
  }
  /* Change styles for span and cancel button on extra small screens */
  @media screen and (max-width: 300px) {
    span.psw {
      display: block;
      float: none;
    }
  }
</style>
<body >
<img src="resource/static/image/sample_gates.jpg",style="max-width: 100%;
    max-height: 100%;">
<h2>Login Form</h2>

<form action="/login" method="post">


  <div>
    <input type="text" placeholder=" Email ID" name="emailId" required>

    <input type="password" placeholder="Password" name="password" required>

    <button type="submit">Login</button>
    <input type="checkbox" checked="checked"> Remember me
  </div>

</form>
<form action="/signup">
  <button type="submit" >Sign Up</button>
</form>
</body>
</html>
