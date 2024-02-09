<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Reset the password</title>
 <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css"></link>
</head>

<body style="background:#6d8ab4;">
 <div class="container">
 <div class="d-flex justify-content-center">
 <div style="margin-top: 10%;" class="card col-10 col-sm-10 col-md-4">
 <div class="card-body">
 <h4 class="text-center  my-4">Password reset</h4>

 <form>
<div class="mb-3">
  <label for="password" class="form-label">New Password</label>
  <input type="password" name="new_password" id="new_password" class="form-control" placeholder="Put the new password" required>
</div>
<div class="mb-3">
  <label for="password" class="form-label">Confirm Password</label>
  <input type="password" name="confirm_password" id="confirm_password" class="form-control" placeholder="Confirm the new password" required>
</div>
<div class="mb-3"><button type="button" onclick="resetPassword()" class="col-md-12 btn btn-md btn-primary">Submit</button></div>
<div class="text-center my-4"><small>Go back to <a href="login.jsp">Login</a></small></div>
</form>



 </div>
 </div>


  <script>
 function resetPassword(){
	 let new_password = document.getElementById("new_password").value;
	 let confirm_password = document.getElementById("confirm_password").value;
	 if(!new_password){
		 alert("Put the new password!")
	 }
	 else if(!confirm_password){
	     alert("Confirm the password!")
     }
	 else if(new_password != confirm_password){
		 alert("The passwords are not matching!")
	 }
	 else{
		alert("The password have been resetted successfully!")
	 }
 }

 </script>
 
</body>
</html>
