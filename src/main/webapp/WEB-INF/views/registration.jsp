<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Required meta tags -->
    <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
    <title>ABC Cars</title>
  </head>
  <body>
 	    <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <h1 class="text-light"><a class="navbar-brand" href="/"><i class='fas fa-car' style='font-size:24px'></i></a><span>ABC Cars</span></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="active " href="/">Home</a></li>
          <li><a href="/about">About</a></li>
          <li><a href="/signup">Signup</a></li>
          <li><a href="/contact">Contact</a></li>
          <li><a href="/login">Sign in </a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
	<section class="breadcrumbs" style="margin-top:75px">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Sign up!</h2>
          <ol>
            <li><a href="/">Home</a></li>
            <li>Signup</li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->
    <div class="container" style="margin-top:20px;">
  <div class="card border-0 shadow my-5" >
    <div class="card-body p-5" >
      <p class="lead">Sign up!</p>
    
    <div>
    <form:form action="myreg" name="myform" method="post" modelAttribute="register" onsubmit="return validateform()">
  <div class="form-group" >
    <form:label for="name" path="name">Name</form:label>
    <form:input type="text" class="form-control" path="name" for="name" aria-describedby="emailHelp" placeholder="Enter Name"/>
  </div>
  <div class="form-group" >
    <form:label for="userName" path="userName">User Name</form:label>
    <form:input type="text" class="form-control" path="userName" for="userName" aria-describedby="emailHelp" placeholder="Enter User Name"/>
  </div>
  <div class="form-group" >
    <form:label for="mailid" path="mailid">Email</form:label>
    <form:input type="text" class="form-control" path="mailid" for="mailid" aria-describedby="emailHelp" placeholder="Enter Email"/>
  </div>
  <div class="form-group" >
    <form:label for="password" path="password">Password</form:label>
    <form:input type="password" class="form-control" path="password" for="password" aria-describedby="emailHelp" placeholder="Enter Password"/>
    <small id="Help" class="form-text text-muted">You can use Numbers , Symbols , Uppercase and lowercase for creating user password!</small>
  </div>
  <div class="form-group">
    <form:label path="mobile" for="mobile">Phone number</form:label>
    <form:input type="number" path="mobile" for="mobile" class="form-control" placeholder="Enter Phone number" />
  </div>
  <div class="form-group">
    <form:label path="age" for="age">Age </form:label>
    <form:input type="number" path="age" for="age" class="form-control" placeholder="Enter Age" />
  </div>
  <div class="form-group">
    <form:label path="state" for="state">State</form:label>
    <form:input type="text" class="form-control" path="state" for="state" placeholder="Enter State"/>
  </div>
  <div class="form-group">
    <form:label path="country" for="country">Country</form:label>
    <form:input type="text" class="form-control" path="country" for="country" placeholder="Enter Country"/>
  </div>
  <div class="form-group">
    <form:label path="image" for="image">Add Profile</form:label>
    <form:input type="file" class="form-control" path="image" for="image" placeholder="Add profile Image"/>
  </div>
  <div class="form-group" >
    <form:label style="padding-right:10px;" for="gender" path="gender">Gender</form:label>
    <form:radiobutton path="gender" value="male" label="Male" style="padding-right:10px;"/>
    <form:radiobutton path="gender" value="female" label="Female" />
  </div>
  
  <form:button type="reset" class="btn btn-danger">Reset</form:button>
  <form:button type="submit" class="btn btn-success">Signup</form:button>
</form:form>
    
    </div>
    </div>
  </div>
</div>
<nav>
<%@ include file="footer.jsp" %>
</nav>
<script>
		function validateform() {
			var name = document.myform.name.value;
			var state = document.myform.state.value;
			var country = document.myform.country.value;
			var age = document.myform.age.value;
			var gender = document.myform.gender.value;
			var phone = document.myform.mobile.value;
			var email = document.myform.mailid.value;
			var userName = document.myform.userName.value;
			var password = document.myform.password.value;

			if (name == "") {
				alert("Name is Mandatory");
				return false;
			}

			if (phone == "") {
				alert("Mobile Number is Mandatory");
				return false;
			}
			if (age == "") {
				alert("Age is Mandatory");
				return false;
			}
			if (gender == "") {
				alert("Gender is Mandatory");
				return false;
			}

			if (state == "") {
				alert("state is Mandatory");
				return false;
			}
			if (country == "") {
				alert("country is Mandatory");
				return false;
			}

			if (email == "") {
				alert("Email is Mandatory");
				return false;
			}

			if (password == "") {
				alert("password is Mandatory");
				return false;
			}
			if (userName == "") {
				alert("User Name is Mandatory");
				return false;
			}
		}
	</script>

   <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  </body>
</html>