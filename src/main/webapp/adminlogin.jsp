
<div>
	<form onsubmit="register()">
		<h3>AdminLogin</h3>
		<br /> <label>Email:</label> <input type="email" name="email"
			id="email" size=25 placeholder="Enter the email" required autofocus />
		<br /> <label>Password:</label><input type="password" name="password"
			id="password" size=25 placeholder="Enter the password" required /> <br>
		<br /> <input type="submit" value="Login" class="btn btn-success">
		<button type="reset" class="btn btn-danger" value="clear">Clear</button>
		<br /> <a href="?pageName=home.jsp"><u>Home?</u></a>
	</form>
	<script>
		function register() {

			event.preventDefault();
			var email = document.getElementById("email").value;
			var password = document.getElementById("password").value;
			var formData = "email=" + email + "&password=" + password;
			console.log(formData);

			var url = "http://localhost:8080/waterplant_webappapi/AdminLoginServlet?"
					+ formData;
			console.log(url);

			var formData = {};
			$.get(url, function(response) {
				console.log(response);

				console.log(response.errorMessage);
				var msg = JSON.parse(response);

				if (msg.errorMessage != null) {
					alert("Invalid Email/Password");
					window.location.href = "?pageName=adminlogin.jsp";
					
				} else {
					alert("Loggedin Successfully");
					window.location.href = "?pageName=adminaction.jsp";

				}
			});
		}
	</script>
</div>