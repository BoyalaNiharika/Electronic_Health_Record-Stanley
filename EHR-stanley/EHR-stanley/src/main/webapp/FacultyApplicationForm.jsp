<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.html"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electronic Health Record-Stanley</title>


<style>
body{
height:3360px;
}
.container{
    margin-top:0px;
    padding-top: 300px;
    margin-right: 300px;
}

.form {
    width: 800px;
    box-shadow:0 0 100px #d5d3d3;
    margin-top:-20px;
  	margin-right: 300px;
    margin-left: 300px;
    height: 2950px;
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
	width:700px;
}

legend{
	margin:20px;
	font-family:times new roman;
	
}

.form button {
    padding: 9px;
    margin-top: 20px;
    margin-left:650px;
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
    flex-direction: column;
   	margin-left:20px;
   	margin-right:100px;
    
}

.input-control input {
	margin-top:9px;
    border: 1px solid #050505;
	border-radius: 6px;
    font-family:times new roman;
	display: block;
	font-size: 15px;
	padding: 10px;
	width:400px;

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
	width:120px;
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

<script type="text/javascript">
window.addEventListener("load", function() {
	  var form = document.getElementById("form");

	  form.addEventListener("submit", function(event) {
	    event.preventDefault(); // Prevent form submission

	    var fullnameInput = document.getElementById("fullname");
	    var phonenumberInput = document.getElementById("phonenumber");
	    var parentsnameInput = document.getElementById("parentsname");
	    var parentsnoInput = document.getElementById("parentsno");
	    var BranchInput = document.getElementById("Branch");
	    var dobInput = document.getElementById("dob");
	    var aadharnoInput = document.getElementById("aadharno");
	    var emailInput = document.getElementById("email");
	    var addressInput = document.getElementById("address");
	    var ageInput = document.getElementById("age");
	    var weightInput = document.getElementById("weight");
	    var heightInput = document.getElementById("height");
	    var bloodgroupInput = document.getElementById("bloodgroup");
	    var diabeticInput = document.querySelector('input[name="diabetic"]:checked');
	    var bpInput = document.querySelector('input[name="bp"]:checked');
	    var accidentInput = document.querySelector('input[name="accident"]:checked');
	    var hospitalizedInput = document.querySelector('input[name="Hospitalized"]:checked');
	    var bloodtransfusionInput = document.querySelector('input[name="bloodtransfusion"]:checked');
	    var eyesightInput = document.querySelector('input[name="eyesight"]:checked');
	    var asthamaInput = document.querySelector('input[name="asthama"]:checked');
	    var frequentcoldInput = document.querySelector('input[name="frequentcold"]:checked');
	    var testedpositiveInput = document.querySelector('input[name="testedpositive"]:checked');
	    var vaccinatedInput = document.querySelector('input[name="vaccinated"]:checked');
	    var dosesInput = document.querySelector('input[name="doses"]:checked');
	    var vaccineInput = document.getElementById("vaccine");
	    var gastricproblemInput = document.querySelector('input[name="gastricproblem"]:checked');
	    var acidityInput = document.querySelector('input[name="acidity"]:checked');
	    var donatedbloodInput = document.querySelector('input[name="donatedblood"]:checked');
	    var cardiovascularInput = document.querySelector('input[name="cardiovascular"]:checked');
	    var ecosprinInput = document.querySelector('input[name="ecosprin"]:checked');
	    var arthritisInput = document.querySelector('input[name="arthritis"]:checked');



	    var fullname = fullnameInput.value;
	    var phonenumber = phonenumberInput.value;
	    var parentsname = parentsnameInput.value;
	    var parentsno = parentsnoInput.value;
	    var Branch = BranchInput.value;
	    var dob = dobInput.value;
	    var aadharno = aadharnoInput.value;
	    var email = emailInput.value;
	    var address = addressInput.value;
	    var age = ageInput.value;
	    var weight = weightInput.value;
	    var height = heightInput.value;
	    var bloodgroup = bloodgroupInput.value;
	    var vaccine = vaccineInput.value;
	   


	   
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
	    var phonenumberFormat = /^[0-9]\d{9}$/;
		    if (phonenumber==""){
				alert("Phone Number can not be Empty");
			    phonenumberInput.focus();
		      	return;
			}else if (!phonenumber.match(phonenumberFormat)) {
		      	alert("Provide a valid Phone number of 10 digit long!");
		     	phonenumberInput.focus();
		      	return;
		    }
	    if (parentsname==""){
			alert("Parents Name can not be Empty");
			parentsnameInput.focus();
	      	return;

		}else if (!parentsname.match(fullnameFormat)) {
	      	alert("Provide a valid Parent Phone Number with only characters!");
	      	parentsnameInput.focus();
	      	return;
	    }
		if (parentsno==""){
				alert("Parents Number can not be Empty");
			    parentsnoInput.focus();
		      	return;
			}else if (!parentsno.match(phonenumberFormat)) {
		      	alert("Provide a valid Parents number of 10 digit long!");
		      	parentsnoInput.focus();
		      	return;
		}  
		if (Branch==""){
			alert("Branch can not be Empty");
			BranchInput.focus();
	      	return;
	    }
	    if (dob==""){
			alert("Date of Birth can not be Empty");
			b_dateInput.focus();
	      	return;
	    }
	    
	    var aadharFormat = /^[0-9]\d{11}$/;
	    if (aadharno==""){
			alert("Aadhar Number can not be Empty");
			aadharnoInput.focus();
		   	return;
		}else if (!aadharno.match(aadharFormat)) {
		    alert("Provide a valid Aadhar number of 12 digit long!");
		    aadharnoInput.focus();
		   	return;
		}
	    var emailFormat=/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    if (email==""){
			alert("Email can not be Empty");
			emailInput.focus();
		   	return;
		}else if (!email.match(emailFormat)) {
		    alert("Provide a valid Email ID!");
		    emailInput.focus();
		   	return;
		}
	    if (address==""){
			alert("Address can not be Empty");
			addressInput.focus();
	      	return;
	    }
	    if (age==""){
			alert("Age can not be Empty");
			ageInput.focus();
	      	return;
	    }
	    if (weight==""){
			alert("Weight can not be Empty");
			weightInput.focus();
	      	return;
	    }if (height==""){
			alert("Height can not be Empty");
			heightInput.focus();
	      	return;
	    }
	    if (bloodgroup==""){
			alert("Blood Group can not be Empty");
			bloodgroupInput.focus();
	      	return;
	    }
	    if (diabeticInput===null){
			alert("Select Yes or No for Diabetic");
			diabeticInput.focus();
	      	return;
	    }
	    if (bpInput===null){
			alert("Select Yes or No for BP");
			bpInput.focus();
	      	return;
	    }
	    if (accidentInput===null){
			alert("Select Yes or No for Accident");
			accidentInput.focus();
	      	return;
	    }
	    if (hospitalizedInput===null){
			alert("Select Yes or No for Hospitalized");
			hospitalizedInput.focus();
	      	return;
	    }
	    if (bloodtransfusionInput===null){
			alert("Select Yes or No for Blood Transfusion");
			bloodtransfusionInput.focus();
	      	return;
	    }
	    if (eyesightInput==null){
			alert("Select Yes or No for Eye Sight");
			eyesightInput.focus();
	      	return;
	    }
	    if (asthamaInput===null){
			alert("Select Yes or No for Asthama");
			asthamaInput.focus();
	      	return;
	    }
	    if (frequentcoldInput===null){
			alert("Select Yes or No for Frequent Cold");
			frequentcoldInput.focus();
	      	return;
	    }
	    if (testedpositiveInput===null){
			alert("Select Yes or No for Tested Positive for COVID-19");
			testedpositiveInput.focus();
	      	return;
	    }
	    if (vaccinatedInput===null){
			alert("Select Yes or No for Vaccinated for COVID-19");
			vaccinatedInput.focus();
	      	return;
	    }
	    if (dosesInput===null){
			alert("Select No. of Doses you have taken");
			dosesInput.focus();
	      	return;
	    }
	    if (vaccine==""){
			alert("Select COVID Vaccine type that you have taken");
			vaccineInput.focus();
	      	return;
	    }
	    if (gastricproblemInput===null){
			alert("Select Yes or No for  Gastric Problem");
			gastricproblemInput.focus();
	      	return;
	    }
	    if (acidityInput===null){
			alert("Select Yes or No for Acidity");
			acidityInput.focus();
	      	return;
	    } 
	    if (donatedbloodInput===null){
			alert("Select Yes or No for Ever Donated Blood Before");
			donatedbloodInput.focus();
	      	return;
	    }
	    if (cardiovascularInput===null){
			alert("Select Yes or No for Cardio Vascular");
			cardiovascularInput.focus();
	      	return;
	    }
	    if (ecosprinInput===null){
			alert("Select Yes or No for Ecosprin");
			ecosprinInput.focus();
	      	return;
	    }
	    if (arthritisInput===null){
			alert("Select Yes or No for Arthritis");
			arthritisInput.focus();
	      	return;
	    }
	   
	    // If validation passes, submit the form
	    form.submit();
	  });
	});
	
function showAlert(facultyid) {
    alert("Your have successfully completed your application form. Your Health Record ID is " + facultyid);
}



</script>



</head>
<body>
  <%@ page import="java.sql.*" %>
  	<%
      // Get form input data
      String fullname = request.getParameter("fullname");
      String phonenumber = request.getParameter("phonenumber");
      String parentsname = request.getParameter("parentsname");
      String parentsno = request.getParameter("parentsno");
      String Branch = request.getParameter("Branch");
      String dob = request.getParameter("dob");
      String aadharno = request.getParameter("aadharno");
      String email = request.getParameter("email");
      String address = request.getParameter("address");
      String age = request.getParameter("age");
      String weight = request.getParameter("weight");
   	  String height = request.getParameter("height");
      String bloodgroup = request.getParameter("bloodgroup");
      String diabetic = request.getParameter("diabetic");
      String bp = request.getParameter("bp");
      String allergyhistory = request.getParameter("allergyhistory");
      String accident = request.getParameter("accident");
      String injury = request.getParameter("injury");
      String Hospitalized = request.getParameter("Hospitalized");
      String healthissue = request.getParameter("healthissue");
      String bloodtransfusion = request.getParameter("bloodtransfusion");
      String eyesight = request.getParameter("eyesight");
      String eyepower = request.getParameter("eyepower");
      String asthama = request.getParameter("asthama");
      String frequentcold = request.getParameter("frequentcold");
      String testedpositive = request.getParameter("testedpositive");
      String vaccinated = request.getParameter("vaccinated");
      String doses = request.getParameter("doses");
      String vaccine = request.getParameter("vaccine");
      String gastricproblem = request.getParameter("gastricproblem");
      String acidity = request.getParameter("acidity");
      String donatedblood = request.getParameter("donatedblood");
      String blooddonation = request.getParameter("blooddonation");
      String donatedyear = request.getParameter("donatedyear");
      String cardiovascular = request.getParameter("cardiovascular");
      String cardioproblem = request.getParameter("cardioproblem");
      String ecosprin = request.getParameter("ecosprin");
      String medication = request.getParameter("medication");
      String arthritis = request.getParameter("arthritis");


      try {
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
       	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehrstanley","root","niharika");       	
        String insertQuery = "INSERT INTO facultyapplicationdetails (FullName,PhoneNumber,parentsName,ParentsPhoneNumber,Branch,DateOfBirth,aadharno,email,address,age,weight,height,bloodgroup,diabetic,BloodPressure,allergyhistory,accident,TypeofInjury,Hospitalized,healthissues,BloodTransfusion,eyesight,eyepower,asthama,frequentcold,TestedCovidPositive,vaccinated,VaccineDoses,TypeofCovidVaccine,gastricproblem,acidity,DonotedBloodBefore,How_often_DonatedBlood,Year_of_DonatedBlood,CardioVascular,CardioProblem,Ecosprin,medication,arthritis) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
        ps.setString(1, fullname);
        ps.setString(2, phonenumber);
        ps.setString(3, parentsname);
        ps.setString(4, parentsno);
        ps.setString(5, Branch);
        ps.setString(6, dob);
        ps.setString(7, aadharno);
        ps.setString(8, email);
        ps.setString(9, address);
        ps.setString(10, age);
        ps.setString(11, weight);
        ps.setString(12, height);
        ps.setString(13, bloodgroup);
        ps.setString(14, diabetic);
        ps.setString(15, bp);
        ps.setString(16, allergyhistory);
        ps.setString(17, accident);
        ps.setString(18, injury);
        ps.setString(19, Hospitalized);
        ps.setString(20, healthissue);
        ps.setString(21, bloodtransfusion);
        ps.setString(22, eyesight);
        ps.setString(23, eyepower);
        ps.setString(24, asthama);
        ps.setString(25, frequentcold);
        ps.setString(26, testedpositive);
        ps.setString(27, vaccinated);
        ps.setString(28, doses);
        ps.setString(29, vaccine);
        ps.setString(30, gastricproblem);
        ps.setString(31, acidity);
        ps.setString(32, donatedblood);
        ps.setString(33, blooddonation);
        ps.setString(34, donatedyear);
        ps.setString(35, cardiovascular);
        ps.setString(36, cardioproblem);
        ps.setString(37, ecosprin);
        ps.setString(38, medication);
        ps.setString(39, arthritis);

        int i = ps.executeUpdate();
        if (i > 0) {
            // Retrieve the generated roll number
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) 
            {
                int facultyid = rs.getInt(1);

                // Display the result
				%>
           		<script>
            		showAlert('<%= facultyid %>');
            		window.location.href ="MainPage.jsp"
       			</script>
				<% 
			}
            rs.close();
        } else {
			%>
			<script>
                alert("Somthing went wrong check your details properly");
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
        <form class="form" id="form"action="FacultyApplicationForm.jsp" method="post">
           	<center><h1><b><u>APPLICATION FORM</u></h1></b></center>
           	<fieldset>
				<legend>
                    <h3>
                        Faculty Personal Details
                    </h3>
                 </legend>            
                 <div class="input-control">
                <label for="fullname"><b>Full Name :<span style="color:red;font-size:1.3em;">*</span></b></label>
                <input id="fullname" name="fullname" type="text">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="phonenumber"><b>Phone Number :<span style="color:red;font-size:1.3em;">*</span></b> </label>
                <input id="phonenumber" name="phonenumber" type="text">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="parentsname"><b>Parents/Husband/Wife/Guardian Name :<span style="color:red;font-size:1.3em;">*</span></b></label>
                <input id="parentsname"name="parentsname" type="text">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="parentsno"><b>Parents/Husband/Wife/Guardian Phone No. :<span style="color:red;font-size:1.3em;">*</span></b></label>
                <input id="parentsno"name="parentsno" type="text">
                <div class="error"></div>
            </div>
             <div class="choice">
                        <b>Branch :<span style="color:red;font-size:1.3em;">*</span></b>
                        <select name ="Branch" id="Branch">
                            <option value="" selected>Branch</option> 
                            <option value="AI&DS">AI&DS</option> 
                            <option value="CME">CME</option> 
                            <option value="CSE">CSE</option> 
                            <option value="ECE">ECE</option> 
                            <option value="EEE">EEE</option> 
                            <option value="IT">IT</option> 
                            </select> 
                    </div>
                    <div class ="input-control">
                    	<b>Date of Birth :<span style="color:red;font-size:1.3em;">*</span></b>
                        <input type="date" name ="dob" id="dob">  
                    </div>
            <div class="input-control">
                <label for="aadharno"><b>Aadhar No. :<span style="color:red;font-size:1.3em;">*</span></b></label>
                <input id="aadharno"name="aadharno" type="text">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="email"><b>Email :<span style="color:red;font-size:1.3em;">*</span></b></label>
                <input id="email"name="email" type="text">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="address"><b>Address :<span style="color:red;font-size:1.3em;">*</span></b></label>
                <input id="address"name="address" type="text">
                <div class="error"></div>
            </div>
            <br>
            </fieldset>
            
            <fieldset>
				<legend>
                    <h3>
                        Faculty Health Details
                    </h3>
                 </legend>            
                 <div class="input-control">
                <label for="age"><b>Age :<span style="color:red;font-size:1.3em;">*</span></b></label>
                <input id="age" name="age" type="text">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="weight"><b>Weight :<span style="color:red;font-size:1.3em;">*</span></b> </label>
                <input id="weight" name="weight" type="text">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="height"><b>Height :<span style="color:red;font-size:1.3em;">*</span></b></label>
                <input id="height"name="height" type="text">
                <div class="error"></div>
            </div>
            <div class="choice">
                        <b>Blood Group :<span style="color:red;font-size:1.3em;">*</span></b>
                        <select name ="bloodgroup" id="bloodgroup">
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
            </div>
            <div id="ratio_button">
            <b>Are you Diabetic ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="diabetic" id="diabetic" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="diabetic"id="diabetic" value="No">
            <label>No</label>
          </div>
           <div id="ratio_button">
            <b>Do you have BP ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="bp" id="bp" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="bp" id="bp" value="No">
            <label>No</label>
          </div>
            <div class="input-control">
                <label for="allergyhistory"><b>Allergy History :</b></label>
                <input id="allergyhistory"name="allergyhistory" type="text">
                <div class="error"></div>
            </div>
            <div id="ratio_button">
            <b>Ever met with an Accident ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="accident" id="accident" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="accident" id="accident" value="No">
            <label>No</label>
          </div>
            <div class="input-control">
                <label for="injury"><b>If yes, What type of injury ?</b></label>
                <input id="injury"name="injury" type="text">
                <div class="error"></div>
            </div>
            <div id="ratio_button">
            <b>were you ever Hospitalized ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="Hospitalized" id="Hospitalized" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="Hospitalized" id="Hospitalized" value="No">
            <label>No</label>
          </div>
            <div class="input-control">
                <label for="healthissue"><b>If Yes, Regarding which Health Issue ?</b></label>
                <input id="healthissue"name="healthissue" type="text">
                <div class="error"></div>
            </div>
            <div id="ratio_button">
            <b>Have you ever has a Blood Transfusion ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="bloodtransfusion" id="bloodtransfusion" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="bloodtransfusion" id="bloodtransfusion" value="No">
            <label>No</label>
            </div>
            <div id="ratio_button">
            <b>Do you have Eye Sight ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="eyesight" id="eyesight" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="eyesight" id="eyesight" value="No">
            <label>No</label>
          </div>
          <div class="input-control">
                <label for="eyepower"><b>If yes, How much is the Power ? (Left,Right)</b></label>
                <input id="eyepower"name="eyepower" type="text">
                <div class="error"></div>
            </div>
          <div id="ratio_button">
            <b>Do you have Asthama ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="asthama" id="asthama" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="asthama"id="asthama"  value="No">
            <label>No</label>
          </div>
          <div id="ratio_button">
            <b>Do you suffer with Frequent Cold ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="frequentcold" id="frequentcold" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="frequentcold" id="frequentcold" value="No">
            <label>No</label>
          </div>
          <div id="ratio_button">
            <b>were you tested positive for COVID-19 ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="testedpositive" id="testedpositive" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="testedpositive" id="testedpositive" value="No">
            <label>No</label>
          </div>
          <div id="ratio_button">
            <b>Are you vaccinated for COVID-19 ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="vaccinated" id="vaccinated" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="vaccinated" id="vaccinated" value="No">
            <label>No</label>
          </div>
          
          <div id="ratio_button">
            <b>Number of doses taken ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="doses" id="doses" value="0">
            <label>0</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="doses" id="doses" value="1">
            <label>1</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="doses" id="doses" value="2">
            <label>2</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="doses" id="doses" value="3">
            <label>3</label>
          </div>
          
           <div class="choice">
           <b>Type of Covid Vaccine :<span style="color:red;font-size:1.3em;">*</span></b>
                        <select name ="vaccine" id="vaccine" >
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
          <div id="ratio_button">
            <b>Do you have Gastric problem ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="gastricproblem" id="gastricproblem" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="gastricproblem" id="gastricproblem" value="No">
            <label>No</label>
          </div>
          <div id="ratio_button">
            <b>Do you have Acidity ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="acidity" id="acidity" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="acidity" id="acidity" value="No">
            <label>No</label>
          </div>
          <div id="ratio_button">
            <b>Do you ever donated Blood before ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="donatedblood" id="donatedblood" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="donatedblood" id="donatedblood" value="No">
            <label>No</label>
          </div>
          <div class="input-control">
                <label for="blooddonation"><b>If yes, How often ?</b></label>
                <input id="blooddonation"name="blooddonation" type="text">
                <div class="error"></div>
            </div>
            
            <div class="input-control">
                <label for="donatedyear"><b>If yes, When did you Donated this Year ?</b></label>
                <input id="donatedyear"name="donatedyear"  type="text">
                <div class="error"></div>
            </div>
            
            <div id="ratio_button">
            <b>Do you have Cardio Vascular Problem ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="cardiovascular" id="cardiovascular" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="cardiovascular" id="cardiovascular" value="No">
            <label>No</label>
          </div>
          
            <div class="input-control">
                <label for="cardioproblem"><b>If yes, What is the Problem ?</b></label>
                <input id="cardioproblem"name="cardioproblem"type="text">
                <div class="error"></div>
            </div>
            
            <div id="ratio_button">
            <b>Do you use Ecosprin ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="ecosprin" id="ecosprin" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="ecosprin" id="ecosprin" value="No">
            <label>No</label>
          </div>
          
             <div class="input-control">
                <label for="medication"><b>If yes, What is the medication you use regularly ?</b></label>
                <input id="medication"name="medication" type="text">
                <div class="error"></div>
            </div>
            
            <div id="ratio_button">
            <b>Do you have Arthritis ?<span style="color:red;font-size:1.3em;">*</span></b>&nbsp;&nbsp;&nbsp;
            <input type="radio" name="arthritis" id="arthritis" value="Yes">
            <label>Yes</label>
            &nbsp;&nbsp;&nbsp;
            <input type="radio" name="arthritis" id="arthritis" value="No">
            <label>No</label>
          </div>
          <br>
            </fieldset>
            <button type="submit"><b>Submit</b></button>
        </form>
    </div>
	

</body>
</html>
