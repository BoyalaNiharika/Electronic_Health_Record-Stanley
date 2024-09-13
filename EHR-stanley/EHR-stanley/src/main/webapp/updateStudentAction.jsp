<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.html"%>

<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Electronic Health Record-Stanley</title>
    
    <style>
body{
height:1950px;
}
.container{
    margin-top:0px;
    padding-top: 300px;
    margin-right: 300px;
}

.form {
    width: 900px;
    box-shadow:0 0 100px #d5d3d3;
    margin-top:10px;
  	margin-right: 300px;
    margin-left: 300px;
    height: 1530px;
    padding: 30px;
    
}

.form h1 {
    color: black;
    font-size: 30px;
    text-align: center;
    margin-bottom:30px;
   	font-family:times new roman;
    
}
fieldset{
	margin-top:10px;
	border-radius:3px;
	margin-left:35px;
	width:800px;
}

legend{
	margin:20px;
	margin-bottom:5px;
	font-family:times new roman;
	
}

.form button {
    padding: 9px;
    margin-top: 20px;
    margin-left:750px;
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
   	margin-bottom:10px;
    flex-direction: row;
   	margin-left:20px;
   	margin-right:100px;
    
}

.input-control input {
	margin-top:-5px;
    border: 1px solid #050505;
	border-radius: 6px;
	margin-bottom:10px;
    font-family:times new roman;
	display: block;
	font-size: 15px;
	padding: 10px;
	width:300px;
	margin-left:10px;

}
.choose{
	margin-top:10px;
	margin-bottom:10px;
}
.chooses{
	margin-top:20px;
	margin-bottom:10px;
}
.choice{
	font-size:15px;
	margin-top:15px;
	margin-left:20px;
	font-family:times new roman;
	font-size: 20px;
}

select{
	width:130px;
	padding:5px;
	font-size:15px;
	margin-left:5px;
	border-radius:10px;
	border-color:black;
}
option{
	font-size:15px;
	text-color:black;
}
#ratio_button{
        padding: 10px 0 0 0;
        margin-top:10px;
        font-size:20px;
        font-family:times new roman;
        margin-left:20px;
}
.form button a{
    text-decoration: none;
    color: white;
}
.form a{
	    text-decoration: none;
}
</style>
 
    

    
</head>
<body>

    <%-- Retrieve updated data from the form and update the database --%>
    <%
        String rollNumber = request.getParameter("rollNumber");

        if (rollNumber != null) {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehrstanley", "root", "niharika");

            String query = "SELECT * FROM studentapplicationdetails WHERE rollnumber = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, rollNumber);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Get existing data from the database
                String age = resultSet.getString("age");
                String weight = resultSet.getString("weight");
                String height = resultSet.getString("height");
                String BloodGroup = resultSet.getString("BloodGroup");
                String Diabetic = resultSet.getString("Diabetic");
                String allergyhistory = resultSet.getString("allergyhistory");
                String accident = resultSet.getString("accident");
                String typeofinjury = resultSet.getString("typeofinjury");
                String hospitalized = resultSet.getString("hospitalized");
                String healthissues = resultSet.getString("healthissues");
                String BloodTransfusion = resultSet.getString("BloodTransfusion");
                String eyesight = resultSet.getString("eyesight");
                String eyepower = resultSet.getString("eyepower");
                String asthama = resultSet.getString("asthama");
                String frequentcold = resultSet.getString("frequentcold");
                String testedcovidpositive = resultSet.getString("testedcovidpositive");
                String vaccinated = resultSet.getString("vaccinated");
                String TypeofVaccine = resultSet.getString("TypeofVaccine");
                String gastricproblem = resultSet.getString("gastricproblem");
                String acidity = resultSet.getString("acidity");
                String DonotedBloodBefore = resultSet.getString("DonotedBloodBefore");
                String how_often_donatedblood = resultSet.getString("how_often_donatedblood");
                String year_of_donatedblood = resultSet.getString("year_of_donatedblood");


                // Display the existing data
    %>
                <div class="container">
        <form class="form" id="form" action="updateStudentData.jsp" method="post">
           	<center><h1><b><u>UPDATE DETAILS</u></h1></b></center>           	
            <fieldset>
				<legend>
                    <h3>
                        Student Health Details
                    </h3>
                 </legend>
                    <input type="hidden" name="rollNumber" value="<%= rollNumber %>">            
                 <div class="input-control">
                <label for="age"><b>Age :</b></label>
                <input id="age" name="age" type="text" value="<%= age %>">
            </div>
            <div class="input-control">
                <label for="weight"><b>Weight :</b></label>
                <input id="weight" name="weight" type="text" value="<%= weight %>">
            </div>
            <div class="input-control">
                <label for="height"><b>Height :</b></label>
                <input id="height"name="height" type="text" value="<%= height %>">
            </div>
            <div class="choice">
                        <label for="BloodGroup"><b>Blood Group :</b></label>
                        <select name ="BloodGroup" id = "BloodGroup">
                        <option value="A+" <%= BloodGroup.equals("A+") ? "selected" : "" %>>A+</option>
                        <option value="A-" <%= BloodGroup.equals("A-") ? "selected" : "" %>>A-</option>
                        <option value="B+" <%= BloodGroup.equals("B+") ? "selected" : "" %>>B+</option>
                        <option value="B-" <%= BloodGroup.equals("B-") ? "selected" : "" %>>B-</option>
                        <option value="O+" <%= BloodGroup.equals("O+") ? "selected" : "" %>>O+</option>
                        <option value="O-" <%= BloodGroup.equals("O-") ? "selected" : "" %>>O-</option>
                        <option value="AB+" <%= BloodGroup.equals("AB+") ? "selected" : "" %>>AB+</option>
                        <option value="AB-" <%= BloodGroup.equals("AB-") ? "selected" : "" %>>AB-</option>

                            </select>                    
            </div>
            <div class="input-control">
                <label for="Diabetic"><b>Are you Diabetic ?</b></label>
                <input id="Diabetic"name="Diabetic" type="text" value="<%= Diabetic %>">
            </div>
            <div class="input-control">
                <label for="allergyhistory"><b>Allergy History :</b></label>
                <input id="allergyhistory"name="allergyhistory" type="text" value="<%= allergyhistory %>">
            </div>
            <div class="input-control">
                <label for="accident"><b>Ever met with an Accident ?</b></label>
                <input id="accident"name="accident" type="text" value="<%= accident %>">
            </div>
            <div class="input-control">
                <label for="typeofinjury"><b>If yes, What type of injury ?</b></label>
                <input id="typeofinjury"name="typeofinjury"type="text" value="<%= typeofinjury %>">
            </div>
            <div class="input-control">
                <label for="hospitalized"><b>were you ever Hospitailzed ?</b></label>
                <input id="hospitalized"name="hospitalized" type="text" value="<%= hospitalized %>">
            </div>
            <div class="input-control">
                <label for="healthissues"><b>If Yes, Regarding which Health Issue ?</b></label>
                <input id="healthissues"name="healthissues" type="text" value="<%= healthissues %>">
            </div>
            <div class="input-control">
                <label for="BloodTransfusion"><b>Have you ever has a Blood Transfusion ?</b></label>
                <input id="BloodTransfusion"name="BloodTransfusion" type="text" value="<%= BloodTransfusion %>">
            </div>
          <div class="input-control">
                <label for="eyesight"><b>Do you have Eye Sight ?</b></label>
                <input id="eyesight"name="eyesight" type="text" value="<%= eyesight %>">
            </div>
          <div class="input-control">
                <label for="eyepower"><b>If yes, How much is the Power?</b></label>
                <input id="eyepower"name="eyepower" type="text" value="<%= eyepower %>">
            </div>
          <div class="input-control">
                <label for="asthama"><b>Do you have Asthama ?</b></label>
                <input id="asthama"name="asthama" type="text" value="<%= asthama %>">
            </div>
          <div class="input-control">
                <label for="frequentcold"><b>Do you suffer with Frequent Cold ?</b></label>
                <input id="frequentcold"name="frequentcold" type="text" value="<%= frequentcold %>">
            </div>
         <div class="input-control">
                <label for="testedcovidpositive"><b>were you tested positive for COVID-19 ?</b></label>
                <input id="testedcovidpositive"name="testedcovidpositive" type="text" value="<%= testedcovidpositive %>">
            </div><div class="input-control">
                <label for="vaccinated"><b>Are you vaccinated for COVID-19 ?</b></label>
                <input id="vaccinated"name="vaccinated" type="text" value="<%= vaccinated %>">
            </div>
           <div class="choice">
           <b>Type of Covid Vaccine :</b>
                        <select name ="TypeofVaccine" id="TypeofVaccine">
                       	<option value="COVAXIN" <%= TypeofVaccine.equals("COVAXIN") ? "selected" : "" %>>COVAXIN</option>
                        <option value="COVISHIELD" <%= TypeofVaccine.equals("COVISHIELD") ? "selected" : "" %>>COVISHIELD</option>
                        <option value="Sputnik-V" <%= TypeofVaccine.equals("Sputnik-V") ? "selected" : "" %>>Sputnik-V</option>
                        <option value="COVOVAX" <%= TypeofVaccine.equals("COVOVAX") ? "selected" : "" %>>COVOVAX</option>
                        <option value="ZyCov-D" <%= TypeofVaccine.equals("ZyCov-D") ? "selected" : "" %>>ZyCov-D</option>
                        <option value="None" <%= TypeofVaccine.equals("None") ? "selected" : "" %>>None</option>
                        <option value="Others" <%= TypeofVaccine.equals("Others") ? "selected" : "" %>>Others</option>
                        </select>
          </div>
          <div class="input-control">
                <label for="gastricproblem"><b>Do you have Gastric problem ?</b></label>
                <input id="gastricproblem"name="gastricproblem" type="text" value="<%= gastricproblem %>">
            </div><div class="input-control">
                <label for="acidity"><b>Do you have Acidity ?</b></label>
                <input id="acidity"name="acidity" type="text" value="<%= acidity %>">
            </div><div class="input-control">
                <label for="DonotedBloodBefore"><b>Do you ever donated Blood before ?</b></label>
                <input id="DonotedBloodBefore"name="DonotedBloodBefore" type="text" value="<%= DonotedBloodBefore %>">
            </div>
          <div class="input-control">
                <label for="how_often_donatedblood"><b>If yes, How often ?</b></label>
                <input id="how_often_donatedblood"name="how_often_donatedblood" type="text" value="<%= how_often_donatedblood %>">
            </div>
            <div class="input-control">
                <label for="year_of_donatedblood"><b>If yes, When did you Donated this Year ?</b></label>
                <input id="year_of_donatedblood"name="year_of_donatedblood" type="text" value="<%= year_of_donatedblood %>">
            </div>
            <br>
            </fieldset>
            <button type="submit"><b>Submit</b></button>
        </form>
    </div>
    <%
            } else {
            	%>
                <script>
                        alert("Student Not Found");
                    </script>
                    <%	           
                    }

            // Close resources
            resultSet.close();
            preparedStatement.close();
            connection.close();
        }
    %>
    
     
    
</body>
</html>
