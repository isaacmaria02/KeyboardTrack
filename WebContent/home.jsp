<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
   <!DOCTYPE html>
<html>
<head>
<title>Page Title</title>


</head>
<body>

<h1><time>00:00:00</time></h1>

<script>
var h1 = document.getElementsByTagName('h1')[0],
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

/* Stop button */
stop.onclick = function() {
clearTimeout(t);
}

/* Clear button */
clear.onclick = function() {
h1.textContent = "00:00:00";
seconds = 0; minutes = 0; hours = 0;
}


</script>

<p >
Emotion is a mental state variously associated with thoughts feelings behavioural responses and a degree of pleasure or displeasure.

</p>





<form action="StoreInfo" id="usrform" method="post">
  <input type="hidden" id="secs" name="seconds">
  <textarea rows="10" cols="150" name="test" form="usrform">
</textarea>
  <input type="submit" value="End Test">
</form>

<div id="some_div">
</div>
</body>
</html>