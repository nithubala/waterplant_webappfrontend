<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Can</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
</head>
<body>
<jsp:include page="headers.jsp"></jsp:include>
<form onsubmit="register()">
<h2>Order Cans</h2>
<label>Enter the Number of Cans to order:</label>
<input type="text" name="ordercans" id="ordercans" required autofocus/>
 <input type="submit" value="Submit" class="btn btn-success">
        <button type="reset" class="btn btn-danger" value="clear">Clear</button><br/>
        <a href="viewstock.jsp">Available Stock</a>

</form>
<script type="text/javascript">
function register(){
event.preventDefault();

var ordercans = document.getElementById("ordercans").value;

var formData = "ordercans=" + ordercans;

var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
var url = "http://localhost:8080/waterplant_webapp/OrderCanServlet?userId="+ user.id+"&name="+user.name+"&mobileNo="+user.mobileNo+"&address="+user.address + "&"+ formData;
console.log(url);

var formData = {};
$.get(url, function(response) {
    console.log(response);
    
   
    var msg=JSON.parse(response);
    
     if (msg.errorMessage!=null) {
        alert(msg.errorMessage);
        window.location.href = "ordercan.jsp";
       
    } else {
        
        alert("Ordered Cans successfully");
        window.location.href = "useraction.jsp";
        
    }
});
}

</script>
</body>
</html>