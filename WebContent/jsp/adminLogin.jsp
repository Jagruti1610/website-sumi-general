<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
<%@ page isELIgnored="false" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>Admin Login</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	
</head>
<body>

<script language="Javascript">
/*
	$(document).ready(function() {
		$("#loginButton").click(function(){
		   alert("LOGIN CLICK");
		   $("#loginForm").attr("action", "/AdminLogin");
		   $("#loginForm").submit();
		   
		});

		
		$("#signUpButton").click(function(){
			alert("sign up click");
			$("#signUpForm").attr("action", "/AdminSignUp");
			$("#signUpForm").submit();		
		});
		
	
	});*/

</script>

<div class="container">
	
	  <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">		    
	  	<center><strong><h1>Admin Login Form </h1></strong></center>

    <div id="content">
      <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
        <li class="active"><a href="#login" data-toggle="tab">Login</a>
        </li>
        <li><a href="#sign-up" data-toggle="tab">Sign Up</a>
        </li>
       
      </ul>
    </div>
    <div id="my-tab-content" class="tab-content">
      <div class="tab-pane active" id="login">
      
        <form  name="loginForm" id="loginForm  method="post" action="${pageContext.request.contextPath}/AdminLogin">
	        <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">		    
			           <center><h2>Login</h2></center>
	          </div>
		            
			 <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
		    	<input type="text" placeholder="Enter Email" name="email" required>
			  </div>
						
			 <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
			   	<input type="password" placeholder="Enter Password" name="pwd" required>
			 </div>
			     
			 <div class="row">
			     <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
			           <button type="submit" class="button" name="loginButton" id="loginButton">Login</button>
			      </div>
			</div>
					    	
			<div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
			    <label>
				      <input type="checkbox" checked="checked" name="remember"> Remember me
				 </label>
			</div>
					
			<div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
			    <span class="pwd"><a href="#">Forgot password?</a></span>
			</div>
			
     	</form>
     </div>
     	 
      	<div class="tab-pane" id="sign-up">
      	  <form name="signUpForm" id="signUpForm" method="post" action="${pageContext.request.contextPath}/AdminSignUp">
		        <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">		    
				         <center><h2>Sign Up</h2></center>
		          </div>
			            
				 <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
			    	<input type="text" placeholder="Enter Email" name="signUpEmail" required>
				  </div>
							
				 <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
				   	<input type="password" placeholder="Enter Password" name="signUpPwd" required>
				 </div>
				 
				 <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
				   	<input type="password" placeholder="Confirm Password" name="signUpConfirmPwd" required data-match="#signUpPwd" data-match-error="Whoops, these don't match">
				 </div>
				     
				 
				     <div class="col-xs-12 col-xs-offset-0 col-sm-6 col-sm-offset-3">
				           <button type="submit" class="button" name="signUpButton" id="signUpButton">Register</button>
				      </div>
				
						    	
								
				
	     	</form>
      	</div>
      	
      	
     
    </div>
  </div>
</div>

<script language='javascript' type='text/javascript'>
    function checkPassword(input) {
    	alert("in check password");
    	
        if (input.value != document.getElementById('signUpPwd').value) {
            alert('Passwords must match');
        } 
        else {
            // input is valid -- reset the error message
            input.setCustomValidity('');
        }
    }
</script>

</body>
</html>