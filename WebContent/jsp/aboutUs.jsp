<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
		
<title>About Us</title>

<style>
		#text {
		  z-index: 100;
		  text-align: center;
		  position: absolute;
		  color: #18140E;
		  font-size: 48px;
		/*  font-weight: bold; */
		  font-family: 'Roboto','Source Sans Pro', sans-serif;
		  left: 44%;
		  top: 40%;
		}

	</style>
</head>
<body>
	
	<jsp:include page="header.jsp" flush="true" />
	
	
	 <div id="aboutUsHeader" class="">
	 
	 		 <div class="overlay"></div>
			 <div id="text">We build<br>
									We learn<br>
									We grow <br>
									As a team<br>
									
			</div>
		
		<div class="container">
			<jsp:include page="stickyIcons.jsp" flush="true" />	
			<div class="pageTitle"> About Us</div>
			<hr>
			<p>
			Sumi Services took root in the year 2014 the month of February. We are supported by the dynamic & motivated  team of consultants. We introduce ourselves as an organization committed to establish and
	
	        maintain new standards in Human Resource Consulting. 
	        </p>
	        
	        <p>
	        Sumi Services is committed to provide accurate, effective, reliable and transparent services to all its partners and customer. We are a panel of
	
	        competent and resourceful professionals. In keeping with the current industry requirements. Our professional approach provides a platform for the customer to identify right candidates for the right positions,
	
	        Likewise for candidates right opportunity as per their requirement and experience.   
	        </p>	
    	</div>

	</div>

	
	
	

</body>
</html>