<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register to Rapid Drives</title>
    <link rel="stylesheet" href="CSS/style.css" type="text/css">

    <style>
        
    </style>
</head>




</head>
<body>
    <div class="hai">
        <div class="navbar">
            <div class="icon">
                <h2 class="logo">Rapid Drives</h2>
            </div>         
        </div>
    </div>

        <div class="content">
            <h1>Rent Your <br><span>Dream Car</span></h1>
            <p class="par">Live the life of Luxury.<br>
                Just rent a car of your wish from our vast collection.<br>Enjoy every moment with your family<br>
                 Join us to make this family vast.  </p>
            <button class="cn"><a href="register.jsp">JOIN US</a></button>
            <div class="form">
                <h2>Login Here</h2>
                <form  action="do-login.jsp" method="POST"> 
                <input type="email" name="email" placeholder="Enter Email Here">
                <input type="password" name="pass" placeholder="Enter Password Here">
                <input class="btnn" type="submit" value="Login" name="login"></input>
                </form>
                <p class="link">Don't have an account?<br>
                <a href="register.jsp">Sign up</a> here</a></p>
                <p class="liw">or<br>Log in as</p>
                <div class="logins" align="center">
                    <a href="admin/login.jsp">ADMIN</a>             
                </div>
            </div>
            
        </div>
    </div>
    <!-- <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script> -->

</body>
</html>