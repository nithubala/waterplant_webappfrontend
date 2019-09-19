<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>

<style type="text/css">
    
    label{
   width: 110px;
   display: inline-block;
   text-align: center;
    }
</style>

</head>
<body style="text-align:center">

<jsp:include page="headers.jsp"></jsp:include>
<br/>
<form onsubmit="register()">
<h2>User Login</h2>
<br/>
					<label>Email:</label> <input type="email" name="email" id="email"
						size=25 pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
		title="Must contain characters followed by @ sign,and chatracters followed by . at which domain"
						placeholder="Enter the email" required autofocus/><br /> 
					<label>Password:</label><input type="password" name="password" id="password"
						size=25 pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
		title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						placeholder="Enter the password" required /><br> <br />
					 <input type="submit" value="Login" class="btn btn-success">
        <button type="reset" class="btn btn-danger" value="clear">Clear</button><br/>
					<a href="adminlogin.jsp"><u>AdminLogin?</u></a>
					<a href="index.jsp"><u>Home?</u></a>
				
		</form>
		 <script>
        function register() {
            //alert('register');
            event.preventDefault();
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var formData = "email=" + email + "&password=" + password;
            console.log(formData);
            //alert(formData);
            var url = "http://localhost:8080/waterplant_webappapi/LoginServlet?" + formData;
            console.log(url);
            //alert(url);
            var formData = {};
            $.get(url, function(response) {
                console.log(response);
                localStorage.setItem("LOGGED_IN_USER",response);
               
                var msg=JSON.parse(response);
               
                if (msg.errorMessage!=null) {
                    
                    alert("Invalid Email/Password");
                    window.location.href = "userlogin.jsp";
                } else {
                    
                	 alert("Successfully Loggedin");
                     window.location.href = "useraction.jsp";
                    
                }
            });
        }
    </script>
    </body>
    <script>
    function displayname(){
        var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
        var name=user.name;
        document.getElementById("demo").innerHTML="Welcome" + name;
        return name;
        
        }
    </script>
</html>