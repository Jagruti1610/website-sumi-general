<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Taviraj:500" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:500" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	<title>Client Contact</title>
	
	<style>
		#text {
		  z-index: 100;
		  text-align: center;
		  position: absolute;
		  color: #F08080;
		  font-size: 48px;
		  font-weight: bold;
		  font-family: 'Taviraj', sans-serif;
		  left: 30%;
		  top: 60%;
		}

	</style>
</head>
<body> 
	<header>
		<jsp:include page="header.jsp" flush="true" />
	</header>
	<div class="wrapper">
		<img src="${pageContext.request.contextPath}/images/client-contact-header.jpg">
		
			<div id="text">We nurture relationships</div>
		
	</div>
	<div class="container">
		<form class="form-inline" method="post" action="${pageContext.request.contextPath}/ClientContact" style='margin:25px'>
			<p style="font-size:24px; font-family:'Roboto', sans-serif; margin-left:25px; margin-top:25px; align:center">
				   Let's connect!</p>
				   <p>Leave us a note we will contact you!</p>
		  		
		  	<div class="form-group">
		  	
			    <input placeholder="Name" class="form-control" id="clientNameTextbox" name="clientNameTextbox" type="text" required>
	    		
	    		<div class="clear"></div>
			  		
	    		
			     <input placeholder="Company Name" class="form-control" id="clientCompanyNameTextbox" name="clientCompanyNameTextbox" type="text" required>
	    		
	    		<div class="clear"></div>
				  		
	    		
	    		 <br>
			     <input placeholder="Phone Number" class="form-control" rows="1" id="clientPhoneNoTextbox"  name="clientPhoneNoTextbox" required></textarea>
	    		
	    		<br> <br>
	    		
	    	
			    <input placeholder="Mobile Number" class="form-control" rows="1" id="clientMobNoTextbox" name="clientMobNoTextbox"required></textarea>
	    		
	    		<br><br>
	    		
	    		
			      <input placeholder="Location" class="form-control" rows="1" id="clientLocationTextbox" name="clientLocationTextbox"required></textarea>
	    		
	    		<br><br>
	    		
	    		
			      <input placeholder="Email Id" class="form-control" rows="1" id="clientEmailIdTextbox" name="clientEmailIdTextbox"required></textarea>
	    		
	    		<br><br>
	    		
	    		
			     <textarea placeholder="Hey! We look forward to connect" class="form-control" rows="1" id="clientMessageTextarea" name="clientMessageTextarea"></textarea>
	    		
	    		<br><br>
	    		 		
	    		
	    		<button type="submit" class="button" name="submitButton" id="submitButton">Submit</button>
    		</div>
    		
		</form>
	</div>
	
	
</body>
</html>