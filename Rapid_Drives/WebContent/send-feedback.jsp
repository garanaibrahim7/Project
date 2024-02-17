<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connection.jsp" %>

<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String resp = request.getParameter("experience");
	String comment = request.getParameter("comments");

	try {
		PreparedStatement ps = con.prepareStatement("insert into feedbacks (name,email,resp,comment) values('"+name+"','"+email+"','"+resp+"','"+comment+"')");
		int i = ps.executeUpdate();
		
		if(i>0){
			%> <script>alert("Thanks for Your Valueable Feedback :)")
			window.location.href = "index.jsp"; </script>
		<%}
	} catch(Exception e) {
		out.print(e);
	}
%>
</body>
</html>