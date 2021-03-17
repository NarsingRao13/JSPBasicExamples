<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	
	function showsuggestions(str) {
		if (str.length == 0) {
			document.getElementById("hint").innerHTML = "";
		} else {
			var xmlOb = new XMLHttpRequest();
			xmlOb.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					document.getElementById("hint").innerHTML = this.responseText;
				}
			}

			xmlOb.open("GET", "ajax2.jsp?q=" + str, true);
			xmlOb.send();
		}
	}
	
	function loadDoc() {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("chtext").innerHTML = this.responseText;
		      console.log(this.responseText);
		    }
		  };
		 // xhttp.open("GET", "https://jsonplaceholder.typicode.com/todos/1", true);
		  xhttp.open("GET", "ajaxtext", true);
		 
		  xhttp.send();
		}
</script>
</head>
<body>
	Type something : <input type="text" onkeyup="showsuggestions(this.value)">
	<p id= "hint"></p><hr>
	<p id = "chtext"></p>
	<button onclick="loadDoc()">Change Text</button>
</body>
</html>