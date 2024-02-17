<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../connection.jsp" %>

<%
String book_id = request.getParameter("book_id");
String car_name = request.getParameter("car_name");

try {
	PreparedStatement ps = con.prepareStatement("update bookings set status='Rent Completed' where book_id='"+book_id+"'");
	int a = ps.executeUpdate();
	
	PreparedStatement ps2 = con.prepareStatement("update cars set available='YES' where name='"+car_name+"'");
	int b = ps2.executeUpdate();
	
	if(a>0 & b>0){
		response.sendRedirect("bookings.jsp");
	}
	
} catch(Exception e) {
	out.print(e);
}
%>
</body>
</html>