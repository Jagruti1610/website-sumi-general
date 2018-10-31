<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	
	<style>
		#text {
		  z-index: 100;
		  text-align: center;
		  position: absolute;
		  color: #1B4F72;
		  font-size: 48px;
	/*	  font-weight: bold;*/
		  font-family: 'Roboto', sans-serif;
		  left: 30%;
		  top: 60%;
		  
		}
		
	
	</style>
	
</head>
<body>

	<jsp:include page="header.jsp" flush="true" />
	
	<div id="contactUsHeader">
	
		<div id="text">We nurture relationships</div>
	
	
		
				
		<div class="indexContainer">
				<jsp:include page="stickyIcons.jsp" flush="true" />
				<div class="pageTitle"> Contact Us</div>
	   			<hr>
				
				<span style="margin-top:20px;">I am looking for</span>
					<select style="width:50%; margin-top:20px;">
					        <option>Job</option>
					        <option>Career Guidance</option>
					        <option>Empanelment</option>
					        <option>Others</option>
					 </select>
					
				
					
			  		
			  	<div class="form-group" style="margin-top:20px;">
			  		<form class="form-inline" method="post" action="${pageContext.request.contextPath}/ClientContact">
					    <input placeholder="Name" class="form-control" id="clientNameTextbox" name="clientNameTextbox" type="text" required>			    		
			    		<br>
					     <input placeholder="Company Name" class="form-control" id="clientCompanyNameTextbox" name="clientCompanyNameTextbox" type="text" required>
			    		<br><br>
			    		
			    		<input placeholder="Phone Number" class="form-control" rows="1" id="clientPhoneNoTextbox"  name="clientPhoneNoTextbox" required></textarea>
			    		<br><br>		    		
			    	
					    <input placeholder="Mobile Number" class="form-control" rows="1" id="clientMobNoTextbox" name="clientMobNoTextbox"required></textarea>
			    		<br><br>	
			    		
			    		
					    <input placeholder="Location" class="form-control" rows="1" id="clientLocationTextbox" name="clientLocationTextbox"required></textarea>
					    <br><br>  		
			    		
			    		
					     <input placeholder="Email Id" class="form-control" rows="1" id="clientEmailIdTextbox" name="clientEmailIdTextbox"required></textarea>
					     <br><br>  				    		
			    		
					     <textarea placeholder="Hey! We look forward to connect" class="form-control" rows="1" id="clientMessageTextarea" name="clientMessageTextarea"></textarea>
			    		
			    		<br><br>
			    		 		
			    		
			    		<button type="submit" class="button" name="submitButton" id="submitButton">Submit</button>
			    	</form>
	    		</div>
	    		
		
				
				<!-- container div ends -->
		</div>
	
	<!-- header div ends -->
	</div>

</body>
</html>