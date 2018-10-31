<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page isELIgnored="false" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Industries</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
		
		
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
	
	
	<div id="industriesHeader" class="">
	
		<table>
			<thead>
				<tr>
					<th id="it"><a href="#industriesContentDivId"> I.T. </a> </th>
					<th id="retail"><a href="#itDiv">  Retail </a></th>
					<th id="bpo"><a href="#retailDiv"> BPO </a></th>
					<th id="manufacturing"> <a href="#bpoDiv">Manufacturing </a></th>
					<th id="bfsi"><a href="#manufacturingDiv"> BFSI/Broking </a></th>
					
				</tr>
				<tr>
					<th id="edu"> <a href="#bfsiDiv">Education Institutes</a> </th>
					<th id="ecommerce"><a href="#eduDiv"> E-COMMERCE </a></th>
					<th id="engineering"><a href="#ecommerceDiv"> Engineering </a></th>
					<th id="pharma"><a href="#pharmaDiv"> Pharma</a> </th>
					<th id="supply"><a href="#supplyDiv"> Supply Chain Management</a></th>
					
				</tr>
			</thead>
			
		</table>
		
		
		<div class="container" id="industriesContentDivId">
			<jsp:include page="stickyIcons.jsp" flush="true" />
			<div class="pageTitle"> INDUSTRIES</div>	
			
			<hr>
			
			<div id="industriesHeaderContent">
				<div class="" id="itDiv">
					<div class="pageTitle"> I.T. </div>
					<hr>
					<h3> Software Developers / QA / Programmers/BI/Testers/Technical Consultants/ etc </h3>
				</div>
				
				<div id="retailDiv">
					<div class="pageTitle"> Retail </div>
					<hr>
					<h3> Floor Manager/ Store Manager/ Sales Manager/Front Desk/Billing Executive/Purchase Executive/MIS/Accounts/Delivery Boys/Cashier/Helper etc. </h3>
				</div>
				
				<div id="bpoDiv">
					<div class="pageTitle"> BPO </div>
					<hr>
					<h3> Telesales/Telemarketing/Team Leader/Trainer/Quality/MIS/Operations/Managers </h3>
				</div>
				
				<div class="" id="manufacturingDiv">
					<div class="pageTitle"> Manufacturing </div>
					<hr>
					<h3> Engineers from different domains- Production/Sales/Marketing/Service etc.</h3>
				</div>
				
				<div class="" id="bfsiDiv">
					<div class="pageTitle"> BFSI/Broking </div>
					<hr>
					<h3>Accounts/Operations/HR/MIS/Marketing/Sales/Business Development/Brokers/Analyst/Entry Level Executive/Freshers etc.</h3>
				</div>
				
				<div class="" id="eduDiv">
					<div class="pageTitle"> Education Institutes </div>
					<hr>
					
					<h3>Counsellor / Centre Managers/Telecallers/Faculty/coordinators/Office Assistants etc.</h3>
				</div>
				
				<div class="" id="ecommerceDiv">
					<div class="pageTitle">E-COMMERCE </div>
					<hr>
					<h3>Digital Marketing / SEO / SMO/SMC /Content writer/Graphic Designer/Web Developer</h3>
				</div>
				
				<div class="" id="engineeringDiv">
					<div class="pageTitle">Engineering </div>
					<hr>
					<h3>Service Engineer/Highway Design Engineer/ Urban Planner /Marketing Engineer etc.</h3>
				</div>
				
				<div class="" id="pharmaDiv">
					<div class="pageTitle">Pharma </div>
					<hr>
					<h3>MR/ASM/Medical Coding/Medical Transcription/Medical Billing</h3>
				</div>
				
				<div class="" id="supplyDiv">
					<div class="pageTitle">Supply Chain Management </div>
					<hr>
					<h3>Data Controller/Supplier Management Agent/Quality Assurance Analyst</h3>
					
				</div>
				
	    	</div>
	    </div>
	    	
	</div>
	
	
	
</body>
</html>			