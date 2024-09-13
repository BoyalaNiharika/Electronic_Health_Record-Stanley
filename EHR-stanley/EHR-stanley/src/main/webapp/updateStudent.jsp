<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.html"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electronic Health Record-Stanley</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


<style>

.container{
    margin-top:0px;
    padding-top: 320px;
    margin-right: 300px;
}

#form {
    width: 300px;
    box-shadow:0 0 100px #d5d3d3;
    margin-top:0px;
    margin-left:600px;
    height: 240px;
    padding: 30px;
}

#form h1 {
    color: black;
    font-size: 30px;
    margin-top:30px;
    margin-bottom:30px;
    text-align: center;
}

#form button {
    padding: 9px;
    margin-left:200px;
    margin-top:15px;
    width: 100px;
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

	    var rollnumberInput = document.getElementById("rollnumber");


	    var rollnumber = rollnumberInput.value;
	    
	    var rollnumberFormat = /^1606\d{8}$/
	    if (rollnumber==""){
			alert("Please Enter Roll Number which you want to Update Health Details");
		    rollnumberInput.focus();
	      	return;

		}else if (!rollnumber.match(rollnumberFormat)) {
	      	alert("Provide a valid Roll Number that start with 1606 and 12 digit long!");
	     	rollnumberInput.focus();
	      	return;
	    }
	    // Password validation
	    
	    // If validation passes, submit the form
	    form.submit();
	  });
	});



</script>


</head>
<body>
	<div class="container">	
        <form id="form" action="updateStudentAction.jsp" method="post">
        
    		<h1>Update Data</h1>
            <div class="input-control">
                <label for="rollNumber">Roll Number : </label>
                <input id="rollnumber" name="rollNumber" type="text">
				<br>
            </div>
            <button type="submit">Find Student</button>
            
        </form>
    </div>
	

</body>
</html>