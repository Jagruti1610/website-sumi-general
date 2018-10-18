<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
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
			  top: 10%;
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
		<header>
			<jsp:include page="header.jsp" flush="true" />
		</header>
		<div class="wrapper">
			<img src="${pageContext.request.contextPath}/images/candidate-view-job-image.jpg" style="height:25%">
			
		</div>
		
		<jsp:include page="/CandidateViewJob" flush="true" />
		
		
			
		<script>
			var globalRowId;
					
			 function openPopUp(){
			      
			       $('#popupDiv').css("visibility", "visible"); 
			       $('#popupDiv').css("opacity", 1); 
			     //  alert("popup");
			      
			   }
			 
			 	
			 	function fetchIdFromTable(rowId) { 
			 		
			 		//gets table
			 		//alert("fetchIdFromTable(rowId)= "+rowId);
			 		rowId=rowId.slice(-1);
			 	    var oTable = document.getElementById('tableWithJobId');

			 	    //gets rows of table
			 	 //   var rowLength = oTable.rows.length;
			 	    var oCells = oTable.rows.item(rowId).cells;
			 	    var cellVal = oCells.item(0).innerHTML;
			 	//   alert("cell Val"+ cellVal);
			 	             //alert(cellVal);
			 	     //return cellVal;
			 	     
			 	     
			 	    globalRowId=cellVal;
			 	    
			
			 	}
			 	
			 	 
				 function populatePopUp(){		 				
					
					
				//	alert("globalRowId= "+globalRowId);
					
				 }
				 	
			  
			$(document).ready(function() {
			//	 var fetchedId=fetchIdFromTable();
				
				$(".close").click(function() {
				    
				       $('#popupDiv').css("visibility", "hidden"); 
				       $('#popupDiv').css("opacity", 0);
				    });
			   
				$('a.popup-button').click(function() { 				
					var data= {jobId: globalRowId};
					
			
				   $.get("${pageContext.request.contextPath}/FetchOneRecord", $.param(data), function(responseJson) {
										
						var d="";
					   $("#tablePopUp").empty().append(d);
				       var $tableId = $("#tablePopUp");		
				       var $rowid=$("#td1");
				       
				       $.each(responseJson, function (key, value){					
							$("<tr>").appendTo($tableId) 
							.append($("<tr>").append($("<th>")).text("Designation:"));
							$("<tr>").appendTo($tableId)                    
						    .append($("<tr>").append($("<th>")).text(value.title));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text("Location:"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.location));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text("Qualification:"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.qualification));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text("Experience"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.experience));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text("Basic Skills:"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.basicSkills));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text("Technical Skills:"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.technicalSkills));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text("Description:"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.description));
												
							             //   .append($("<td>").text(product.name)) 
							              //  .append($("<td>").text(product.price));
									});
											
							})
							   
							   		.fail(function(jqXHR, textStatus, errorThrown) {
								   		 alert(jqXHR.status);
								         alert(textStatus);
								         alert(errorThrown);
								 
									});
				
				});
			
			
			
			});
			
						
		</script>
	    
		<h1>Job List</h1>
		<!-- %	
			List<Jobs> jobDetailList = request.getAttribute(jobDetailFetchList);  
		
		%-->	
		
		<div class="container">
	
			<div id="popupDiv" class="popup-overlay">
				
				<div class="popup">
				   <a class="close" href="#">×</a><br>
				   		<div class="content">
								
								<h2></h2>
								<table id="tablePopUp">
								
								
								</table>
																		
									  
							</div>
						
					</div>
				
			</div>
			
			
			
			<div>
				<table class="table table-bordered table-striped table-condensed" id="tableWithJobId" style="width:50%; align:left;" >
					<caption>Job  List</caption>
					<c:set value="0" var="count"/>
					<c:forEach items="${requestScope.jobList}" var="job">
						<tr class="info">	
							<td><c:out value="${job.jobId}" /></td>
							<td><c:out value="${job.title}" /></td>
				        	<td><c:out value="${job.location}" /></td>
				        	<td><c:out value="${job.experience}" /></td>
				        	<td id="<c:out value="${count}"/>">
				        		<div class="popup-box">
									<a id="hrefId<c:out value="${count}"/>" class="popup-button" onclick="fetchIdFromTable($(this).attr('id'));  openPopUp();" href="#"> Apply</a>
									
								</div>
							</td>
					       </tr>
					       <c:set var="count" value="${count + 1}"/>
					</c:forEach>
					
					
				</table>
			</div>
			
			<div>
				<form class="form-inline" action="${pageContext.request.contextPath}/JobApplicantServlet" method="post" enctype="multipart/form-data"> 
					<p>Didn't find a relevant job? Drop your resume here. We will contact in future.</p>
					<div class="form-group">
						<input type="text" placeholder="Name" name="candidateNameTextbox" id="candidateNameTextbox" required>
						
						<div class="clear"></div>
						
						<input type="text" placeholder="Email Id" name="candidateEmailTextbox" id="candidateNameTextbox" required>
						
						<div class="clear"></div>
						
						
						<input type="text" placeholder="Job Title" name="candidateJobTitleTextbox" id="candidateJobTitleTextbox" required>
						
						<div class="clear"></div>
						
						
						<input type="text" placeholder="Location" name="candidateLocationTextbox" id="candidateLocationTextbox" required>
						
						<div class="clear"></div>
						
						
					    <input type="text" placeholder="Contact number" name="candidateContactNumberTextbox" id="candidateContactNumberTextbox" required>
					    
					    <div class="clear"></div>
					    
					    
					    <input type="text" placeholder="Alternate Contact number" name="alternateContactNumberTextbox" id="alternateContactNumberTextbox" required>
					    
					    <div class="clear"></div>
					    
					    <label for="uploadResume"> Upload Resume</label>
					    <input type="file" name="file" required/>
					    
					    <button type="submit" class="button" name="candidateApplyButton" id="candidateApplyButton">Apply</button>
				    </div>
				</form>
			</div>
		</div>
	</body>
</html>
