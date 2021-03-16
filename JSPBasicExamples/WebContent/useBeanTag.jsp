<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <h3>Example of jsp:useBean tag </h3>
	 <jsp:useBean id="ob1" class="com.package1.Calculator"/>
	 <%
	 	int r = ob1.cube(29);
	 	out.print("cube of 29 is: "+r);	
	 %>
</body>
</html>