<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ page isELIgnored="false" %>


<!DOCTYPE html>
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
	
</head>

<body>

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
	  	<div class="container-fluid">
	    		           
	       <img class="logo" id="logoImgId" src="${pageContext.request.contextPath}/images/logo.png">
	    	
	       <a id="logoName" class="navbar-brand" href="#">Sumi Services</a>
	           <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav">
			        <li class="active"><a href="#">About Us</a></li>
			        <li><a href="#">Services</a></li>
			        <li class="dropdown">
			          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Jobs<span class="caret"></span></a>
			     	     <ul class="dropdown-menu" role="menu">
			                <li><a href="#">Recruiter</a></li>
			                <li><a href="jsp/candidateViewJobs.jsp">Jobs Seeker</a></li>
			                <li><a href="#">Career With Us</a></li>
			              </ul>
			        </li>
			        
			        <li class="dropdown">
			          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Access<span class="caret"></span></a>
			          <ul class="dropdown-menu" role="menu">
			            <li><a href="jsp/adminLogin.jsp">Admin</a></li>
			            <li><a href="#">Page 1-2</a></li>
			            <li><a href="#">Page 1-3</a></li>
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
 	
 <div class="wrapper">
	<img src="${pageContext.request.contextPath}/images/header-home-sunset.jpg">

</div>

<div class="sumiWelcomeNote">

	

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

<br>
We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.

We are a panel of competent and resourceful professionals. 
In keeping with the current industry requirements. Sumi Services has developed a mix of professionals with domain and functional experience,
 who act as a like-minded sounding board to the customer - who could be an organization or a candidate. 
The professional approach provides a platform for the customer to identify the necessary competitive edge.

We believe that people make or break any organisation, therefore it is critical to have the right people in the right position at the 
	right time.

By bringing a fresh approach to the recruitment process we ensure that employers never have to compromise on manpower quality and that
 job seekers are placed in position that maximise their potential.




</div> 

</body>
</html>
