<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	
	
	
	<title>Client Contact</title>
	
	<style>
	
		#text {
		  z-index: 100;
		  text-align: center;
		  position: absolute;
		  color: #1B4F72;
		  font-size: 40px;
	/*	  font-weight: bold;*/
		  font-family: 'Roboto', sans-serif;
		  left: 45%;
		  
		}
		
		/*  for marquee */
		
				
	  .marquee {
		  height: 180px;
	/*	  width: 1000px;*/
		/*  border: 2px solid #eee;*/
		  overflow: hidden;
		/*  box-sizing: border-box;*/
		  position: relative;
		  margin: 0 0 0 0;
		  border: none;
		  padding: 0 0 0 0;
		}
		
		.marquee--inner {
		  display: block;
		/*  width: 200%;*/
		  margin: 70px 0;
		  position: absolute;
		  animation: marquee 30s linear infinite;
		  background-color: white;
		}
		
		.marquee--inner:hover {
		  animation-play-state: paused;
		}
		
		
	
		.marquee span {
		  float: left;
		  width: 100%;
		}
		
		.marquee img{
			margin: 0 20px 0 20px;
		
		}
		
		
		@keyframes marquee {
		  0% { left: 0; }
		  100% { left: -100%; }
		}
		
	</style>
</head>
<body> 
	<header>
		<jsp:include page="header.jsp" flush="true" />
	</header>
	
		<div id="clientHeader">
		
		
			<div id="text"><!-- Our Clients--></div>
			<!-- beginning of marquee ribbon -->
		
			<div class="marquee" style="z-index:100;">
				<div class="marquee--inner">
				<span>
				    <img src="${pageContext.request.contextPath}/logos/achillies.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Aegis_logo_img.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Allsec-Logo.png" style="width:320px; height:125px;"/>
				    <img src="${pageContext.request.contextPath}/logos/Andromeda_site-logo1.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Anugrah_Logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/BlueStar_logo.png"  />
				    <img src="${pageContext.request.contextPath}/logos/bonanza_logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/brindley_technologies_logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Choice_Logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Datamatics_logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Epic_logo.png" style="width:320px; height:125px;" />
				    
				 </span>
				    
				  <span>
				     <img src="${pageContext.request.contextPath}/logos/achillies.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Aegis_logo_img.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Allsec-Logo.png" style="width:320px; height:125px;"/>
				    <img src="${pageContext.request.contextPath}/logos/Andromeda_site-logo1.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Anugrah_Logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/BlueStar_logo.png"  />
				    <img src="${pageContext.request.contextPath}/logos/bonanza-logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/brindley_techonologies_logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Choice_Logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Datamatics_logo.png" style="width:320px; height:125px;" />
				    <img src="${pageContext.request.contextPath}/logos/Epic_logo.png" style="width:320px; height:125px;" />
				    
				  </span>
				  </div>
			</div>

		<!-- end of marquee ribbon -->
		
	 
		<div class="indexContainer">
			<jsp:include page="stickyIcons.jsp" flush="true" />		
	    <!--
			<form class="form-inline" method="post" action="${pageContext.request.contextPath}/ClientContact">
				<p>
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
		
		
	-->	</div>
		
		<!--  ending of header div -->
	</div>
	
	
</body>
</html>
