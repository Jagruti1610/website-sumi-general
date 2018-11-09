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


	<title>Admin View Job Applications </title>
	
	
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

	<script>
	
	
		var globalRowId;
	
		
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
	                        "<a href='#divName'>Delete</a>"
	                        
	                        
	                    ] ).draw();
	                	count++;
	                });
			    	
	                $("#applicantInfoDataTable").dataTable();
			    	
				}	// closing success function
			});	// closes ajax
			
			
		/*	
			$("#downloadFormatSelect").change(function () {
				  var selectVal=$("#downloadFormatSelect option:selected").text();
				  $("#selectA").attr('href', 'file?selectedFormat='+selectVal);
				  $("#selectA").click();
				  alert("selectVal="+selectVal);
				  
				  
				  $('a[href="#selectA"]').click(function(){
					  alert('Sign new href executed.'); 
					}); 
				
			
				});
			
		*/
			
			
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
		
		
		
	</script>

	<div id="applicantInfoDataTableDiv">
			<h1> Job Applications</h1>
			<!-- form action="file?=" method="post" name="selectDownloadFormatForm" -->
			
			<!--  HERE SERVLET 'FILE'  HAS TO BE CALLED AND word OR pdf SHOULD BE PASSED(which is not happening )
				<b>Download in: <select name="downloadFormatSelect" id="downloadFormatSelect"><option value="word" selected>word</option><option>pdf</option></select> </b>
			<a id="selectA" style="display:block;"></a>
		-->
			<!--  form. formname.submit -->
			
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
		                <th>Resume</th>
		                <th>Delete</th>
		            </tr>
	        	</thead> 
			</table>
			
		</div>
		
	
	
		


</body>
</html>