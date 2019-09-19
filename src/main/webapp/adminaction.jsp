<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body style="text-align: center">
<jsp:include page="headers.jsp"></jsp:include>
<form>
<h3>Welcome Admin</h3>
<div class="container-fluid">
		<div class="row">
			<div class="col">
				<a href="viewstock.jsp">View Stock</a> <br />
				 <a href="updatestock.jsp">Update Stock</a> <br /> 
				 <a href="viewuserlist.jsp">View UsersList</a><br> <br />
				 <input type="button"  value="Logout" class="btn btn-danger" onclick= "logout()">
			</div>
		</div>
	</div>
</form>
<script>
	
	  function logout(){
            
            localStorage.clear();
            window.location.href = "index.jsp";
            }

        displayname();
	    </script>
</body>
</html>