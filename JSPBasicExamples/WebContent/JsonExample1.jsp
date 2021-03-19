<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p id="demo"></p>
<p id="demo1"></p>
<script type="text/javascript">
	var myjson = '{"fname":"Rao","age":"22","city":"Hyderabad"}';
	var obj = JSON.parse(myjson);
	document.getElementById("demo").innerHTML = obj.fname;
	
	var myObj1 = {name: "John", age: 31, city: "New York"};
	var myJSON = JSON.stringify(myObj1);
	localStorage.setItem("testJSON",myJSON);
	
	var text = localStorage.getItem("testJSON");
	var ob = JSON.parse(text);
	console.log(ob);
	document.getElementById("demo1").innerHTML = ob.name;
	
</script>

</body>
</html>