<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("user", "Narsing");
		Cookie ck = new Cookie("name", "abhishek");
		response.addCookie(ck);
	%>
	<p><a href="Division.jsp">Exception Handling in JSP</a></p>
	<p><a href="ActionTags.jsp">Action Tags in JSP</a></p>
	<p>Expression Language(EL) param ,sessionScope and cookie example</p>
	<form action="ExpressionLanguage.jsp">
		Enter Name:<input type="text" name="name" /><br />
		<br /> <input type="submit" value="go" />
	</form>
	<br>
	<p>JSTL SP Standard Tag Library</p>
	<hr>
	
	
	<p><a href="Pagniation?page=1">View Employees</a></p>
	<p><a href="ajax1.jsp">Ajax Example1</a></p>
	
</body>
</html>