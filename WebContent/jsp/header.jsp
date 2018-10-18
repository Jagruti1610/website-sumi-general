
	<script>
		$(window).scroll( function() { 
			 var scrolled_val = $(document).scrollTop().valueOf();
			
			 // alert(scrolled_val+ ' = scroll value');  // 564
			 var hideMenubar= document.querySelectorAll('.navbar-brand');
				 
			 
			 if(scrolled_val > 500)
			 {
				 hideMenubar[0].style.padding="12px 0px 20px 350px";  // top, right, bottom, left
				 hideMenubar[0].style.backgroundColor="white";
				 myNavbar.style.backgroundColor="white";
				 logoImgId.style.display="none";
				
			 }
			 else
			 {
				 hideMenubar[0].style.padding="40px 0px 20px 130px";
				 logoImgId.style.display="block";
			 }
			 
		});
		
	
	</script>
	
  <!-- Navigation -->

	
	<div id="menu-nav-bar">
	   <nav class="navbar navbar-fixed-top navbar-light" >
	  	
	       <!-- img class="logo" id="logoImgId" src="${pageContext.request.contextPath}/images/logo.png">
	    	
	       <a id="logoName" class="navbar-brand" href="index.jsp">Sumi Services</a-->
	           <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav">
			        <li class="active"><a href="#">About Us</a></li>
			        <li><a href="#">Services</a></li>
			        <li class="dropdown">
			          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Career<span class="caret"></span></a>
			     	     <ul class="dropdown-menu" role="menu">
			                <li><a href="candidateViewJobs.jsp">Jobs Seeker</a></li>
			                <li><a href="#">Career With Us</a></li>
			              </ul>
			        </li>
			        
			        <li class="dropdown">
			          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Contact Us<span class="caret"></span></a>
			          <ul class="dropdown-menu" role="menu">
			            <li><a href="adminHomePage.jsp">Admin</a></li>
			            <li><a href="clientContact.jsp">Client</a></li>
			            <li><a href="email.jsp">Email</a></li>
			          </ul>
			        </li>
			        
			           
			       
			       
			      </ul>
			     	<!-- ul class="nav navbar-nav navbar-right">
			       	 <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			      	  <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			     	 </ul-->
	   		 </div>
	 	 </div>
		</nav>
	</div>
 	
 	
	
	
	
	
