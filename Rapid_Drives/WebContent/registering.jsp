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
		String fnm = request.getParameter("fnm");
		String lnm = request.getParameter("lnm");
		String email = request.getParameter("email");
		String ph = request.getParameter("ph");
		String lcno = request.getParameter("lcno");
		String gen = request.getParameter("gender");		
		String pw = request.getParameter("cpass");
		
		//System.out.println(fnm);
		//System.out.println(lnm);
		//System.out.println(email);
		//System.out.println(ph);
		//System.out.println(lcno);
		//System.out.println(gen);
		//System.out.println(pw);
		try {
			PreparedStatement ps = con.prepareStatement("insert into users (fnm,lnm,email,ph,lcno,gen,pw) values('"+fnm+"','"+lnm+"','"+email+"','"+ph+"','"+lcno+"','"+gen+"','"+pw+"')");
			int i = ps.executeUpdate();
			
			if(i>0){
				response.sendRedirect("home.jsp");
				session.setAttribute("email", email);
			}
		} catch(Exception e) {
			out.print(e);
		}
	%>
</body>
</html>