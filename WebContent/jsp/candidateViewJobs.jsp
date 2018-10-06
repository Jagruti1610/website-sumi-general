<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- %@ taglib uri="http://java.sun.com/jsp/jstl/format" prefix="fmt" %-->
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<meta="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
		
		<style>
			.popup-box {
			  width: 50%;
			  margin: 0 auto;
			  background: rgba(255,255,255,0.2);
			  padding: 35px;
			  border: 2px solid #fff;
			  border-radius: 20px/50px;
			  background-clip: padding-box;
			  text-align: center;
			}
			
			.popup-button {
			  font-size: 1em;
			  padding: 10px;
			  color: #fff;
			  border: 2px solid orange;
			  border-radius: 20px/50px;
			  text-decoration: none;
			  cursor: pointer;
			  transition: all 0.3s ease-out;
			}
			.popup-button:hover {
			  background: orange;
			}
			
			.popup-overlay {
			  position: absolute;
			  top: 0;
			  bottom: 0;
			  left: 0;
			  right: 0;
			  background: rgba(0, 0, 0, 0.7);
			  transition: opacity 500ms;
			  visibility: hidden;
			  opacity: 0;
			}
			.popup-overlay:target {
			  visibility: visible;
			  opacity: 1;
			}
			
			.popup {
			  margin: 70px auto;
			  padding: 20px;
			  background: #fff;
			  border-radius: 5px;
			  width: 50%;
			  position: relative;
			  transition: all 5s ease-in-out;
			  overflow:auto;
			}
			
			.popup h2 {
			  margin-top: 0;
			  color: #333;
			  font-family: Tahoma, Arial, sans-serif;
			}
			.popup .close {
			  position: absolute;
			  top: 20px;
			  right: 30px;
			  transition: all 200ms;
			  font-size: 30px;
			  font-weight: bold;
			  text-decoration: none;
			  color: #333;
			}
			.popup .close:hover {
			  color: orange;
			}
			.popup .content {
			  max-height: 400px;
			  overflow-y: auto;
			}
		</style>
		
		<title>View Jobs</title>
	</head>
	
	<body>
		<jsp:include page="/CandidateViewJob" flush="true" />
	
		<a href="javaScript:{openPopUp();}">pop</a>
	
		
		<script>
		
			 function openPopUp(){
			      
			       $('#popupDiv').css("visibility", "visible"); 
			       $('#popupDiv').css("opacity", 1); 
			      
			   }
			  
			 function populatePopUp(){
				 
				alert("click");
				/*
				 $.ajax(
					{
					     url: someUrl,
					     type: 'POST',
					     data: someData,
					     datatype: 'json',
					     success: function (data) { 
					       	someSuccessFunction(data); 
					      },
					      error: function (jqXHR, textStatus, errorThrown) {
					       	someErrorFunction(); 
					      }
					  });	*/		
						   
			 }
			 	
			 	
			 	function fetchIdFromTable() { 
			 		
			 		//gets table
			 	    var oTable = document.getElementById('tableWithJobId');

			 	    //gets rows of table
			 	    var rowLength = oTable.rows.length;

			 	    //loops through rows    
			 	    for (i = 0; i < rowLength; i++){

			 	      //gets cells of current row  
			 	       var oCells = oTable.rows.item(i).cells;

			 	             var cellVal = oCells.item(0).innerHTML;
			 	             //alert(cellVal);
			 	             return cellVal;
			 	           
			 	    }

			 	}
			  
			$(document).ready(function() {
				
				$(".close").click(function() {
				    
				       $('#popupDiv').css("visibility", "hidden"); 
				       $('#popupDiv').css("opacity", 0);
				    });
			   
			});
			
		</script>
	    
		<h1>Job List</h1>
		
	
		<div id="popupDiv" class="popup-overlay">
			
			<div class="popup">
			   <a class="close" href="#">×</a><br>
			   		<div class="content">
						<c:forEach items="${requestScope.jobList}" var="job">
						<h2><c:out value="${job.title}" /></h2>
											
							<table>	
								<tr>										
						        	<th>Location:</th>
						        </tr>
						        <tr>
						        	<td><c:out value="${job.location}" /></td>
						        </tr>
						        <tr>							        	
						        	<th>Experience:</th>
						        </tr>
						        <tr>
						        	<td><c:out value="${job.experience}" /></td>
						        </tr>
						        <tr>
						           <th>Basic Skills:</th>
						         </tr>
						         <tr>
						           <td><c:out value="${job.basicSkills}" /></td>
							     </tr>
							     <tr>
							     	<th>Technical Skills:</th>
							     </tr>
							     <tr>
							        <td><c:out value="${job.technicalSkills}" /></td>
							      </tr>
							      <tr>
								      <th>Job Description:</th>
								   </tr>
								   <tr>
							          <td><c:out value="${job.description}" /></td>
								  </tr>
							
							</table>
						  </c:forEach>
						</div>
					
				</div>
			
		</div>
		
		
		<table class="table table-bordered table-striped table-condensed" id="tableWithJobId">
			<caption>Job  List</caption>
			<c:forEach items="${requestScope.jobList}" var="job">
				<tr class="info">	
					<td><c:out value="${job.jobId}" /></td>
					<td><c:out value="${job.title}" /></td>
		        	<td><c:out value="${job.location}" /></td>
		        	<td><c:out value="${job.experience}" /></td>
		        	<td>
		        		<div class="popup-box">
							<a class="popup-button" href="javaScript:{fetchIdFromTable();populatePopUp();openPopUp();}">Apply</a>
						</div>
					</td>
			       </tr>
			</c:forEach>
		
		</table>
		
	</body>
</html>