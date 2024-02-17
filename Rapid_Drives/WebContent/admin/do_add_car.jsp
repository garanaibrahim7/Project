<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.io.*, java.nio.file.*, java.nio.file.attribute.*, java.util.UUID" %>
<%@ page import="javax.servlet.http.Part" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ include file="../connection.jsp" %>


<%
	String fnm = request.getParameter("name");
	String lnm = request.getParameter("capacity");
	String email = request.getParameter("rent");
	String lcno = request.getParameter("fuel");
	
	
	String uploadDir = "uploads/";
	
	Part filePart = request.getPart("imageFile");
    String fileName = getFileName(filePart);
    String filePath = uploadDir + fileName;
	
    try (InputStream inputStream = filePart.getInputStream()) {
        Files.copy(inputStream, Paths.get(filePath), StandardCopyOption.REPLACE_EXISTING);
    }

    out.println("Uploaded Image Path: " + filePath);
	
	
%>

<%!
    // Method to extract filename from Part object
    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
%>



</body>
</html>