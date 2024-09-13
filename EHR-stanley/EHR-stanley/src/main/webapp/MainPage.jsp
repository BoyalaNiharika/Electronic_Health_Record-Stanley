<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Header.html"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electronic Health Record-Stanley</title>
<style>
* {
  box-sizing:border-box;
}

body {
  margin: 0;
  font-family: tahoma;
}
.offset{
  padding-top:220px;

}
.content-container {
  padding: 75px;
}

.col-container:after {
  content: "";
  display: table;
  clear: both;
}

.column-one {
  float: left;
  width: 66.66666%;
  padding: 25px;
}

.column-two {
  float: left;
  width: 33.33333%;
  padding: 25px;
}

.l-font {
  font-size: 45px;
  color: #03071e;
}

.xl-font {
  font-size: 65px;
  color: #03071e;
}
.image {
  display: block;
  height: auto;
  max-width: 100%;
}

@media screen and (max-width: 800px) {
  .column-one,
  .column-two {
    width: 100%;
    text-align: center;
  }
  img {
    margin: auto;
  }
}
</style>
</head>
<body>
<div class="offset">
<div class="content-container" style="background-color: #cbaba6;">
  <div class="col-container">
    <div class="column-one">
         <br>
      <h1>"The greatest gift you can give your family and the world is a healthy you." - Joyce Meyer</h1>
     <br>
      <h3>Joyce Meyer's quote emphasizes that good health is not only beneficial for ourselves but also for those around us. When we are in good health, we can contribute positively to our families, communities, and society at large. Our well-being allows us to be present, caring, and supportive, making a significant difference in the lives of others.</h3>

    </div>
    <div class="column-two">
        <img class="image" src="images/pic1.gif" width="335" height="471">
    </div>
  </div>
</div>
</div>

<div class="content-container" style="background-color: #945b5d;">
  <div class="col-container">
    <div class="column-two">
      <img class="image" src="images/pic2.gif" alt="CSS" width="335" height="471">
    </div>
    <div class="column-one">
      <h1>"Those who think they have no time for healthy eating will sooner or later have to find time for illness." - Edward Stanley</h1>
           <br>
      <h3>Edward Stanley, the 19th Earl of Derby, points out the consequences of neglecting healthy eating habits. Taking care of our health through proper nutrition can prevent future health issues.</h3>
    </div>
  </div>
</div>

<div class="content-container" style="background-color: #ebdbcb";>
  <div class="col-container">
    <div class="column-one">
          <br><br>
     
      <h1>"Health is the greatest gift, contentment the greatest wealth, faithfulness the best relationship." - Buddha</h1>
           <br>
      <h3>This quote by Buddha emphasizes the importance of health as the most valuable gift one can have. It suggests that true wealth lies in being content with what we have and staying faithful to ourselves and others.</h3>
    </div>
    <div class="column-two">
        <img class="image" src="images/pic3.gif" width="335" height="471" >
    </div>
  </div>
</div>
</body>
</html>