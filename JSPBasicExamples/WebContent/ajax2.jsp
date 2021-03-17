<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.util.ArrayList" %>
	<%
		ArrayList<String> data = new ArrayList<String>();
		data.add("ehu");
		data.add("sfg");
		data.add("qetdfsa");
		data.add("efadvcx");
		data.add("324rwfd");
		data.add("yjhgf");
		data.add("trgfdbv dgf");
		data.add("4t3rffs");
		data.add("iykjf");
		data.add("35tegujgh");
		data.add("tey45 r");
		data.add("54 tb erg");

		String p = request.getParameter("q");
		String suggestions = "";
		for (String n : data) {
			if (n.contains(p)) {
				if (suggestions == null || suggestions.equals("")) {
					suggestions = n;
				} else {
					suggestions += "," + n;
				}
			}
		}
		
		out.print(suggestions == null || suggestions.equals("")? "No suggestions" : suggestions);
	%>
</body>
</html>