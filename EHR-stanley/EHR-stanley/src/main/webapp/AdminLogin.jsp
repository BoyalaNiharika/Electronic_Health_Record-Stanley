<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.html"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Electronic Health Record-Stanley</title>
	
	
	<style>
		.container{
		    margin-top:0px;
		    padding-top: 300px;
		    margin-right: 300px;
		}
		
		#form {
		    width: 300px;
		    box-shadow:0 0 100px #d5d3d3;
		    margin-top:30px;
		    margin-left:600px ;
		    height: 260px;
		    padding: 30px;
		}
		
		#form h1 {
			margin-top: 15px;
		    margin-bottom: 20px;
		    color: black;
		    font-size: 30px;
		    text-align: center;
		}
		
		#form button {
		    padding: 10px;
		    margin-top: 20px;
			margin-bottom: 10px;		    
			width: 70px;
		    margin-left: 225px;
		    color: white;
		    background-color: rgb(119, 2, 2);
		    border: none;
		    border-radius: 4px;
		}
		
		.input-control {
			margin-top:25px;
		    display: flex;
		    font-size: 15px;
		    flex-direction: column;
		}
		
		.input-control input {
			margin-top:5px;
		    border: 1px solid #050505;
			border-radius: 5px;
			display: block;
			font-size: 12px;
			padding: 10px;
		
		}
		.input-control .toggle-btn{
			position:absolute;
			margin-top:143px;
			right:610px;
			top:50%;
			transform:translate(-50%);
		}
	
		
		.input-control input:focus {
		    outline: 0;
		}
		
		.input-control.success input {
		    border-color: #04d279;
		}
		
		.input-control.error input {
		    border-color: #e90a36;
		}
		
		.input-control .error {
		    color: #e90a36;
		    font-size: 9px;
		    height: 13px;
		}
		#form button a{
		    text-decoration: none;
		    color: white;
		}
	
	</style>	
	
	<script type="text/javascript">
	  window.addEventListener("load", function() {
	  var form = document.getElementById("form");

	  form.addEventListener("submit", function(event) {
	    event.preventDefault(); // Prevent form submission

	    var usernameInput = document.getElementById("username");
	    var passwordInput = document.getElementById("password");


	    var username = usernameInput.value;
	    var password = passwordInput.value;
	    
	    var admin = /^admin$/;

	   if(username=="" && password==""){
		   alert("User Name and Password can not be Empty");
			usernameInput.focus();
	      	return; 
	   }
	    if (username==""){
			alert("User Name can not be Empty");
			usernameInput.focus();
	      	return;

		}else if (!username.match(admin)) {
	      	alert("User does not match!");
	     	usernameInput.focus();
	      	return;
	    }
	    
	    // Password validation
	    if (password==""){
			alert("Password can not be Empty");
			passwordInput.focus();
	      	return;
		}else if (!password.match(admin)) {
	      	alert("password does not match!");
	     	usernameInput.focus();
	      	return;
	    }

	    // If validation passes, submit the form
	    window.location.href = "AdminMainPage.jsp";
	  });
	});



</script>
	
		

</head>
<body>
    <div class="container">
       <form id="form" name="forms" method = "post">
            <h1>ADMIN LOGIN</h1>            
            <div class="input-control">
                <label for="username"><b>User Name : </b></label>
                <input id="username" name="username" type="text">
            </div>
            
            <div class="input-control">
                <label for="password"><b>Password : </b></label>
                <input id="password"name="password" type="password">

            </div>
            <button type="submit" name="submit">Login</button>
            
        </form>
    </div>
</body>
</html>