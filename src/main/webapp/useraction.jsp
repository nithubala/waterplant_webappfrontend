
	<div>
	<div id="name" ></div>
	<form>
     <div class="container-fluid">
		<div class="row">
			<div class="col">
				<a href="?pageName=ordercan.jsp"><u>Order Cans</u></a> <br />
				 <a href="?pageName=reservecan.jsp"><u>Reserve Cans</u></a> <br /> 
				 <a href="?pageName=orderreservecan.jsp"><u>OrderReserved Cans</u></a> <br />
				  <a href="?pageName=cancelorder.jsp"><u>CancelOrder Cans</u></a><br> <br />
				  <input type="button"  value="Logout" class="btn btn-danger" onclick= "logout()">
			</div>
		</div>
	</div>
	</form>
	<script>
	
	    function displayname(){
	        var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
	        var name=user.name;
	        document.getElementById("name").innerHTML="<h2>Welcome  " + name+"</h2>";
	        return name;
	        
	        }
        function logout(){
            
            localStorage.clear();
            window.location.href = "?pageName=home.jsp";
            }

        displayname();
	    </script>
	    
</div>