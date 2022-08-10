<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    
    <!doctype html>
<html lang="en">
  <head>
   <!-- Required meta tags -->
    <meta content="" name="description">
  <meta content="" name="keywords">


<!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
    
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  </head>
  <body> 
  <nav style="background-color:#1E4356;">
	<ul class="nav justify-content-center" style="padding:5px 0 0 0;background-color:#1E4356;">
  		<li class="nav-item">
    		<div class="logo">
        	<h1 class="text-light"><a class="navbar-brand" href="/"><i class='fas fa-car' style='font-size:20px'></i></a><span>ABC Cars</span></h1>
      		</div>
  		</li>
  		<li class="nav-item " style="padding:0 0 0 200px ; color:#ffffff;">
    		<h6 "><a style="color:#ffffff;font-size:14px;" class="navbar-brand active" href="/">Home</a></h6>
  		</li>
 		 <li class="nav-item" style="color:#ffffff;">
   			<h6 ><a style="color:#ffffff;font-size:14px;" class="navbar-brand active" href="/about">About</a></h6>
  		</li>
 		<li class="nav-item" style="color:#ffffff;">
   			<h6 ><a style="color:#ffffff; font-size:14px;" class="navbar-brand active" href="/contact">Contact</a></h6>
  		</li>
 		<li class="nav-item" style="color:#ffffff;">
   			<h6 ><a style="color:#ffffff;font-size:14px;" class="navbar-brand active" href="/profile">Profile</a></h6>
  		</li>
 		<li class="nav-item" style="color:#ffffff;">
   			<h6 ><a style="color:#ffffff;font-size:14px;" class="navbar-brand active" href="/search">View cars</a></h6>
  		</li>
 		<li class="nav-item" style="color:#ffffff;">
   			<h6 ><a style="color:#ffffff;font-size:14px;" class="navbar-brand active" href="/addcar">Add cars</a></h6>
  		</li>
 		<li class="nav-item" style="color:#ffffff;">
   			<h6 ><a style="color:#ffffff;font-size:14px;" class="navbar-brand active" href="/logout">Logout</a></h6>
  		</li>
	</ul>
  </nav>
	<section class="breadcrumbs" style="margin-top:75px">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Book your appointment!</h2>
          <ol>
            <li><a href="/">Home</a></li>
            <li>Appointment</li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->
    
	<div class="container" style="margin-top:20px;">
  <div class="card border-0 shadow my-5" >
    <div class="card-body p-5" >
      <p class="lead"><i class='fas fa-car' style='font-size:24px'></i>Book Your Appointment Now!</p>
    
    <div>
    <form:form action="/mybid/${cardata.cid}" name="myform" method="post" modelAttribute="bid" onsubmit="return validateform()">
  <div class="form-group" >
    <form:label for="day" path="day">Date of appointment</form:label>
    <form:input type="date" class="form-control" path="day" for="day"  aria-describedby="emailHelp" placeholder="22/07/22"/>
  </div> 
  <div class="form-group" >
    <form:label for="mobile" path="mobile">Mobile No.</form:label>
    <form:input type="text" class="form-control" path="mobile" for="mobile" aria-describedby="emailHelp" placeholder="987654XXXX"/>
  </div>
  <div class="form-group" >
    <form:label for="time" path="time">Preferred Time for appointment</form:label>
 		 <form:select for="time" path="time" class="custom-select" id="inputGroupSelect02">
   			<form:option for="time" path="time" value="10:00-11:00">10:00-11:00</form:option>
    		<form:option for="time" path="time" value="11:00-12:00">11:00-12:00</form:option>
    		<form:option for="time" path="time" value="12:00-13:00">12:00-13:00</form:option>
   			<form:option for="time" path="time" value="13:00-14:00">13:00-14:00</form:option>
    		<form:option for="time" path="time" value="14:00-15:00">14:00-15:00</form:option>
    		<form:option for="time" path="time" value="15:00-16:00">15:00-16:00</form:option>
   			<form:option for="time" path="time" value="16:00-17:00">16:00-17:00</form:option>
    		<form:option for="time" path="time" value="17:00-18:00">17:00-18:00</form:option>
    		<form:option for="time" path="time" value="18:00-19:00">18:00-19:00</form:option>
  			</form:select>
  </div>
  <div class="form-group" >
    <form:label style="padding-right:10px;" for="mode" path="mode">Mode of appointment</form:label>
    <form:radiobutton path="mode" value="online" label="Online" style="padding-right:10px;"/>
    <form:radiobutton path="mode" value="offline" label="Offline" />
  </div>
  <div class="form-group">
    <form:label path="address" for="address">Address </form:label>
    <form:input type="text" class="form-control" path="address" for="address" placeholder="Mp nagar 126-R Street 45 MP India "/>
    <small id="Help" class="form-text text-muted">If your mode of appointment is online , no need of filling this!</small>
  </div>
  
  <form:button type="reset" class="btn btn-danger">Reset</form:button>
  <form:button type="submit" class="btn btn-success">Book</form:button>
</form:form>
    
    </div>
    </div>
  </div>
</div>
	
	<nav>
		<%@ include file="footer.jsp" %>
	</nav>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
  </body>
</html>