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
height:2400px;
}
.container{
    margin-top:0px;
    padding-top: 300px;
    margin-right: 300px;
}

.form {
    width: 950px;
    box-shadow:0 0 100px #d5d3d3;
    margin-top:10px;
  	margin-right: 200px;
    margin-left: 250px;
    height: 1950px;
    padding: 30px;
    
}

.form h1 {
    color: black;
    font-size: 30px;
    margin-top:10px;
    text-align: center;
    margin-bottom:30px;
   	font-family:times new roman;
    
}
fieldset{
	margin-top:10px;
	border-radius:3px;
	margin-left:35px;
	width:872px;
}

legend{
	margin:20px;
	margin-bottom:5px;
	font-family:times new roman;
	
}

.form button {
    padding: 9px;
    margin-top: 20px;
    margin-left:830px;
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
	width:150px;
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
        String Email = request.getParameter("Email");

        if (Email != null) {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehrstanley", "root", "niharika");

            String query = "SELECT * FROM nonteachingfacultyapplicationdetails WHERE Email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, Email);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Get existing data from the database
                String Age = resultSet.getString("Age");
                String Weight = resultSet.getString("Weight");
                String height = resultSet.getString("height");
                String BloodGroup = resultSet.getString("BloodGroup");
                String Diabetic = resultSet.getString("Diabetic");
                String BloodPressure = resultSet.getString("BloodPressure");
                String AllergyHistory = resultSet.getString("AllergyHistory");
                String Accident = resultSet.getString("Accident");
                String TypeofInjury = resultSet.getString("TypeofInjury");
                String Hospitalized = resultSet.getString("Hospitalized");
                String HealthIssues = resultSet.getString("HealthIssues");
                String BloodTransfusion = resultSet.getString("BloodTransfusion");
                String EyeSight = resultSet.getString("EyeSight");
                String EyePower = resultSet.getString("EyePower");
                String Asthama = resultSet.getString("Asthama");
                String FrequentCold = resultSet.getString("FrequentCold");
                String TestedCovidPositive = resultSet.getString("TestedCovidPositive");
                String Vaccinated = resultSet.getString("Vaccinated");
                String VaccineDoses = resultSet.getString("VaccineDoses");
                String TypeofCovidVaccine = resultSet.getString("TypeofCovidVaccine");
                String GastricProblem = resultSet.getString("GastricProblem");
                String Acidity = resultSet.getString("Acidity");
                String DonotedBloodBefore = resultSet.getString("DonotedBloodBefore");
                String How_often_DonatedBlood = resultSet.getString("How_often_DonatedBlood");
                String Year_of_DonatedBlood = resultSet.getString("Year_of_DonatedBlood");
                String CardioVascular = resultSet.getString("CardioVascular");
                String CardioProblem = resultSet.getString("CardioProblem");
                String Ecosprin = resultSet.getString("Ecosprin");
                String medication = resultSet.getString("medication");
                String Arthritis = resultSet.getString("Arthritis");



                // Display the existing data
    %>
                <div class="container">
        <form class="form" id="form" action="updateNonTeachingFacultyData.jsp" method="post">
           	<center><h1><b><u>UPDATE DETAILS</u></h1></b></center>           	
            <fieldset>
				<legend>
                    <h3>
                        Non-Teaching Faculty Health Details
                    </h3>
                 </legend>
                    <input type="hidden" name="Email" value="<%= Email %>">            
                 <div class="input-control">
                <label for="Age"><b>Age :</b></label>
                <input id="Age" name="Age" type="text" value="<%= Age %>">
            </div>
            <div class="input-control">
                <label for="Weight"><b>Weight :</b></label>
                <input id="Weight" name="Weight" type="text" value="<%= Weight %>">
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
                <label for="BloodPressure"><b>Do you have BP ?</b></label>
                <input id="BloodPressure"name="BloodPressure" type="text" value="<%= BloodPressure %>">
            </div>
            <div class="input-control">
                <label for="AllergyHistory"><b>Allergy History :</b></label>
                <input id="AllergyHistory"name="AllergyHistory" type="text" value="<%= AllergyHistory %>">
            </div>
            <div class="input-control">
                <label for="Accident"><b>Ever met with an Accident ?</b></label>
                <input id="Accident"name="Accident" type="text" value="<%= Accident %>">
            </div>
            <div class="input-control">
                <label for="TypeofInjury"><b>If yes, What type of injury ?</b></label>
                <input id="TypeofInjury"name="TypeofInjury"type="text" value="<%= TypeofInjury %>">
            </div>
            <div class="input-control">
                <label for="Hospitalized"><b>were you ever Hospitailzed ?</b></label>
                <input id="Hospitalized"name="Hospitalized" type="text" value="<%= Hospitalized %>">
            </div>
            <div class="input-control">
                <label for="HealthIssues"><b>If Yes, Regarding which Health Issue ?</b></label>
                <input id="HealthIssues"name="HealthIssues" type="text" value="<%= HealthIssues %>">
            </div>
            <div class="input-control">
                <label for="BloodTransfusion"><b>Have you ever has a Blood Transfusion ?</b></label>
                <input id="BloodTransfusion"name="BloodTransfusion" type="text" value="<%= BloodTransfusion %>">
            </div>
          <div class="input-control">
                <label for="EyeSight"><b>Do you have Eye Sight ?</b></label>
                <input id="EyeSight"name="EyeSight" type="text" value="<%= EyeSight %>">
            </div>
          <div class="input-control">
                <label for="EyePower"><b>If yes, How much is the Power?</b></label>
                <input id="EyePower"name="EyePower" type="text" value="<%= EyePower %>">
            </div>
          <div class="input-control">
                <label for="Asthama"><b>Do you have Asthama ?</b></label>
                <input id="Asthama"name="Asthama" type="text" value="<%= Asthama %>">
            </div>
          <div class="input-control">
                <label for="FrequentCold"><b>Do you suffer with Frequent Cold ?</b></label>
                <input id="FrequentCold"name="FrequentCold" type="text" value="<%= FrequentCold %>">
            </div>
         <div class="input-control">
                <label for="TestedCovidPositive"><b>were you tested positive for COVID-19 ?</b></label>
                <input id="TestedCovidPositive"name="TestedCovidPositive" type="text" value="<%= TestedCovidPositive %>">
            </div><div class="input-control">
                <label for="Vaccinated"><b>Are you vaccinated for COVID-19 ?</b></label>
                <input id="Vaccinated"name="Vaccinated" type="text" value="<%= Vaccinated %>">
            </div>
            <div class="input-control">
                <label for="VaccineDoses"><b>Number of doses taken ?</b></label>
                <input id="VaccineDoses"name="VaccineDoses" type="text" value="<%= VaccineDoses %>">
            </div>
           <div class="choice">
           <b>Type of Covid Vaccine :</b>
                        <select name ="TypeofCovidVaccine" id="TypeofCovidVaccine">
                       	<option value="COVAXIN" <%= TypeofCovidVaccine.equals("COVAXIN") ? "selected" : "" %>>COVAXIN</option>
                        <option value="COVISHIELD" <%= TypeofCovidVaccine.equals("COVISHIELD") ? "selected" : "" %>>COVISHIELD</option>
                        <option value="Sputnik-V" <%= TypeofCovidVaccine.equals("Sputnik-V") ? "selected" : "" %>>Sputnik-V</option>
                        <option value="COVOVAX" <%= TypeofCovidVaccine.equals("COVOVAX") ? "selected" : "" %>>COVOVAX</option>
                        <option value="ZyCov-D" <%= TypeofCovidVaccine.equals("ZyCov-D") ? "selected" : "" %>>ZyCov-D</option>
                        <option value="None" <%= TypeofCovidVaccine.equals("None") ? "selected" : "" %>>None</option>
                        <option value="Others" <%= TypeofCovidVaccine.equals("Others") ? "selected" : "" %>>Others</option>
                        </select>
          </div>
          <div class="input-control">
                <label for="GastricProblem"><b>Do you have Gastric problem ?</b></label>
                <input id="GastricProblem"name="GastricProblem" type="text" value="<%= GastricProblem %>">
            </div><div class="input-control">
                <label for="Acidity"><b>Do you have Acidity ?</b></label>
                <input id="Acidity"name="Acidity" type="text" value="<%= Acidity %>">
            </div><div class="input-control">
                <label for="DonotedBloodBefore"><b>Do you ever donated Blood before ?</b></label>
                <input id="DonotedBloodBefore"name="DonotedBloodBefore" type="text" value="<%= DonotedBloodBefore %>">
            </div>
          <div class="input-control">
                <label for="How_often_DonatedBlood"><b>If yes, How often ?</b></label>
                <input id="How_often_DonatedBlood"name="How_often_DonatedBlood" type="text" value="<%= How_often_DonatedBlood %>">
            </div>
            <div class="input-control">
                <label for="Year_of_DonatedBlood"><b>If yes, When did you Donated this Year ?</b></label>
                <input id="Year_of_DonatedBlood"name="Year_of_DonatedBlood" type="text" value="<%= Year_of_DonatedBlood %>">
            </div>
             <div class="input-control">
                <label for="CardioVascular"><b>Do you have Cardio Vascular Problem ?</b></label>
                <input id="CardioVascular"name="CardioVascular" type="text" value="<%= CardioVascular %>">
            </div> 
            <div class="input-control">
                <label for="CardioProblem"><b>If yes, What is the Problem ?</b></label>
                <input id="CardioProblem"name="CardioProblem" type="text" value="<%= CardioProblem %>">
            </div> 
            <div class="input-control">
                <label for="Ecosprin"><b>Do you use Ecosprin ?</b></label>
                <input id="Ecosprin"name="Ecosprin" type="text" value="<%= Ecosprin %>">
            </div> 
            <div class="input-control">
                <label for="medication"><b>If yes, What is the medication you use regularly ?</b></label>
                <input id="medication"name="medication" type="text" value="<%= medication %>">
            </div> 
            <div class="input-control">
                <label for="Arthritis"><b>Do you have Arthritis ?</b></label>
                <input id="Arthritis"name="Arthritis" type="text" value="<%= Arthritis %>">
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
                        alert("Staff Not Found");
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
