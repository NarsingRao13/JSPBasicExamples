<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	table,tr,td,th {
		border: 2px solid black;
		border-collapse: collapse;
		padding: 10px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th>JSP Action Tag</th>
			<th>Description</th>
		</tr>
		<tr>
			<td><a href="useBeanTag.jsp">jsp:useBean</a></td>
			<td>creates or locates bean object(to create a object of a class)</td>
		</tr>
		<tr>
			<td><a href="forwardTag.jsp">jsp:forward</a></td>
			<td>forwards the request and response to another resource/ jsp or any static page.</td>
		</tr>
		<tr>
			<td><a href="includeTag.jsp">jsp:include</a></td>
			<td>The jsp:include action tag is used to include the content of another resource it may be jsp, html or servlet.<br>
			The jsp include action tag includes the resource at request time so it is better for dynamic pages because there might be changes in future.</td>
		</tr>
		<tr>
			<td><a href="setPropertyAndgetPropertyTag.jsp">jsp:setProperty and jsp:getProperty</a></td>
			<td>The setProperty and getProperty action tags are used for developing web application with Java Bean.<br>
			In web devlopment, bean class is mostly used because it is a reusable software component that represents data.<br>
			The jsp:setProperty action tag sets a property value or values in a bean using the setter method.<br>
			The jsp:getProperty action tag returns the value of the property.
			</td>
		</tr>
	</table>
</body>
</html>