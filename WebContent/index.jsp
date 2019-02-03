<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
	

<!DOCTYPE html>
<html>
<head>
<title>How Moods affect typing</title>

<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

p, span{
 color:white;
}

</style>
</head>
<body style=" background-color: orange;">
<h1 style="text-align:center;">How Mood Affects Typing</h1>

<div style="background-color:dodgerblue; padding:20px; height:50%; width:20%; margin-left:40%;margin-top:5%;">

<form action="UserInfo" method="post">

 <span>Name</span> <input type="text" name="fname" value="" required><br>
 <p> Select Your Mood </p>
  <input type="radio" name="mood" value="happy" checked><span>Happy</span><br>
  <input type="radio" name="mood" value="angry" > <span>Angry</span><br>
  <input type="radio" name="mood" value="depressed"><span>Depressed</span><br>
    <input type="radio" name="mood" value="nervous"><span>Nervous</span><br><br>
<input class="button button1" type="submit">
</form> 
       
</div>

</body>
</html>