<html>
<head>
<title>Water Plant</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>

<style type="text/css">
    
    label{
   width: 120px;
   display: inline-block;
   text-align: center;
    }
</style>
</head>
<body style="text-align: center">
<jsp:include page="headers.jsp"></jsp:include>

<div class="jumbotron">
  <h3><u> Water Plant Online Services!!!!!!</u></h3>
</div>
	<div class="view" id="view">
        <%
            String pageName = request.getParameter("pageName");

            if (pageName == null || "".equals(pageName)) {
                pageName = "home.jsp";
            }
           
        %>

        <jsp:include page="<%=pageName%>"></jsp:include>
    </div>
</body>
</html>
