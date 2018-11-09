<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page isELIgnored="false" %>
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminStyles.css" />


	<title>Admin Edit/ Delete </title>
	
	
	<style>
		
		overlay{
		  
		  background-color: #282C2E;
		  opacity: 0.9;
		 /* display: none;*/
		  padding: 50px 10px 50px 450px;
		  position:fixed;
		  width:100%;
		  height:100%;
		  top:0px;
		  left:0px;
		  display: none;
		 
		}
		
		.overlay-div{
		    width: 50%;
		    height: auto;
		    background-color: rgba(255, 255, 255, 1);
		  /*  position: absolute; hides scroll bar*/
		    border-radius:2%;
		    padding: 0 0 10px 0;
		  
		  
		}
		
		.popup-open{
/*		  width: 100px;
		  margin: 80px 100px 50px 600px;
		  border-radius: 50px/100px;
		  background-color: #23A4E4;
		  border: none;
		  height: 30px;
		  width: auto;
		  color: rgba(255,255,255, 1);
		  font-weight: bold;
		  font-size: 25px;*/
		  transition: all 0.3s ease-out;
		  
		}
		.popup-open:hover{
		  opacity: 0.7;
		  
		}
		
		.popup-close{
		  text-align: right;
		  color: rgba(77, 78, 79 1); 
		  font-family:'Roboto';
		  transition: all 200ms;
		  font-size: 20px;
		  font-weight: bold;
		  text-decoration: none;
		}
		
		.popup-close:hover{  
		  color: rgba(152, 153, 153, 1);
		}
		
		
	</style>
</head>
<body>
   <jsp:include page="/CandidateViewJob" flush="true" />
	<script>
	
	
		var globalRowId;
	
		$('#applicantInfoDataTable tbody').on( 'click', 'tr', function () {
		    alert( 'Row index: '+table.row( this ).index() );
		} );
	
		$(document).ready(function(){		
			
			
			var dTable=$('#applicantInfoDataTable').DataTable({
				"bDestroy": true,
			/*	'bSort': false,
    		/*  	"scrollY":        "200px",*/
			    "scrollCollapse": true,
			    
			/*    "bPaginate":     false,   /* WILL NOT SHOW PAGINATION BUTTONS*/
				  dom: 'lfrtipB',
				  "fnCreatedRow": function (row, data, index) {
		                $('td', row).eq(0).html(index + 1);
		            },
                  buttons: [
                	  		
                       //     'copy', 'csv', 'excel', 'pdf', 'print'
                       	
                       
                       		{
				                extend: 'copyHtml5',
				                title: 'Job_Applications'
				            },
				            {
				                extend: 'csvHtml5',
				                title: 'Job_Applications'
				            },
				            {
				                extend: 'excelHtml5',
				                title: 'Job_Applications'
				            },
				            {
				                extend: 'pdfHtml5',
				                title: 'Job_Applications'
				            },
				            'print'
                        ],
                 lengthMenu: [[5, 20, 50, -1], [5, 20, 50, "All"]]
				
			
				
				
			});
			
		/*	
			dTable.on( 'order.dt search.dt processing.dt page.dt', function () {
			    dTable.column(1, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
			        cell.innerHTML = i+1;
			        var info = dTable.page.info();
			        var page = info.page+1;             
			        if (page >'1') { 
			            hal = (page-1) *5;  // u can change this value of ur page
			            cell.innerHTML = hal+i+1;
			          //  alert("h");
			        } 
			    } );
			} ).draw(); 
			*/
			
			
			$.ajax ({
			    url: "${pageContext.request.contextPath}/FetchAllJobApplicants",
			    type: "POST",
			    success: function(responseJson) {
					
			    	
			    	var t = $('#applicantInfoDataTable').DataTable();
	                t.clear();
	                
	                var count=0;
	                // ADD acquired data items to the DataTable
	                
	                $.each(responseJson, function(key,value) {
	                	
	                    t.row.add( [
	                        value.applicantId,
	                        value.name,
	                        value.email,
	                        value.jobTitle,
	                        value.applicantLocation,
	                        value.contact,
	                        value.alternateContact,
	                        "<a href=file?id="+value.applicantId+">download</a>" ,
	                        "<a href='#editDeleteDiv'  class='goToEditDeleteDiv' id='hrefId"+count+"' onclick='fetchIdFromTable($(this).attr(`id`)); method2()'>Edit</a>/<a href='#editDeleteDiv'>Delete</a>"
	                        
	                        
	                    ] ).draw();
	                	count++;
	                });
			    	
	                $("#applicantInfoDataTable").dataTable();
			    	
				}	// closing success function
			});	// closes ajax
			
			
			
			
			
			
			
		
			
			
		});
		
		<!--a href="file?selectedFormat=pdf"-->
		/* to open edit pop-up  */
		
		
		function fetchIdFromTable(rowId) { 
			 		
			 		//gets table
			 		alert("fetchIdFromTable(rowId)= "+rowId);
			 		rowNumber=rowId.slice(-1);
			 	    var oTable = document.getElementById('applicantInfoDataTable');

			 	    //gets rows of table
			 	 //   var rowLength = oTable.rows.length;
			 	//    alert("oTable.rows.item(rowId)= "+oTable.rows.item(rowId));
			 	    var cellVal =  document.getElementById('applicantInfoDataTable').rows[rowNumber].cells.item(0).innerHTML;
			 	//   alert("cell Val"+ cellVal);
			 	             //alert(cellVal);
			 	     //return cellVal;
			 	     
			 	    alert( $('applicantInfoDataTable').DataTable().row('#row'+1).index());
			 	    globalRowId=cellVal;
			 	    
			
			 }
		
		
		function method2() { 	
			alert("globalRowId=" +globalRowId);
			
			var data= {jobId: globalRowId};
			
	
		   $.get("${pageContext.request.contextPath}/FetchOneRecord", $.param(data), function(responseJson) {
						alert(responseJson);		
				var d="";
			   $("#editDeleteTable").empty().append(d);
		       var $tableId = $("#editDeleteTable");	

		       
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
		
			
		}
	
		
	</script>
	
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
									<a id="hrefId<c:out value="${count}"/>" class="popup-button" onclick="fetchIdFromTable($(this).attr('id'));  openPopUp();" href="#"> Apply</a>
									
							</td>
					      </tr>
					     <c:set var="count" value="${count + 1}"/>
				</c:forEach>
					
					
			</table>		
	</div>

	
	<div id="editDeleteDiv">
		<table id="editDeleteTable"></table>
		
	</div>
		


</body>
</html>