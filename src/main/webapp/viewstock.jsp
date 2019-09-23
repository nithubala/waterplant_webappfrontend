<div>
<script type="text/javascript">

function View()
{
   var url = "http://localhost:8080/waterplant_webappapi/ViewStockServlet";
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
<button onclick="location.href='?pageName=adminaction.jsp';">Back</button>

</div>
