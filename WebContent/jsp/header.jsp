
	<script>
	
	//	var clickNum=0;	
	
		$(window).scroll( function() { 
			 var scrolled_val = $(document).scrollTop().valueOf();
			
			 // alert(scrolled_val+ ' = scroll value');  // 564
			 var hideMenubar= document.querySelectorAll('.navbar-brand');
				 
			 
			 if(scrolled_val > 500)
			 {
			//	 hideMenubar[0].style.padding="12px 0px 20px 350px";  // top, right, bottom, left
			//	 hideMenubar[0].style.padding="40px 0 0 20px";
				 hideMenubar[0].style.backgroundColor="#E0FBF6";
				 myNavbar.style.backgroundColor="#E0FBF6";
			//	 logoImgId.style.width="width:88px; height:76px; float:left; margin:0 75px 0 75px";
				 logoImgId.style.width="60px";		
				 logoImgId.style.height="50px";
				 logoImgId.style.margin="0 100px 0 100px";
				 
				 menuBarId.style.padding="5px 0 0 20px";
				 
				 
				 
				// logoName.style.display="";  /*40px 0 0 20px*/
				 $('#logoName').hide();
				
			 }
			 else
			 {
			//	 hideMenubar[0].style.padding="40px 15px 20px 80px";
			//	 logoImgId.style.display="width:10%; height:10%; float:left;";
			     logoImgId.style.width="10%";		
				 logoImgId.style.height="10%";
				 logoImgId.style.margin="0 0 0 25px";
			//	 logoImgId.style.float="left";
				 hideMenubar[0].style.backgroundColor="white";
				 myNavbar.style.backgroundColor="white";
				 menuBarId.style.padding="25px 0 0 20px";
				 menuBarId.style.margin="0 0 0 0";
				 
				 
				 $('#logoName').show();
			 }
			 
		});
		
		
		
		
		
		
		function myFunction(clickNum){
			
			
			$("#hrefAboutUs").removeClass('selected');
			$("#hrefIndustries").removeClass('selected');
			$("#hrefServices").removeClass('selected');
			$("#hrefCareers").removeClass('selected');
			$("#hrefClients").removeClass('selected');
			$("#hrefJobs").removeClass('selected');
			$("#hrefTestimonials").removeClass('selected');
			$("#hrefContacts").removeClass('selected');
			
			
			if(clickNum==0)
			{
				document.getElementById("hrefAboutUs").classList.add('selected');
				
			}
			
			if(clickNum==1)
			{
				document.getElementById("hrefIndustries").classList.add('selected');
			}
			
			if(clickNum==2)
			{
				document.getElementById("hrefServices").classList.add('selected');
			}
			
			if(clickNum==3)
			{
				document.getElementById("hrefCareers").classList.add('selected');
			}
			if(clickNum==4)
			{
				document.getElementById("hrefClients").classList.add('selected');
			}
			
			if(clickNum==5)
			{
				document.getElementById("hrefJobs").classList.add('selected');
			}
			
			if(clickNum==6)
			{
				document.getElementById("hrefTestimonials").classList.add('selected');
			}
		
				
			if(clickNum==7)
			{
				document.getElementById("hrefContacts").classList.add('selected');
			}
			 
			
			
			
		}
	
		
		function reloadP(num) {
			
		    sessionStorage.setItem("reloading", "true");
		    sessionStorage.setItem("numToCall", num);
		    document.location.reload();
		}
		
		
	
	
	/* to give the selection mark to user on page refresh */	
		window.onbeforeunload = function() {
			//  return "Are you sure you wish to leave the page?";
			alert("1");
			var beforeLoad=sessionStorage.getItem("numToCall");
			if(beforeLoad==0 || beforeLoad==1 || beforeLoad==2 || beforeLoad==3 || beforeLoad==4 || beforeLoad==5 || beforeLoad==6 || beforeLoad==7)
				reloadP(beforeLoad);
			else {
					alert("2");
			     sessionStorage.removeItem("numToCall");
			}
			
		}

	
		/* to give the when user navigates to the desired page */	
		window.onload = function() {
		    var reloading = sessionStorage.getItem("reloading");
		    var num=sessionStorage.getItem("numToCall");
		    
		    if (reloading) {
		     sessionStorage.removeItem("reloading");
		     myFunction(num);
			}

		
		}
		
		
		</script>
	
  <!-- Navigation -->

	
	<div id="menu-nav-bar">
	   <nav class="navbar navbar-fixed-top navbar-light" >
	   	<a  href="index.jsp" onclick="reloadP(100);">
	       <img class="logo" id="logoImgId" src="${pageContext.request.contextPath}/images/logo.png">
	       </a>
	    	
	       	<a id="logoName" class="navbar-brand " href="index.jsp" onclick="reloadP(100);">Sumi Services</a>
	       

	           <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav" id="menuBarId">
			        <li ><a href="aboutUs.jsp" id="hrefAboutUs" onclick="reloadP(0);">About Us</a></li>
			        
			        <li><a href="industries.jsp" id="hrefIndustries" onclick="reloadP(1);">Industries</a></li> 
			            <!-- li><a href="adminHomePage.jsp">Admin</a></li-->
			            
			            
			            <!-- li><a href="email.jsp">Email</a></li-->
			        
			        
			       		        
			        <li>
			          <a class="dropdown-toggle " data-toggle="dropdown" href="#" id="hrefServices">Services</span></a>
			          <!-- " -->
			     	     <ul class="dropdown-menu nav" role="menu">
			                <li><a href="#"  onclick="reloadP(2);">CV Creation</a></li>
			                <li><a href="#"  onclick="reloadP(2);">Staffing</a></li>
			                <li><a href="#"  onclick="reloadP(2);">Training</a></li>
			                <li><a href="#"  onclick="reloadP(2);">Recruitment</a></li>
			              </ul>
			        </li>
			        
			        
			        <li class="dropdown">
				      <a class="dropdown-toggle " data-toggle="dropdown" href="#" id="hrefCareers" >Careers<span class="caret"></span></a>
				     <!-- " -->
     	     				<ul class="dropdown-menu nav"  onclick="reloadP(3);">
			                <li><a href="careerWithUs.jsp" onclick="reloadP(3);">Career With Us</a></li>
			                <li><a href="careerWithUs.jsp"  onclick="reloadP(3);">Career Tips</a></li>
			              </ul>
			        </li>
			        
			        <li ><a href="clientContact.jsp" id="hrefClients" onclick="reloadP(4);">Client</a></li>
			        
			        <li><a href="candidateViewJobs.jsp" id="hrefJobs" onclick="reloadP(5);">Jobs</a></li>
			        
			        <li ><a href="#" id="hrefTestimonials" onclick="reloadP(6);">Testimonials</a></li>
			        
			        <li ><a href="contactUs.jsp" id="hrefContacts" onclick="reloadP(7);">Contact Us</a></li>
		
		
		<!-- NOt Required as of now >       
			        <li><a href="services.jsp">Services</a></li>
			        
			        <li class="dropdown">
			          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Contact Us<span class="caret"></span></a>
			          <ul class="dropdown-menu" role="menu">
			            <li><a href="adminHomePage.jsp">Admin</a></li>
			            <li><a href="email.jsp">Email</a></li>
			          </ul>
			        </li-->
			        
			           
			       
			       
			      </ul>
			     	<!-- ul class="nav navbar-nav navbar-right">
			       	 <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			      	  <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			     	 </ul-->
	   			 </div>
	   		 </nav>
	 	 </div>
		
		
		
 	
	
	
	
	
