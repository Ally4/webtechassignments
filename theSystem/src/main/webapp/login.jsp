<!DOCTYPE html>
<html lang="en">
	
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css"></link>
</head>

<body style="background:#a2abba;">
 <div class="container">
 <div class="d-flex justify-content-center">
 <div style="margin-top: 10%;" class="card col-10 col-sm-10 col-md-4">
 <div class="card-body">
 <h4 class="text-center my-4">Login</h4>

 <form>
 <div class="mb-3">
  <label for="email" class="form-label">Email</label>
  <input type="email" name="email" id="email" class="form-control" placeholder="write here your email" required>
</div>

<div class="mb-3">
  <label for="password" class="form-label">Password</label>
  <input type="password" name="password" id="password" class="form-control" placeholder="Write her the password" required>
  <div class="text-end"><small><a href="resettingThePassword.jsp">Forgot password?</a></small></div>
</div>

<div class="mb-3"><button type="button" onclick="login()" class="col-md-12 btn btn-md btn-primary">Login</button></div>
<div class="text-center my-4"><small>New here? <a href="register.jsp">Register</a></small></div>
</form>

 </div>
 </div>
 </div>
 </div>

 <script>
 function login(){
	 let email = document.getElementById("email").value;
	 let password = document.getElementById("password").value;
	 if(!email){
		 alert("The email is a must!")
	 }else{
		 if(!password){
			 alert("The password is a must!")
		 }
		 else{
			 alert("You have logged in successfully")
		 }
	 }
 }

 </script>
</body>

</html>
