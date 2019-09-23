<div>
<form onsubmit="register()">
<h2>Reserve Cans</h2>
<label>Number of Cans to Reserve:</label>
<input type="text" name="reservecans" size=25  id="reservecans" placeholder="Enter the number of cans" required autofocus/>
 <input type="submit" value="Submit" class="btn btn-success">
        <button type="reset" class="btn btn-danger" value="clear">Clear</button><br/>
        <a href="?pageName=viewstock.jsp"><u>Available Stock</u></a>

</form>
<script type="text/javascript">
function register(){
	event.preventDefault();

	var reservecans = document.getElementById("reservecans").value;
	var formData = "reservecans=" + reservecans;

	var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
	var url = "http://localhost:8080/waterplant_webappapi/ReserveCanServlet?userId="+ user.id+"&name="+user.name+"&mobileNo="+user.mobileNo + "&"+ formData;
	console.log(url);

	var formData = {};
	$.get(url, function(response) {
	    console.log(response);
	    
	   
	    var msg=JSON.parse(response);
	    
	     if (msg.errorMessage!=null) {
	        alert(msg.errorMessage);
	        window.location.href = "?pageName=reservecan.jsp";
	       
	    } else {
	        
	        alert("Reserved Cans successfully");
	        var id="Your reservation id is:"+msg.reserveId;
	        alert(id);
	        window.location.href = "?pageName=useraction.jsp";
	        
	    }
	});
	
	
}

</script>
</div>