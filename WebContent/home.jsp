<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
   <!DOCTYPE html>
<html>
<head>
<title>Typing Test</title>

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
  background-color: DodgerBlue;
  color: white;
}

h1{
text-align:center;
}

boxsizingBorder {
    -webkit-box-sizing: border-box;
       -moz-box-sizing: border-box;
            box-sizing: border-box;
}

h2,p,span{
color:white;}

textarea {
    display: block;
    margin-left: auto;
    margin-right: auto;
}

</style>

</head>
<body style=" background-color: orange;">

<h1>Stopwatch</h1>
<h1 id="stpwtch"><time>00:00:00</time></h1>

<script>
var h1 = document.getElementById('stpwtch'),
start = document.getElementById('start'),
stop = document.getElementById('stop'),
clear = document.getElementById('clear'),
seconds = 0, minutes = 0, hours = 0,
t;

function add() {
seconds++;
if (seconds >= 60) {
    seconds = 0;
    minutes++;
    if (minutes >= 60) {
        minutes = 0;
        hours++;
    }
}

h1.textContent = (hours ? (hours > 9 ? hours : "0" + hours) : "00") + ":" + (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00") + ":" + (seconds > 9 ? seconds : "0" + seconds);

document.getElementById('secs').value=seconds;
timer();

}
function timer() {
t = setTimeout(add, 1000);
}
timer();


/* Start button */
start.onclick = timer;




</script>

<h2  >
Emotion is a mental state variously associated with thoughts feelings behavioural responses and a degree of pleasure or displeasure.

</h2>





<form action="StoreInfo" id="usrform" method="post">
  <input type="hidden" id="secs" name="seconds">
  <textarea style="align:center" class="boxsizingBorder" rows="10" cols="150" name="test" form="usrform" required>
</textarea><br>
  <input style="margin-left:50%;" class="button button1"  type="submit" value="End Test">
</form>

<div id="some_div">
</div>
</body>
</html>