<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electronic Health Record-Stanley</title>

<style>
.container{
    padding: 15px;
    
}


.form h1 {
    color: black;
    font-size: 30px;
    text-align: center;
    margin-bottom:30px;
   	font-family:times new roman;
    
}

.form button {
    padding: 9px;
    width: 70px;
    color: white;
    background-color: rgb(119, 2, 2);
    border: none;
    border-radius: 4px;
}

.input-control {
	margin-top:15px;
    display: flex;
    color: black;
    font-family:times new roman;
    font-size: 20px;
    margin-bottom:15px;
    flex-direction: row;
    
}

.input-control input {
	margin-top:10px;
    border: 1px solid #050505;
	border-radius: 6px;
    font-family:times new roman;
	display: block;
	font-size: 15px;
	padding: 10px;
	width:200px;

}
.choose{
	margin-top:10px;
	margin-bottom:15px;
	
}
.chooses{
	margin:-15px;
	margin-top:10px;
	margin-bottom:15px;
}
.choose select{
	width:124px;
	font-family:times new roman;
	padding:9px;
	font-size:15px;
	border-radius:6px;
	border-color:black;
}
.choice{
	margin-top:10px;
	margin-bottom:15px;
}
.choice select{
	width:210px;
	font-family:times new roman;
	padding:9px;
	font-size:15px;
	border-radius:6px;
	border-color:black;
}

.chooses select{
	width:178px;
	font-family:times new roman;
	padding:9px;
	font-size:15px;
	border-radius:6px;
	border-color:black;
}
option{
	font-size:15px;
	text-color:black;
}
.form button a{
    text-decoration: none;
    color: white;
}
.form a{
	    text-decoration: none;
}


    .forms th, td {
        border: 1px solid white;
    }
.forms div{margin-left:20px;width:95%;overflow-Y:scroll;overflow-x:scroll;}
table{widht:1600px;text-align:left;overflow:scroll;border-collapse:collapse;cursor:pointer;}
thead{color:white;text-align:center;font-size:1.1em;padding:10px;}
thead tr{background:rgb(153, 15, 15)}
th{width:200px;padding:20px;padding-left:30px;padding-right:30px;}
tbody tr{background:white;border-bottom:1px;solid:#ccc;}
td{width:200px;height:40px;text-align:center;}
tbody tr:nth-child(odd){background:#f2f2f2;}
/*body tr:hover{background:#b8e994;color:white;}*/

th:nth-child(1){width:100px;z-index:1;background:inherit;}
td:nth-child(1){box-shadow:5px 0 3px -2px #ccc;width:130px;text-align:center;position:fixed;position:absolute;z-index:1;background:inherit;font-weight:bold;}

</style> 

</head>
<body>
<div class="container">
	<form class="form" id="form" action=viewStudentData.jsp>
   		<center><h3><b>Search for Details that you are looking for..</h1></b></center>           	
        <div class="input-control">
        	<input type="text" name="RollNumber" placeholder="Roll Number"/>	&nbsp&nbsp&nbsp	
        	<input type="text" name="FullName" placeholder="Full Name">&nbsp&nbsp&nbsp
        	<input type="text" name="how_often_donatedblood" placeholder="How often you Donate Blood">&nbsp&nbsp&nbsp
        	<input type="text" name="year_of_donatedblood" placeholder="Blood Donated Month">&nbsp&nbsp&nbsp
        	
       	</div>
		<div class="choose">
        <select name ="Branch" id="Branch">
        	<option value="" selected>Branch</option> 
            <option value="AI&DS">AI&DS</option> 
            <option value="CME">CME</option> 
            <option value="CSE">CSE</option> 
            <option value="ECE">ECE</option> 
            <option value="EEE">EEE</option> 
            <option value="IT">IT</option> 
        </select> 
        &nbsp&nbsp&nbsp	
        <select name ="Section" id="Section">
        	<option value="" selected>Section</option> 
        	<option value="A">A</option> 
        	<option value="B">B</option> 
            <option value="C">C</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="bloodgroup" id = "bloodgroup">
        	<option value="" selected>Blood Group</option> 
            <option value="A+">A+</option> 
            <option value="A-">A-</option> 
            <option value="B+">B+</option>
			<option value="B-">B-</option> 
            <option value="O+">O+</option> 
			<option value="O-">O-</option>
			<option value="AB+">AB+</option> 
            <option value="AB-">AB-</option>  
        </select>
        &nbsp&nbsp&nbsp	
	    <select name ="Diabetic" id = "diabetic">
        	<option value="" selected>Diabetic</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="accident" id = "accident">
        	<option value="" selected>Accident</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        </div>
		<div class="chooses">       
        &nbsp&nbsp&nbsp	
        <select name ="hospitalized" id = "hospitalized">
        	<option value="" selected>Hospitalized</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="eyesight" id = "eyesight">
        	<option value="" selected>Eye Sight</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="asthama" id = "asthama">
        	<option value="" selected>Asthama</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="gastricproblem" id = "gastricproblem">
        	<option value="" selected>Gastric Problem</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="acidity" id = "acidity">
        	<option value="" selected>Acidity</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp
        <select name ="bloodtransfusion" id = "bloodtransfusion">
        	<option value="" selected>Blood Transfusion</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="frequentcold" id = "frequentcold">
        	<option value="" selected>Frequent Cold</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        
        </div>
      	
      	<div class="choice">
      	<select name ="donotedbloodbefore" id = "donotedbloodbefore">
        	<option value="" selected>Donated Blood Before</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	  
        <select name ="testedcovidpositive" id = "testedcovidpositive">
        	<option value="" selected>Tested Positive for COVID-19</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp
                <select name ="vaccinated" id = "vaccinated">
        	<option value="" selected>Vaccinated for COVID-19</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        <select name ="TypeofVaccine" id="vaccine">
        	<option value="" selected>Vaccine</option> 
            <option value="COVAXIN">COVAXIN</option> 
            <option value="COVISHIELD">COVISHIELD</option> 
            <option value="Sputnik-V">Sputnik-V</option> 
           	<option value="COVOVAX">COVOVAX</option> 
            <option value="ZyCov-D">ZyCov-D</option>
            <option value="Others">Others</option> 
            <option value="None">None</option>
        </select>                 
        </div>
    <button type="submit"><b>Search</b></button>
	</form>
</div>
<br>
<form class="forms" id="forms" action=viewStudentData.jsp>
<div>
<table>
<thead>
<tr>
<th style="width: 600px;">RollNumber</th>
<th>FullName</th>
<th>Branch </th>
<th>Section </th>
<th>BloodGroup </th>
<th>Diabetic </th>
<th>AllergyHistory</th>
<th>Accident </th>
<th>TypeOfInjury </th>
<th>Hospitalized </th>
<th>HealthIssues </th>
<th>BloodTransfusion </th>
<th>EyeSight </tdh>
<th>EyePower </th>
<th>Asthama </th>
<th>FrequentCold </th>
<th>TypeofVaccine </th>
<th>TestedCovidPositive </th>
<th>Vaccinated </th>
<th>GastricProblem </th>
<th>Acidity </th>
<th>DonotedBloodBefore </th>
<th>HowOftenDonatedBlood </th>
<th>YearOfDonatedBlood </th>
</tr>
<thead>
<tbody>
<%
ResultSet rs=null;
Connection con=null;
Statement stmt = null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3308/ehrstanley","root","niharika");
	//ps=con.prepareStatement(query);
	stmt = con.createStatement();
	String RollNumber = request.getParameter("RollNumber");
	String FullName = request.getParameter("FullName");
	String Branch = request.getParameter("Branch");
	String Section = request.getParameter("Section");
	String bloodgroup = request.getParameter("bloodgroup");
	String Diabetic = request.getParameter("Diabetic");
	String accident = request.getParameter("accident");
	String hospitalized = request.getParameter("hospitalized");
	String eyesight = request.getParameter("eyesight");
	String asthama = request.getParameter("asthama");
	String gastricproblem = request.getParameter("gastricproblem");
	String bloodtransfusion = request.getParameter("bloodtransfusion");
	String frequentcold = request.getParameter("frequentcold");
	String acidity = request.getParameter("acidity");
	String testedcovidpositive = request.getParameter("testedcovidpositive");
	String TypeofVaccine = request.getParameter("TypeofVaccine");
	String vaccinated = request.getParameter("vaccinated");
	String donotedbloodbefore = request.getParameter("donotedbloodbefore");
	String how_often_donatedblood = request.getParameter("how_often_donatedblood");
	String year_of_donatedblood = request.getParameter("year_of_donatedblood");




	//String sqlStr = "select * from studentapplicationdetails where rollnumber='"+RollNumber+"' or fullname = '"+FullName+"' or branch = '"+Branch+"' or section = '"+Section+"' or bloodgroup = '"+BloodGroup+"' or diabetic = '"+Diabetic+"' or accident = '"+accident+"'  or hospitalized = '"+hospitalized+"'  or eyesight = '"+eyesight+"'  or asthama = '"+asthama+"'  or gastricproblem = '"+gastricproblem+"' or frequentcold='"+frequentcold+"' or bloodtranfusion = '"+bloodtranfusion+"' or acidity = '"+acidity+"' or denotedbloodbefore = '"+denotedbloodbefore+"'  or testedcovidpositive = '"+testedcovidpositive+"'or how_often_donatedblood = '"+how_often_donatedblood+"' or year_of_donatedblood = '"+year_of_donatedblood+"' or typeofvaccine = '"+TypeofVaccine+"'  or vaccinated = '"+vaccinated+"' ";
	String sqlStr = "select * from studentapplicationdetails where bloodgroup='"+bloodgroup+"' or rollnumber = '"+RollNumber+"' or accident='"+accident+"' or diabetic = '"+Diabetic+"' or fullname = '"+FullName+"'or branch = '"+Branch+"' or section = '"+Section+"' or hospitalized = '"+hospitalized+"'  or eyesight = '"+eyesight+"'  or asthama = '"+asthama+"'  or gastricproblem = '"+gastricproblem+"' or frequentcold='"+frequentcold+"' or bloodtransfusion = '"+bloodtransfusion+"' or acidity = '"+acidity+"' or donotedbloodbefore = '"+donotedbloodbefore+"'  or testedcovidpositive = '"+testedcovidpositive+"' or typeofvaccine = '"+TypeofVaccine+"' or vaccinated = '"+vaccinated+"'";
	rs=stmt.executeQuery(sqlStr);
	// rs=ps.executeQuery(query);
	 while(rs.next()){
		 %>
		 <tr>
		 	<td><%=rs.getString(5)%></td>
	        <td><%=rs.getString(1)%></td>
	       	<td><%=rs.getString(6)%></td>
	        <td><%=rs.getString(7)%></td>
	        <td><%=rs.getString(15)%></td>
	        <td><%=rs.getString(17)%></td>
	        <td><%=rs.getString(18)%></td>
	        <td><%=rs.getString(19)%></td>
	        <td><%=rs.getString(20)%></td>
	        <td><%=rs.getString(21)%></td>
	        <td><%=rs.getString(22)%></td>
	        <td><%=rs.getString(23)%></td>
	        <td><%=rs.getString(24)%></td>
	        <td><%=rs.getString(25)%></td>
	        <td><%=rs.getString(26)%></td>
	        <td><%=rs.getString(27)%></td>
	       	<td><%=rs.getString(16)%></td>
	        <td><%=rs.getString(28)%></td>
	        <td><%=rs.getString(29)%></td>
	        <td><%=rs.getString(30)%></td>
	        <td><%=rs.getString(31)%></td>
	        <td><%=rs.getString(32)%></td>
	        <td><%=rs.getString(33)%></td>
	        <td><%=rs.getString(34)%></td>
	</tr>
		 
<%
	 }
	 rs.close();
     stmt.close();
     con.close();
 }catch(Exception e){
	 out.print(e);
 }

%>
</tbody>
</table>
</div>
</body>
</html>