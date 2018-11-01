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
	   		<div class="left">		
				<span>I am looking for</span>
			
			  	<form class="form-inline" method="post" action="${pageContext.request.contextPath}/ClientContact">
			  		
			  		<div class="form-group" >
			  		 
			  			<select>
			  				<option>Select</option>
					        <option>Job</option>
					        <option>Career Guidance</option>
					        <option>Empanelment</option>
					        <option>Others</option>
					 </select>
					 	<div class="clear"></div>
					    <input placeholder="Name"  id="clientNameTextbox" name="clientNameTextbox" type="text" required>			    		
			    		<div class="clear"></div>
					     <input placeholder="Company Name"  id="clientCompanyNameTextbox" name="clientCompanyNameTextbox" type="text" required>
			    		<div class="clear"></div>
			    		
			    		<input placeholder="Phone Number"  rows="1" id="clientPhoneNoTextbox"  name="clientPhoneNoTextbox" type="text" required></textarea>
			    		<div class="clear"></div>		    		
			    	
					    <input placeholder="Mobile Number"  rows="1" id="clientMobNoTextbox" name="clientMobNoTextbox" type="text" required></textarea>
			    		<div class="clear"></div>	
			    		
			    		
					    <input placeholder="Location"  rows="1" id="clientLocationTextbox" name="clientLocationTextbox" type="text" required></textarea>
					    <div class="clear"></div>
			    		
			    		
					     <input placeholder="Email Id"  rows="1" id="clientEmailIdTextbox" name="clientEmailIdTextbox" type="text" required></textarea>
					     <div class="clear"></div>  				    		
			    		
					     <textarea placeholder="Hey! We look forward to connect"  rows="1" id="clientMessageTextarea" name="clientMessageTextarea" ></textarea>
			    		
			    		 <div class="clear"></div>
			    		 		
			    		
			    		<button type="submit" class="button" name="submitButton" id="submitButton" >Submit</button>
			    	  </div>
			    	</form>
			   </div> 	
	    		
				<div class="right">
					
					<div><img src="${pageContext.request.contextPath}/images/office-icon.png" style="width:25px; height:30px;">
					Sumi Services<br> Office No 14, Parshwa Giriraj Bldg<br> Hari Shankar Joshi Road, Dahisar East,<br> Mumbai &#8212; 400068
					</div>
					
	                     <span><img src="${pageContext.request.contextPath}/images/cell-icon.png" style="width:25px; height:30px;"> 8655056303 
	                     </span> 
	                 
	                     <span><img src="${pageContext.request.contextPath}/images/cell-icon.png" style="width:25px; height:30px;">7738779526
	                     </span>
                    
                     <br><br>
                      <img src="${pageContext.request.contextPath}/images/WhatsApp_Logo.png" style="width:25px; height:30px;">9967755552
	                        
                     <iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3060.6645205664345!2d8.584972315150939!3d39.90414279457802!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12dd9be3f40242ad%3A0x11a591da0ed6a074!2sItal%40Security+Agency!5e0!3m2!1sit!2sit!4v1469543170307" width="400" height="300" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
				</div>
				<!-- container div ends -->
		</div>
	
	<!-- header div ends -->
	</div>

</body>
</html>
