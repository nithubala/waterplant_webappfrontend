<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>View Stock</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">

function View()
{
   var url = "http://localhost:8080/waterplant_webapp/ViewStockServlet";
   $.getJSON(url, function(response){
       var data = response;
       var content="";
       document.getElementById("tbl").innerHTML="";
       for(let stock of data){
           content += "<tr>";
           content += "<td>" + stock.date.day + "-" + stock.date.month + "-" + stock.date.year+ "</td>";
           content += "<td>" + stock.availableCans + "</td>";
           content += "</tr>";
       }
       //alert(content);
       document.getElementById("tbl").innerHTML = content;
   });
}
</script>
</head>
<body><jsp:include page="headers.jsp"></jsp:include>
<div id="stock-section">
<h3>Available Stock</h3>
       <table border="1" class="table table-condensed">
           <thead>
               <tr>
                   <th>Date</th>
                   <th>Available Cans</th>
                </tr>
           </thead>
           <tbody id="tbl">
           
           </tbody>
       </table>
   </div>
   <script>
View();
</script>
<button onclick="location.href='adminaction.jsp';">Back</button>


</body>
</html>
