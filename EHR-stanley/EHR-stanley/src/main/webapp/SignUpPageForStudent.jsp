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
	    var rollnumberInput = document.getElementById("rollnumber");
	    var passwordInput = document.getElementById("password");
	    var password2Input = document.getElementById("password2");


	    var fullname = fullnameInput.value;
	    var rollnumber = rollnumberInput.value;
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
	    var rollnumberFormat = /^1606\d{8}$/
	    if (rollnumber==""){
			alert("Roll Number can not be Empty");
		    rollnumberInput.focus();
	      	return;

		}else if (!rollnumber.match(rollnumberFormat)) {
	      	alert("Provide a valid Roll number that start with 1606 and 12 digit long!");
	     	rollnumberInput.focus();
	      	return;
	    }
	    // Password validation
	    if (password==""){
			alert("Password can not be Empty");
			passwordInput.focus();
	      	return;
		}else if(password.length < 8) {
	      alert("Password must be at least 8 characters long");
	      passwordInput.focus();
	      return;
	    }
	    if (password2==""){
			alert("Please confirm your password");
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
      String rollnumber = request.getParameter("rollnumber");
  


      try {
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehrstanley","root","niharika");
        PreparedStatement ps = con.prepareStatement("INSERT INTO studentregistrationdetails VALUES (?, ?, ?)");
        ps.setString(1, fullname);
        ps.setString(2, rollnumber);
        ps.setString(3, password);
  

        // Execute query
        int i= ps.executeUpdate();
        if(i>0)
        {
        	response.sendRedirect("LoginPageForStudent.jsp");
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
        <form id="form" action="SignUpPageForStudent.jsp" method="post">
        
            <h1>Sign Up</h1>
            <div class="input-control">
                <label for="fullname">Full Name :</label>
                <input id="fullname" name="fullname" type="text">
				<br>
            </div>
            <div class="input-control">
                <label for="rollnumber">Roll Number : </label>
                <input id="rollnumber" name="rollnumber" type="text">
				<br>
            </div>
            <div class="input-control">
                <label for="password">Password : </label>
                <input id="password"name="password" type="password">
				<br>
            </div>
            <div class="input-control">
                <label for="password2"> Confirm Password:</label>
                <input id="password2"name="password2" type="password">
				<br>
            </div>
            <a href="LoginPageForStudent.jsp">Already have an account</a>
            <button type="submit">Sign up</button>
            
        </form>
    </div>
	

</body>
</html>