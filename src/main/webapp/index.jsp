<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome to the Workout Login</title>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("Background.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

* {
  box-sizing: border-box;
}

/* Add styles to the form container */
.container {
  margin: 0;
  max-width: 300px;
  border: 1px solid #73AD21;
  padding: 10px;
  text-align: center;
  position:fixed;
  top: 50%;
  left: 50%;
  width:30em;
  height:16em;
  margin-top: -9em; /*set to a negative number 1/2 of your height*/
  margin-left: -11em; /*set to a negative number 1/2 of your width*/
  
}

/* Full-width input fields */
input[type=text], input[type=email],input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=email]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btnr {
  color: black;
  padding: 8px 11px;
  border: none;
  cursor: pointer;
  width: 40%;
  opacity: 0.9;
  text-align: center;
}

.btnr:hover {
  opacity: 1;
}

</style>
</head>
<body>

<div class="bg" align="center">
  <form name="workout" class="container" >
   
  <form id="login-form"> 
            <label for="email"><font color="white"><b>Email / User Name</b></font></label>
            <input id="userName" type="text" placeholder="Enter Email / User Name" value=""/>
            <label for="password"><font color="white"><b>Password</b></font></label>
            <input id="userPw" type="password" placeholder="Enter Password" value=""/>
            <input id="login_btn" type="reset" value="Login" class="btnr" onClick="check()"/> <input type="submit" class="btnr" value="Sign Up" formaction="Signup.jsp"/>
       </form>
  </div>
  </div>
</form>
<script type="text/javascript">
function check() {

    // stored data from the register-form
    var storedName = localStorage.getItem('email');
    var storedPw = localStorage.getItem('password');

    // entered data from the login-form
    var userName = document.getElementById('userName');
    var userPw = document.getElementById('userPw');

    // check if stored data from register-form is equal to data from login form
   if(userName.value == storedName && userPw.value == storedPw) {
	  /* window.open("work.html"); */
	   window.location.href= ('work.html');
    }else {
        alert('Invalid Credentials');
        
    }
}
 </script>
</body>
</html>