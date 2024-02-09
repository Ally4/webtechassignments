<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register</title>
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css"></link>
</head>

<body style="background:#e2e8f1;">
 <div class="container">
 <div class="d-flex justify-content-center">
 <div style="margin-top: 10%;" class="card col-10 col-sm-10 col-md-4">
 <div class="card-body">
 <h4 class="text-center my-4">Register</h4>

 <form>
 <div class="mb-3">
  <label for="email" class="form-label">Name</label>
  <input type="text" name="name" id="name" class="form-control" placeholder="Write here your name" required>
</div>

 <div class="mb-3">
  <label for="email" class="form-label">Email</label>
  <input type="email" name="email" id="email" class="form-control" placeholder="Wrote he your email" required>
</div>

<div class="mb-3">
  <label for="password" class="form-label">Password</label>
  <input type="password" name="password" id="password" class="form-control" placeholder="Write here your password" required>
</div>

<div class="mb-3"><button type="button" onclick="register()" class="col-md-12 btn btn-md btn-primary">Register</button></div>
<div class="text-center my-4"><small>Already have an account? <a href="login.jsp">Login</a></small></div>
</form>



  <script>
 function register(){
	 let name = document.getElementById("name").value;
	 let email = document.getElementById("email").value;
	 let password = document.getElementById("password").value;
	 if(!name){
		alert("Put in the name!")
	 }
	 else if(!email){
		alert("Put in the email!")
	 }
	 else if(!password){
		alert("Put in the password!")
	 }
	 else{
	    alert("You have registered successfully")
	 }
	 
 }

 </script>
</body>
</html>
