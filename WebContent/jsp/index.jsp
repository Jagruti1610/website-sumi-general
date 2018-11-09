<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	
	
	
	

<!-- // -->
	
	
	
	<style>
		
		#text {
		  z-index: 100;
		  text-align: center;
		  position: absolute;
		  color: darkgray; /*#BE4C66;*/
		  font-size: 100px;
		  font-weight: bold;
		  font-family: 'Roboto', sans-serif;
		  left: 10%; 
		  right:40%;
		  top: 50%;
		}
		
		
		
	
		
		
	</style>
	
	
	
</head>

<body>
		
	<header>
	        <jsp:include page="header.jsp" flush="true" />  
	 </header>

	
	 <div id="indexPageHeader" class="">
	 
			
		<!--  div id="text">
			JOB
		
		</div-->
		
		<div class="overlay-img"></div>
		
		
		
		<div class="indexContainer">
			 <jsp:include page="stickyIcons.jsp" flush="true" />
		
		<!-- h1>Let's see if margin is in effect</h1-->
		
		
		
    	</div>
  

	</div>

	
	

		
		

</body>
</html>
