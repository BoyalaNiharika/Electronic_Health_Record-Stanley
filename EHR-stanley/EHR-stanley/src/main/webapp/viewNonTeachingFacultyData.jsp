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
	margin-start:10px;
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
table{widht:1700px;text-align:left;overflow:scroll;border-collapse:collapse;cursor:pointer;}
thead{color:white;text-align:center;font-size:1.1em;padding:10px;}
thead tr{background:rgb(153, 15, 15)}
th{width:300px;padding:20px;padding-left:50px;padding-right:50px;}
tbody tr{background:white;border-bottom:1px;solid:#ccc;}
td{width:200px;height:40px;text-align:center;}
tbody tr:nth-child(odd){background:#f2f2f2;}
/*body tr:hover{background:#b8e994;color:white;}*/

th:nth-child(1){width:100px;z-index:1;background:inherit;}
td:nth-child(1){box-shadow:5px 0 3px -2px #ccc;width:180px;text-align:center;position:fixed;position:absolute;z-index:1;background:inherit;font-weight:bold;}
</style> 
</head>
<body>
<div class="container">
	<form class="form" id="form" action=viewNonTeachingFacultyData.jsp>
   		<center><h3><b>Search for Details that you are looking for..</h1></b></center>           	
        <div class="input-control">
        	<input type="text" name="email" placeholder="Email Id"/>	&nbsp&nbsp&nbsp	
        	<input type="text" name="FullName" placeholder="Full Name">&nbsp&nbsp&nbsp
        	<input type="text" name="how_often_donatedblood" placeholder="How often you Donate Blood">&nbsp&nbsp&nbsp
        	<input type="text" name="year_of_donatedblood" placeholder="Blood Donated Month">&nbsp&nbsp&nbsp
       	</div>
		<div class="choose">
        <select name ="categories" id="categories">
	        <option value="" selected>Categories</option> 
	        <option value="Lab Incharge">Lab Incharge</option> 
	        <option value="Examination Branch">Examination Branch</option> 
	        <option value="Placement Branch">Placement Branch</option> 
	       	<option value="Librarian">Librarian</option> 
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
	    <select name ="Diabetic" id = "Diabetic">
        	<option value="" selected>Diabetic</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
         &nbsp&nbsp&nbsp	
        <select name ="BloodPressure" id="BloodPressure">
        	<option value="" selected>Blood Pressure</option> 
        	<option value="Yes">Yes</option> 
        	<option value="No">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="Accident" id = "Accident">
        	<option value="" selected>Accident</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="Hospitalized" id = "Hospitalized">
        	<option value="" selected>Hospitalized</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="EyeSight" id = "EyeSight">
        	<option value="" selected>Eye Sight</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="Asthama" id = "Asthama">
        	<option value="" selected>Asthama</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="categoriess" id = "categoriess">
        	<option value="" selected>categoriess</option> 
            <option value="Lab Incharge">Lab Incharge </option> 
            <option value="no">No</option> 
        </select>
        </div>
		<div class="chooses">       	
        &nbsp&nbsp&nbsp	
        <select name ="GastricProblem" id = "GastricProblem">
        	<option value="" selected>Gastric Problem</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="Acidity" id = "Acidity">
        	<option value="" selected>Acidity</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp
        <select name ="BloodTransfusion" id = "BloodTransfusion">
        	<option value="" selected>Blood Transfusion</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="FrequentCold" id = "FrequentCold">
        	<option value="" selected>Frequent Cold</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="CardioVascular" id = "CardioVascular">
        	<option value="" selected>CardioVascular</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	
        <select name ="Ecosprin" id = "Ecosprin">
        	<option value="" selected>Ecosprin</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp
         <select name ="Arthritis" id = "Arthritis">
        	<option value="" selected>Arthritis</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp
        </div>
      	
      	<div class="choice">
      	<select name ="DenotedBloodBefore" id = "DenotedBloodBefore">
        	<option value="" selected>Donated Blood Before</option> 
            <option value="yes">Yes </option> 
            <option value="no">No</option> 
        </select>
        &nbsp&nbsp&nbsp	  
        <select name ="TestedCovidPositive" id = "TestedCovidPositive">
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
        &nbsp&nbsp&nbsp
        <select name ="VaccineDoses" id = "VaccineDoses">
        	<option value="" selected>No. of Doses Taken </option> 
            <option value="1">1 </option> 
            <option value="2">2</option> 
           	<option value="3">3</option> 
        </select>
        &nbsp&nbsp&nbsp
        <select name ="TypeofCovidVaccine" id="TypeofCovidVaccine">
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
<form class="forms" id="forms" action=viewNonTeachingFacultyData.jsp>
<div>
<table>
<thead>
<tr>
<th>EmailId</th>
<th>FullName</th>
<th>categories </th>
<th>BloodGroup </th>
<th>Diabetic </th>
<th>BloodPressure </th>
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
<th>TestedCovidPositive </th>
<th>Vaccinated </th>
<th>VaccineDoses </th>
<th>TypeofCovidVaccine </th>
<th>GastricProblem </th>
<th>Acidity </th>
<th>DenotedBloodBefore </th>
<th>How_often_DonatedBlood </th>
<th>Year_of_DonatedBlood </th>
<th>CardioVascular </th>
<th>CardioProblem </th>
<th>Ecosprin </th>
<th>Medication </th>
<th>Arthritis </th>
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
	String email = request.getParameter("email");
	String FullName = request.getParameter("FullName");
	String how_often_donatedblood = request.getParameter("how_often_donatedblood");
	String year_of_donatedblood = request.getParameter("year_of_donatedblood");
	String bloodgroup = request.getParameter("bloodgroup");
	String Diabetic = request.getParameter("Diabetic");
	String BloodPressure = request.getParameter("BloodPressure");
	String Accident = request.getParameter("Accident");
	String Hospitalized = request.getParameter("Hospitalized");
	String EyeSight = request.getParameter("EyeSight");
	String Asthama = request.getParameter("Asthama");
	String categories = request.getParameter("categories");
	String GastricProblem = request.getParameter("GastricProblem");
	String Acidity = request.getParameter("Acidity");
	String BloodTransfusion = request.getParameter("BloodTransfusion");
	String FrequentCold = request.getParameter("FrequentCold");
	String CardioVascular = request.getParameter("CardioVascular");
	String Ecosprin = request.getParameter("Ecosprin");
	String Arthritis = request.getParameter("Arthritis");
	String DonotedBloodBefore = request.getParameter("DonotedBloodBefore");
	String TestedCovidPositive = request.getParameter("TestedCovidPositive");
	String vaccinated = request.getParameter("vaccinated");
	String VaccineDoses = request.getParameter("VaccineDoses");
	String TypeofCovidVaccine = request.getParameter("TypeofCovidVaccine");




	//String sqlStr = "select * from studentapplicationdetails where rollnumber='"+RollNumber+"' or fullname = '"+FullName+"' or branch = '"+Branch+"' or section = '"+Section+"' or bloodgroup = '"+BloodGroup+"' or diabetic = '"+Diabetic+"' or accident = '"+accident+"'  or hospitalized = '"+hospitalized+"'  or eyesight = '"+eyesight+"'  or asthama = '"+asthama+"'  or gastricproblem = '"+gastricproblem+"' or frequentcold='"+frequentcold+"' or bloodtranfusion = '"+bloodtranfusion+"' or acidity = '"+acidity+"' or denotedbloodbefore = '"+denotedbloodbefore+"'  or testedcovidpositive = '"+testedcovidpositive+"'or how_often_donatedblood = '"+how_often_donatedblood+"' or year_of_donatedblood = '"+year_of_donatedblood+"' or typeofvaccine = '"+TypeofVaccine+"'  or vaccinated = '"+vaccinated+"' ";
	//String sqlStr = "select * from facultyapplicationdetails where email='"+email+"' or fullname = '"+FullName+"' or how_often_donatedblood='"+how_often_donatedblood+"' or year_of_donatedblood = '"+year_of_donatedblood+"' or branch = '"+Branch+"'or bloodgroup = '"+bloodgroup+"' or diabetic = '"+Diabetic+"' or bloodpressure = '"+BloodPressure+"'  or accident = '"+Accident+"'  or hospitalized = '"+Hospitalized+"'  or eyesight = '"+EyeSight+"' or asthama='"+Asthama+"' or gastricproblem = '"+GastricProblem+"' or acidity = '"+Acidity+"' or bloodtranfusion = '"+BloodTranfusion+"' or frequentcold = '"+FrequentCold+"' or cardiovascular = '"+CardioVascular+"' or ecosprin = '"+Ecosprin+"' or arthritis = '"+Arthritis+"' or denotedbloodbefore = '"+DenotedBloodBefore+"' or testedcovidpositive = '"+TestedCovidPositive+"' or vaccinated = '"+vaccinated+"' or vaccinedoses = '"+VaccineDoses+"' or typeofcovidvaccine = '"+TypeofCovidVaccine+"'";
		String sqlStr = "select * from nonteachingfacultyapplicationdetails where bloodgroup='"+bloodgroup+"' or categories='"+categories+"' or email = '"+email+"' or accident='"+Accident+"' or diabetic = '"+Diabetic+"' or fullname = '"+FullName+"'or bloodpressure = '"+BloodPressure+"' or hospitalized = '"+Hospitalized+"'  or eyesight = '"+EyeSight+"' or asthama = '"+Asthama+"' or categories = '"+categories+"'  or gastricproblem = '"+GastricProblem+"' or frequentcold='"+FrequentCold+"' or bloodtransfusion = '"+BloodTransfusion+"' or acidity = '"+Acidity+"' or donotedbloodbefore = '"+DonotedBloodBefore+"'  or testedcovidpositive = '"+TestedCovidPositive+"' or typeofcovidvaccine = '"+TypeofCovidVaccine+"'or vaccinated = '"+vaccinated+"'or vaccinedoses = '"+VaccineDoses+"'or CardioVascular = '"+CardioVascular+"'or Ecosprin = '"+Ecosprin+"'or Arthritis = '"+Arthritis+"'";

	rs=stmt.executeQuery(sqlStr);
	// rs=ps.executeQuery(query);
	 while(rs.next()){
		 %>
		 <tr>
		 	<td><%=rs.getString(8)%></td>
	        <td><%=rs.getString(2)%></td>
	       	<td><%=rs.getString(10)%></td>
	        <td><%=rs.getString(14)%></td>
	        <td><%=rs.getString(15)%></td>
	        <td><%=rs.getString(16)%></td>
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
	        <td><%=rs.getString(28)%></td>
	        <td><%=rs.getString(29)%></td>
	        <td><%=rs.getString(30)%></td>
	        <td><%=rs.getString(31)%></td>
	        <td><%=rs.getString(32)%></td>
	        <td><%=rs.getString(33)%></td>
	        <td><%=rs.getString(34)%></td>
	        <td><%=rs.getString(35)%></td>
	        <td><%=rs.getString(36)%></td>
	        <td><%=rs.getString(37)%></td>
	        <td><%=rs.getString(38)%></td>
	        <td><%=rs.getString(39)%></td>
	        <td><%=rs.getString(40)%></td>

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