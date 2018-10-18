<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Admin Home Page </title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
	
	<!-- DATA TABLE SCRIPT FILES -->
	<!--Import jQuery before export.js-->
  
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>


    <!--Data Table-->
    <script type="text/javascript"  src=" https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript"  src=" https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>

    <!--Export table buttons-->
    <script type="text/javascript"  src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/pdfmake.min.js" ></script>
    <script type="text/javascript"  src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.2.1/js/buttons.print.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>

	<!--Export table button CSS-->
	
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
	  
  
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	
	<style>
		textarea, input {
			 width:300px;
			-webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
			-moz-box-sizing: border-box;    /* Firefox, other Gecko */
			box-sizing: border-box;         /* Opera/IE 8+ */
		}
	</style>

</head>
<body>
	
	<script>
		$(document).ready(function(){			
			$('#applicantInfoDataTable').DataTable({
				
				"scrollY":        "200px",
			    "scrollCollapse": true,
			  //  "paging":         false,
				dom: 'lfrtipB',
                buttons: [
                            'copy', 'csv', 'excel', 'pdf', 'print'
                        ]
			});
			
			
		/*	$.post("${pageContext.request.contextPath}/FetchAllJobApplicants",  function(responseJson) {
				//alert("reponseJSon= "+responseJson);
				  var d="";
				  $("#applicantInfoDataTable").empty().append(d);
			      var $tableId = $("#applicantInfoDataTable");	
			      
			      $.each(responseJson, function(key, value){
			    	  $("<tr>").appendTo($tableId)
			    	  .append($("<td>").text(value.applicantId))
			    	  .append($("<td>").text(value.name))
			    	  .append($("<td>").text(value.email))	
			    	  .append($("<td>").text(value.jobTitle))
			    	  .append($("<td>").text(value.applicantLocation))			    	  
			    	  .append($("<td>").text(value.contact))
			          .append($("<td>").text(value.alternateContact))
			      //    .append($("<td><a href="file?id=value.applicantId">download</a>);
			          .append($("<td><a href=file?id="+value.applicantId+">download</a>"));
			    	  
			    	  
			      });
			      
				
			})
		
			.fail(function(jqXHR, textStatus, errorThrown) {
		   		 alert(jqXHR.status);
		         alert(textStatus);
		         alert(errorThrown);
		 
			});
			
		
			*/
			
			$.ajax ({
			    url: "${pageContext.request.contextPath}/FetchAllJobApplicants",
			    type: "POST",
			   // data: JSON.stringify({data:"test"}),
			    responseType: "blob",
			  //  contentType: "application/json; charset=utf-8",
			    success: function(responseJson) {
					//alert("reponseJSon= "+responseJson);
					  var d="";
					  $("#applicantInfoDataTable").empty().append(d);
				      var $tableId = $("#applicantInfoDataTable");	
				      
				      $.each(responseJson, function(key, value){
				    	  $("<tr>").appendTo($tableId)
				    	  .append($("<td>").text(value.applicantId))
				    	  .append($("<td>").text(value.name))
				    	  .append($("<td>").text(value.email))	
				    	  .append($("<td>").text(value.jobTitle))
				    	  .append($("<td>").text(value.applicantLocation))			    	  
				    	  .append($("<td>").text(value.contact))
				          .append($("<td>").text(value.alternateContact))
				      //    .append($("<td><a href="file?id=value.applicantId">download</a>);
				          .append($("<td><a href=file?id="+value.applicantId+">download</a>"));
				    	  
				    	  
			        //
			    })
				}
			});
			
		});
	</script>
	
	
	<div class="container">
		<h1>Jobs for candidates</h1>
		<form class="form-inline" method="post" action="${pageContext.request.contextPath}/AdminCreateJob">
		  		
		  	<div class="form-group">
		      <input placeholder="Job Title" class="form-control" id="jobTitleTextbox" name="jobTitleTextbox" type="text" required>
    		
    		<div class="clear"></div>
		  		
    		  <input placeholder="Job Location" class="form-control" id="jobLocationTextbox" name="jobLocationTextbox" type="text" required>
    	      <div class="clear"></div>
			  		
    		
    		  <br>
		      <textarea placeholder="Job Qualification" class="form-control" rows="1" id="jobQualificationTextarea"  name="jobQualificationTextarea" required></textarea>
    		
    		<br> <br>
    		
    		
		      <textarea placeholder="Job Experience" class="form-control" rows="1" id="jobExpTextarea" name="jobExpTextarea"required></textarea>
    		
    		<br><br>
    		
    		
		      <textarea placeholder="Job Basic Skills" class="form-control" rows="1" id="jobBasicSkillsTextarea" name="jobBasicSkillsTextarea" required></textarea>
    		
    		<br><br>
    		
    		
		      <textarea placeholder="Job Technical Skills" class="form-control" rows="1" id="jobTechnicalSkillsTextarea" name="jobTechnicalSkillsTextarea" required></textarea>
    		
    		<br><br>
    		
    		
		      <textarea placeholder="Job Description" class="form-control" rows="1" id="jobDescTextarea" name="jobDescTextarea" required></textarea>
    		
    		<br><br>
    		
    		
    			<button type="submit" class="button" name="submitButton" id="submitButton">Submit</button>
    		</div>
    		
		</form>
		
		
		<div>
			<table id="applicantInfoDataTable" class="table table-striped table-hover table-bordered table-condensed">
				<thead>
					 <tr>
					 	<th>Applicant ID</th>
					    <th>Name</th>
		                <th>Email</th>
		                <th>Job Title</th>
		                <th>Location</th>
		                <th>Contact</th>
		                <th>Alternate Contact</th>
		                <!-- th>FileName</th>
		                <th>Content Type</th>
		                <th>Content</th-->
		                <th>Resume</th>
		            </tr>
	        	</thead> 
			</table>
			
		</div>
		
	</div>
	
	
</body>
</html>
