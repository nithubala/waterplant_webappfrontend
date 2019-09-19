<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Stock</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
</head>
<body>
<jsp:include page="headers.jsp"></jsp:include>

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
   
    
    var url = "http://localhost:8080/waterplant_webapp/UpdateStockServlet?" + formData;
    console.log(url);
    
    var formData = {};
    $.get(url, function(response) {
        console.log(response);
        
        var msg=JSON.parse(response);
        
         if (msg.errorMessage!=null) {
            alert(msg.errorMessage);
           
        } else {
            
            //alert(msg.message);
            alert("Updated Stock successfully");
            window.location.href = "adminaction.jsp";
            
        }
    });
}

</script>
</body>
</html>