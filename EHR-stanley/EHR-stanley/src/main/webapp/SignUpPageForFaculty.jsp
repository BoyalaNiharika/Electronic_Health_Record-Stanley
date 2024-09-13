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
    padding-top: 260px;
    margin-right: 300px;
}

#form {
     width: 350px;
    box-shadow:0 0 100px #d5d3d3;
    margin-top:0px;
    margin-left:550px;
    height: 400px;
    padding: 30px;
}

#form h1 {
    color: black;
    font-size: 30px;
    margin-bottom:20px;
    text-align: center;
}

#form button {
    padding: 9px;
    margin-left:280px;
    width: 70px;
    color: white;
    background-color: rgb(119, 2, 2);
    border: none;
    border-radius: 4px;
}
.input-control {
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
margin-top:170px;
right:560px;
top:50%;
transform:translate(-50%);
}

.input-control .toggle-btn1{
position:absolute;
margin-top:245px;
right:560px;
top:50%;
transform:translate(-50%);
}

#form button a{
    text-decoration: none;
    color: white;
}
#form a{
	    text-decoration: none;
}


</style>
<script type="text/javascript">
window.addEventListener("load", function() {
	  var form = document.getElementById("form");

	  form.addEventListener("submit", function(event) {
	    event.preventDefault(); // Prevent form submission

	    var fullnameInput = document.getElementById("fullname");
	    var emailInput = document.getElementById("email");
	    var passwordInput = document.getElementById("password");
	    var password2Input = document.getElementById("password2");


	    var fullname = fullnameInput.value;
	    var email = emailInput.value;
	    var password = passwordInput.value;
	    var password2 = password2Input.value;


	   
	    var fullnameFormat =/^[a-zA-Z\s]+$/;
	    if (fullname==""){
			alert("Full Name can not be Empty");
			fullnameInput.focus();
	      	return;

		}else if (!fullname.match(fullnameFormat)) {
	      	alert("Provide a valid Full Name with only characters!");
	     	fullnameInput.focus();
	      	return;
	    }
        var emailFormat=/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    if (email==""){
			alert("Email can not be Empty");
		    emailInput.focus();
	      	return;

		}else if (!email.match(emailFormat)) {
	      	alert("Provide a valid Email id!");
	     	emailInput.focus();
	      	return;
	    }
	    // Password validation
	    if (password==""){
			alert("Password can not be Empty");
			passwordInput.focus();
	      	return;
		}else if(password.length < 8) {
	      alert("Password must be at least 9 characters long");
	      passwordInput.focus();
	      return;
	    }
	    if (password2==""){
			alert("Please conform your password");
	     	password2Input.focus();
	      	return;
		}else if (password2!=password) {
	      	alert("Password does not match!");
	     	password2Input.focus();
	      	return;
	    }

	    // If validation passes, submit the form
	    form.submit();
	  });
	});



</script>


</head>
<body>

<%@ page import="java.sql.*" %>
  	<%
      // Get form input data
      String fullname = request.getParameter("fullname");
      String password = request.getParameter("password");
      String email = request.getParameter("email");
  


      try {
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehrstanley","root","niharika");
        PreparedStatement ps = con.prepareStatement("INSERT INTO staffregistrationdetails VALUES (?, ?, ?)");
        ps.setString(1, fullname);
        ps.setString(2, email);
        ps.setString(3, password);
  

        // Execute query
        int i= ps.executeUpdate();
        if(i>0)
        {
        	response.sendRedirect("LoginPageForFaculty.jsp");
        }
      } 
      catch (Exception e) {
        // Display error message
        %>
        <script>
                alert("An error occurred: <%= e.getMessage() %>");
            </script>
       //e.getMessage();
 <%
        //out.println(e.getMessage());
      }
    %>


	<div class="container">	
        <form id="form" action="SignUpPageForFaculty.jsp" method="post">
        
            <h1>Sign Up</h1>
            <div class="input-control">
                <label for="fullname">Full Name :</label>
                <input id="fullname" name="fullname" type="text">
            </div>
            <br>
            <div class="input-control">
                <label for="email">Email : </label>
                <input id="email" name="email" type="text">
            </div>
            <br>
            <div class="input-control">
                <label for="password">Password : </label>
                <input id="password"name="password" type="password">
            </div>
            <br>
            <div class="input-control">
                <label for="password2">Password again :</label>
                <input id="password2"name="password2" type="password">
            </div>
            <br>
            <a href="LoginPageForFaculty.jsp">Already have an account</a>
            <button type="submit">Sign up</button>
            
        </form>
    </div>
	

</body>
</html>