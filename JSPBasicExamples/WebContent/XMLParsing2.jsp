<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id= "data"></div>
	<script type="text/javascript">
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function(){
			if(this.readyState==4 && this.status == 200) {
				f(this);
			}
		};	
		xmlhttp.open("GET","cd_catalog.xml",true);
		xmlhttp.send();
		
		function f(xml) {
			 var x, i, xmlDoc, txt;
			  xmlDoc = xml.responseXML;
			  txt = "";
			  x = xmlDoc.getElementsByTagName("TITLE");
			  for (i = 0; i< x.length; i++) {
			    txt += x[i].childNodes[0].nodeValue + "<br>";
			  }
			  document.getElementById("data").innerHTML = txt;
		}
	</script>
</body>
</html>