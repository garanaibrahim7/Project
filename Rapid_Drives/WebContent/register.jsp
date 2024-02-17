<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register to Rapid Drives</title>
    <link rel="stylesheet" href="CSS/style.css" type="text/css">
    <link rel="stylesheet" href="CSS/reg.css" type="text/css">

</head>

<body>
    <div class="hai">
        <div class="navbar">
            <div class="icon">
                <a href="home.jsp"><h2 class="logo">Rapid Drives</h2></a>
            </div>         
        </div>
    </div>
 <div class="main">
        
        <div class="register">
        <h2>Register Here</h2>
        
        <form id="register" action="registering.jsp" method="POST" onsubmit="return validatePassword()">
            
            <input type ="text" name="fnm"
            id="name" placeholder="Enter Your First Name" required>
            <br><br>

            <input type ="text" name="lnm"
            id="name" placeholder="Enter Your Last Name" required>
            <br><br>

            <input type="email" name="email"
            id="name" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="ex: example@ex.com"placeholder="Enter Valid Email" required>
            <br><br>
            
            <input type="text" name="lcno"
            id="name" placeholder="Enter Your License number" required>
            <br><br>

            <input type="tel" name="ph" maxlength="10" onkeypress="return onlyNumberKey(event)"
            id="name" placeholder="Enter Your Phone Number" required>
            <br><br>


            <input type="password" name="pass" maxlength="12"
            id="psw" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
            <br><br>
            
            <input type="password" name="cpass" 
            id="cpsw" placeholder="Renter the password" required>
            <br><br>
            <table>
		        <tr>
		            <td>
		                <input type="radio" id="one" name="gender" value="male"/>
		                <label for="one">Male</label>
		            </td>
		            <td>
		                <input type="radio" id="two" name="gender" value="female"/>
		                <label for="two">Female</label>
		            </td>
		        </tr>
		    </table>
            <br><br>

            <input class="btnn" type="submit" value="Register" name="register"></input>
            
        
        
        </input>
            
        </form>
        </div> 
    </div>
    <div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
<script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
}

  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }

  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
function validatePassword() {
    var password = document.getElementById("psw").value;
    var confirmPassword = document.getElementById("cpsw").value;

    // Validate password length
    if (password.length < 8) {
        alert("Password must be at least 8 characters long");
        return false;
    }

    // Validate password and confirm password match
    if (password !== confirmPassword) {
        alert("Passwords do not match");
        return false;
    }

    return true; // Form submission allowed if all validations pass
}
    function onlyNumberKey(evt) {
          
        // Only ASCII character in that range allowed
        var ASCIICode = (evt.which) ? evt.which : evt.keyCode
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
            return false;
        return true;
    }
</script>
</body>
</html>