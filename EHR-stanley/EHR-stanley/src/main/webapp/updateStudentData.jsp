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
        String rollNumber = request.getParameter("rollNumber");
        String age = request.getParameter("age");
        String weight = request.getParameter("weight");
        String height = request.getParameter("height");
        String BloodGroup = request.getParameter("BloodGroup");
        String Diabetic = request.getParameter("Diabetic");
        String allergyhistory = request.getParameter("allergyhistory");
        String accident = request.getParameter("accident");
        String typeofinjury = request.getParameter("typeofinjury");
        String hospitalized = request.getParameter("hospitalized");
        String healthissues = request.getParameter("healthissues");
        String BloodTransfusion = request.getParameter("BloodTransfusion");
        String eyesight = request.getParameter("eyesight");
        String eyepower = request.getParameter("eyepower");
        String asthama = request.getParameter("asthama");
        String frequentcold = request.getParameter("frequentcold");
        String testedcovidpositive = request.getParameter("testedcovidpositive");
        String vaccinated = request.getParameter("vaccinated");
        String TypeofVaccine = request.getParameter("TypeofVaccine");
        String gastricproblem = request.getParameter("gastricproblem");
        String acidity = request.getParameter("acidity");
        String DonotedBloodBefore = request.getParameter("DonotedBloodBefore");
        String how_often_donatedblood = request.getParameter("how_often_donatedblood");
        String year_of_donatedblood = request.getParameter("year_of_donatedblood");

        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehrstanley", "root", "niharika");

        // Update data in the database
        String query = "UPDATE studentapplicationdetails SET age=?, weight=?, height=?, BloodGroup=?, Diabetic=?, allergyhistory=?, accident=?, typeofinjury=?, hospitalized=?, healthissues=?, BloodTransfusion=?, eyesight=?, eyepower=?, asthama=?, frequentcold=?, testedcovidpositive=?, vaccinated=?, TypeofVaccine=?, gastricproblem=?, acidity=?, DonotedBloodBefore=?, how_often_donatedblood=?, year_of_donatedblood=? WHERE rollnumber=?";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, age);
        preparedStatement.setString(2, weight);
        preparedStatement.setString(3, height);
        preparedStatement.setString(4, BloodGroup);
        preparedStatement.setString(5, Diabetic);
        preparedStatement.setString(6, allergyhistory);
        preparedStatement.setString(7, accident);
        preparedStatement.setString(8, typeofinjury);
        preparedStatement.setString(9, hospitalized);
        preparedStatement.setString(10, healthissues);
        preparedStatement.setString(11, BloodTransfusion);
        preparedStatement.setString(12, eyesight);
        preparedStatement.setString(13, eyepower);
        preparedStatement.setString(14, asthama);
        preparedStatement.setString(15, frequentcold);
        preparedStatement.setString(16, testedcovidpositive);
        preparedStatement.setString(17, vaccinated);
        preparedStatement.setString(18, TypeofVaccine);
        preparedStatement.setString(19, gastricproblem);
        preparedStatement.setString(20, acidity);
        preparedStatement.setString(21, DonotedBloodBefore);
        preparedStatement.setString(22, how_often_donatedblood);
        preparedStatement.setString(23, year_of_donatedblood);
        preparedStatement.setString(24, rollNumber);
        int rowsUpdated = preparedStatement.executeUpdate();

        // Close resources
        preparedStatement.close();
        connection.close();

        // Redirect to a confirmation page or back to the update page with a success message
        if (rowsUpdated > 0) {
        	%>
            <script>
                    alert("Updated Data Successfully...");
                    window.location.href ="MainPage.jsp"

                </script>
                <%	 
        }else {
        	%>
            <script>
                    alert("Cannot Update the Details! Please Enter the Correct Details");
                    window.location.href ="updateStudentAction.jsp"

                </script>
                <%	

                } 
    %>
</body>
</html>
