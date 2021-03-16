<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page errorPage="error.jsp" %>
	<%
		String num1 = request.getParameter("1stNum");
		String num2 = request.getParameter("2ndNum");
		int r = Integer.parseInt(num1)/Integer.parseInt(num2);
		out.print("division of numbers is: "+r);
	%>
</body>
</html>