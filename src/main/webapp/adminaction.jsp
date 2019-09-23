<div>
<form>
<h3>Welcome Admin</h3>
<div class="container-fluid">
		<div class="row">
			<div class="col">
				<a href="?pageName=viewstock.jsp">View Stock</a> <br />
				 <a href="?pageName=updatestock.jsp">Update Stock</a> <br /> 
				 <a href="?pageName=viewuserlist.jsp">View UsersList</a><br> <br />
				 <input type="button"  value="Logout" class="btn btn-danger" onclick= "logout()">
			</div>
		</div>
	</div>
</form>
<script>
	
	  function logout(){
            
            localStorage.clear();
            window.location.href = "?pageName=home.jsp";
            }

        displayname();
	    </script>
</div>