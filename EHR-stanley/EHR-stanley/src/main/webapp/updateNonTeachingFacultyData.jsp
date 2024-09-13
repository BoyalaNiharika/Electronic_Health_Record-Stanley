<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Electronic Health Record-Stanley</title>
</head>
<body>
    <h1>Update Student Data</h1>

    <%-- Retrieve updated data from the form and update the database --%>
    <%
        String Email = request.getParameter("Email");
        String Age = request.getParameter("Age");
        String Weight = request.getParameter("Weight");
        String height = request.getParameter("height");
        String BloodGroup = request.getParameter("BloodGroup");
        String Diabetic = request.getParameter("Diabetic");
        String BloodPressure = request.getParameter("BloodPressure");
        String AllergyHistory = request.getParameter("AllergyHistory");
        String Accident = request.getParameter("Accident");
        String TypeofInjury = request.getParameter("TypeofInjury");
        String Hospitalized = request.getParameter("Hospitalized");
        String HealthIssues = request.getParameter("HealthIssues");
        String BloodTransfusion = request.getParameter("BloodTransfusion");
        String EyeSight = request.getParameter("EyeSight");
        String EyePower = request.getParameter("EyePower");
        String Asthama = request.getParameter("Asthama");
        String FrequentCold = request.getParameter("FrequentCold");
        String TestedCovidPositive = request.getParameter("TestedCovidPositive");
        String Vaccinated = request.getParameter("Vaccinated");
        String VaccineDoses = request.getParameter("VaccineDoses");
        String TypeofCovidVaccine = request.getParameter("TypeofCovidVaccine");
        String GastricProblem = request.getParameter("GastricProblem");
        String Acidity = request.getParameter("Acidity");
        String DonotedBloodBefore = request.getParameter("DonotedBloodBefore");
        String How_often_DonatedBlood = request.getParameter("How_often_DonatedBlood");
        String Year_of_DonatedBlood = request.getParameter("Year_of_DonatedBlood");
        String CardioVascular = request.getParameter("CardioVascular");
        String CardioProblem = request.getParameter("CardioProblem");
        String Ecosprin = request.getParameter("Ecosprin");
        String medication = request.getParameter("medication");
        String Arthritis = request.getParameter("Arthritis");

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehrstanley", "root", "niharika");

        // Update data in the database
        String query = "UPDATE nonteachingfacultyapplicationdetails SET Age=?, Weight=?, height=?, BloodGroup=?, Diabetic=?, BloodPressure=?, AllergyHistory=?, Accident=?, TypeofInjury=?, Hospitalized=?, HealthIssues=?, BloodTransfusion=?, EyeSight=?, EyePower=?, Asthama=?, FrequentCold=?, TestedCovidPositive=?, Vaccinated=?, VaccineDoses=?, TypeofCovidVaccine=?, GastricProblem=?, Acidity=?, DonotedBloodBefore=?, How_often_DonatedBlood=?, Year_of_DonatedBlood=?, CardioVascular=?, CardioProblem=?, Ecosprin=?, medication=?, Arthritis=? WHERE Email=?";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, Age);
        preparedStatement.setString(2, Weight);
        preparedStatement.setString(3, height);
        preparedStatement.setString(4, BloodGroup);
        preparedStatement.setString(5, Diabetic);
        preparedStatement.setString(6, BloodPressure);
        preparedStatement.setString(7, AllergyHistory);
        preparedStatement.setString(8, Accident);
        preparedStatement.setString(9, TypeofInjury);
        preparedStatement.setString(10, Hospitalized);
        preparedStatement.setString(11, HealthIssues);
        preparedStatement.setString(12, BloodTransfusion);
        preparedStatement.setString(13, EyeSight);
        preparedStatement.setString(14, EyePower);
        preparedStatement.setString(15, Asthama);
        preparedStatement.setString(16, FrequentCold);
        preparedStatement.setString(17, TestedCovidPositive);
        preparedStatement.setString(18, Vaccinated);
        preparedStatement.setString(19, VaccineDoses);
        preparedStatement.setString(20, TypeofCovidVaccine);
        preparedStatement.setString(21, GastricProblem);
        preparedStatement.setString(22, Acidity);
        preparedStatement.setString(23, DonotedBloodBefore);
        preparedStatement.setString(24, How_often_DonatedBlood);
        preparedStatement.setString(25, Year_of_DonatedBlood);
        preparedStatement.setString(26, CardioVascular);
        preparedStatement.setString(27, CardioProblem);
        preparedStatement.setString(28, Ecosprin);
        preparedStatement.setString(29, medication);
        preparedStatement.setString(30, Arthritis);
        preparedStatement.setString(31, Email);


        int rowsUpdated = preparedStatement.executeUpdate();

        // Close resources
        preparedStatement.close();
        connection.close();

        // Redirect to a confirmation page or back to the update page with a success message
        if (rowsUpdated > 0) {
            response.sendRedirect("MainPage.jsp");
        } else {
            response.sendRedirect("ContactUs.jsp");
        }
    %>
</body>
</html>
