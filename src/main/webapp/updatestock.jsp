<div>
<h3>Update Stock</h3>
<form onsubmit="register()">

<label>Enter the Number of Cans to add:</label>
<input type="text" name="noofcans" id="addedCans" required autofocus/>
 <input type="submit" value="Submit" class="btn btn-success">
        <button type="reset" class="btn btn-danger" value="clear">Clear</button><br/>

</form>
<script>

function register(){
	 event.preventDefault();
	 var addedCans = document.getElementById("addedCans").value;
     var formData = "addedCans=" + addedCans ;
   
    
    var url = "http://localhost:8080/waterplant_webappapi/UpdateStockServlet?" + formData;
    console.log(url);
    
    var formData = {};
    $.get(url, function(response) {
        console.log(response);
        
        var msg=JSON.parse(response);
        
         if (msg.errorMessage!=null) {
            alert(msg.errorMessage);
            window.location.href = "?pageName=updatestock.jsp";
           
        } else {
            
           alert("Updated Stock successfully");
            window.location.href = "?pageName=adminaction.jsp";
            
        }
    });
}

</script>
</div>