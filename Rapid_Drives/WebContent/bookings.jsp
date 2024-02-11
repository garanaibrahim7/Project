<%@ include file="header.jsp" %>
<%@ include file="connection.jsp" %>
<head>
	<style>
		.main{
	    	width: 500px;
		    height: 150px;
		    background: linear-gradient(to top, rgba(0,0,0,0.8)50%,rgba(0,0,0,0.8)50%);
		    position: absolute;
		    top:150px;
		    left: 480px;
		    border-radius: 10px;
		    padding: 20px;
		    color: white;
		    font-size: 12px;
		    font-family: Arial;
		}
	</style>
</head>

<body>

<% 

if(session.getAttribute("email") != null) {
	String email=(String)session.getAttribute("email");
    	ResultSet rs;
		Statement st;
    try {
        st = con.createStatement();
        rs = st.executeQuery("SELECT *FROM bookings where email = '"+email+"'");

        while (rs.next()) {			
			
	%>


	<div class="main">
	
		<h1>CAR NAME : <% out.print(rs.getString("car_name")); %></h1><br>
        <h1>NO OF DAYS : <% out.print(rs.getString("days")); %></h1><br>
        <h1>BOOKING STATUS : <% out.print(rs.getString("status")); %></h1><br>
	
	</div>
	
	<% }
    } catch (SQLException e) {
 		e.printStackTrace();
    }
    }else {
    	response.sendRedirect("login.jsp");
    }
	%>
</body>
</html>