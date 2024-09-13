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
    color: black;
    font-size: 30px;
    margin-bottom:20px;
    text-align: center;
}

#form button {
    padding: 9px;
    margin-left:230px;
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

.input-control .toggle-btn{
	position:absolute;
	margin-top:38px;
	right:38px;
	top:50%;
	transform:translate(-50%);
}


.input-control input {
	margin-top:5px;
    border: 1px solid #050505;
	border-radius: 5px;
	display: block;
	font-size: 12px;
	padding: 10px;

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

	    var rollnumberInput = document.getElementById("rollnumber");
	    var passwordInput = document.getElementById("password");
	    
	    var rollnumber = rollnumberInput.value;
	    var password = passwordInput.value;

	    if (rollnumber === "" && password === "") {
	        alert("Fields can not be Empty");
	        return false; // Prevent form submission
	      }else if(rollnumber=== "") {
	          alert("Please Enter Roll Number.");
	          return false;
	      }else if(password=== "") {
	          alert("Please Enter Password.");
	          return false; 
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
      String password = request.getParameter("password");
      String rollnumber = request.getParameter("rollnumber");
  


      try {
        // Establish database connection
        Class.forName("com.mysql.cj.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehrstanley","root","niharika");
       Statement stmt=con.createStatement();
       ResultSet set=stmt.executeQuery("select * from studentregistrationdetails");
  
       int flag=0;
       while(set.next())
       {
       	if(rollnumber.equals(set.getString(2)) && password.equals(set.getString(3))){
       		flag=1;
       	}
       }
        if(flag==1)
        {
        	response.sendRedirect("StudentApplicationForm.jsp");
        }
        else{
        	%>
            <script>
                    alert("Student Does not exist!");
                </script>
                <%	
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
        <form id="form" action="LoginPageForStudent.jsp" method="post">
        
            <h1>Login</h1>
            
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
            
            <a href="SignUpPageForStudent.jsp">Create an account</a>
            <button type="submit">Login</button>
            
        </form>
    </div>
	

</body>
</html>