<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page isELIgnored="false" %>
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
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
		      margin: 10px;
		      color: maroon;
		      border: 2px solid orange;
		      border-radius: 20px/50px;
		      text-decoration: none;
		      cursor: pointer;
		      background: #aef9f9;
		      transition: all 0.3s ease-out;
			}
			.popup-button:hover {
			  background: orange;
			  text-decoration: none;
			  cursor: pointer;
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
			  position:fixed;
			  width:100%;
			  height:100%;
						  
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
			 	    var oCells = oTable.rows.item(parseInt(rowId)+1).cells;
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
							.append($("<tr style='font-weight:bold;'>").append($("<th>")).text("Designation:"));
							$("<tr>").appendTo($tableId)                    
						    .append($("<tr>").append($("<th>")).text(value.title));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr style='font-weight:bold;'>").append($("<th>")).text("Location:"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.location));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr style='font-weight:bold;'>").append($("<th>")).text("Qualification:"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.qualification));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr style='font-weight:bold;'>").append($("<th>")).text("Experience"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.experience));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr style='font-weight:bold;'>").append($("<th>")).text("Basic Skills:"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.basicSkills));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr style='font-weight:bold;'>").append($("<th>")).text("Technical Skills:"));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr>").append($("<th>")).text(value.technicalSkills));
							$("<tr>").appendTo($tableId)                    
							.append($("<tr style='font-weight:bold;'>").append($("<th>")).text("Description:"));
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
	    <header>
			<jsp:include page="header.jsp" flush="true" />
		</header>
		<jsp:include page="/CandidateViewJob" flush="true" />
		<div id="candidateViewJobsHeader">			
		
			<div class="indexContainer">
			
				<jsp:include page="stickyIcons.jsp" flush="true" />
				<div class="pageTitle" id="titleDiv"> Job Opportunities</div>
	   			<hr>
		
				<div id="popupDiv" class="popup-overlay">
					
					<div class="popup">
					   <a class="close" href="#titleDiv">×</a><br>
					   		<div class="content">
									
									<h2></h2>
									<table id="tablePopUp">
									
									
									</table>
																			
										  
								</div>
							
						</div>
					
				</div>
				
				
				
				<div id="jobDisplayDiv">
				
					<table class="table table-bordered table-striped table-condensed" id="tableWithJobId" style="width:100%; align:center;" >
						<tr>
							<th> Id</th>
							<th>Designation</th>
							<th>Location</th>
							<th>Experience</th>
							<th>Apply</th>
						</tr>
						<c:set value="0" var="count"/>
						<c:forEach items="${requestScope.jobList}" var="job">
							<tr class="info">	
								<td><c:out value="${job.jobId}" /></td>
								<td><c:out value="${job.title}" /></td>
					        	<td><c:out value="${job.location}" /></td>
					        	<td><c:out value="${job.experience}" /></td>
					        	<td id="<c:out value="${count}"/>">
					        		
										<a id="hrefId<c:out value="${count}"/>" class="popup-button" onclick="fetchIdFromTable($(this).attr('id'));  openPopUp();" href="#"> Apply</a>
										
									
								</td>
						       </tr>
						       <c:set var="count" value="${count + 1}"/>
						</c:forEach>
						
						
					</table>
				</div>
				
				<p style="text-align:center; margin: 30px 0 30px 0;">Didn't find a relevant job? Drop your resume with us. Our team will contact you soon.</p>
				
				<div id="jobApplyDiv" class="flex-container">
					
					<div class="inner-element">
						<form action="${pageContext.request.contextPath}/JobApplicantServlet" method="post" enctype="multipart/form-data"> 
							<input type="text" placeholder="Name" name="candidateNameTextbox" id="candidateNameTextbox" required>
							<input type="text" placeholder="Email Id" name="candidateEmailTextbox" id="candidateNameTextbox" required>
							<input type="text" placeholder="Job Title" name="candidateJobTitleTextbox" id="candidateJobTitleTextbox" required>
							<input type="text" placeholder="Location" name="candidateLocationTextbox" id="candidateLocationTextbox" required>
							<input type="text" placeholder="Contact number" name="candidateContactNumberTextbox" id="candidateContactNumberTextbox" required>
						    <input type="text" placeholder="Alternate Contact number" name="alternateContactNumberTextbox" id="alternateContactNumberTextbox" required>
						    <label for="resumeLabel" style="margin:15px 0 0 0;"> Upload Resume</label><input type="file" name="file" required/>
							<button type="submit" class="button" style="width:100%;" name="candidateApplyButton" id="candidateApplyButton">Apply</button>   
						   
					    
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
						
						
