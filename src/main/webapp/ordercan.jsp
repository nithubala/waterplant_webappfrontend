<div>
<form onsubmit="register()">
<h2>Order Cans</h2>
<label>Number of Cans to order:</label>
<input type="text" name="ordercans" size=25  id="ordercans" placeholder="Enter the number of cans" required autofocus/>
 <input type="submit" value="Submit" class="btn btn-success">
        <button type="reset" class="btn btn-danger" value="clear">Clear</button><br/>
        <a href="?pageName=viewstock.jsp"><u>Available Stock</u></a>

</form>
<script type="text/javascript">
function register(){
event.preventDefault();

var ordercans = document.getElementById("ordercans").value;

var formData = "ordercans=" + ordercans;

var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
var url = "http://localhost:8080/waterplant_webappapi/OrderCanServlet?userId="+ user.id+"&name="+user.name+"&mobileNo="+user.mobileNo+"&address="+user.address + "&"+ formData;
console.log(url);

var formData = {};
$.get(url, function(response) {
    console.log(response);
    
   
    var msg=JSON.parse(response);
    
     if (msg.errorMessage!=null) {
        alert(msg.errorMessage);
        window.location.href = "?pageName=ordercan.jsp";
       
    } else {
        
        alert("Ordered Cans successfully");
        window.location.href = "?pageName=useraction.jsp";
        
    }
});
}

</script>
</div>