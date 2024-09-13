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
padding-top: 300px;
text-align:center;
}
#btn1{
margin:50px;
position:center;
margin-top:30px;
}
#btn2{
margin:50px;
margin-left:40px;
margin-top:30px;
}
#btn3{
margin:50px;
margin-left:40px;

margin-top:30px;
}
button {
    padding: 10px;
    width: 300px;
    color: white;
    background-color: rgb(119, 2, 2);
    border: none;
    border-radius: 4px;
}
button a{
    text-decoration: none;
    font-size: 20px;
    color: white;
}


</style>
</head>
<body>
<div class="container">
	<button type="submit" id="btn1"><a href = "viewStudentData.jsp"><b>View Student Data</b></a></button><br>
    <button type="submit" id="btn2"><a href = "viewFacultyData.jsp"><b>View Faculty Data</b></a></button><br>
    <button type="submit" id="btn3"><a href = "viewNonTeachingFacultyData.jsp"><b>View Non-Teaching Faculty Data</b></a></button>
   </div>     
</body>
</html>