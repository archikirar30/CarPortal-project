 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
    <!doctype html>
<html lang="en">
  <head>
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
          <h2>Signin to the ABC Cars and Buy and sell cars in affordable range !</h2>
          <ol>
            <li><a href="/">Home</a></li>
            <li>Signin </li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->
    
    <!-- Login form starts -->
	
<div class="container" style="margin-top:20px;">
  <div class="card border-0 shadow my-5" >
    <div class="card-body p-5" >
    
      <c:if test="${error_string != null}">

					<div class="alert alert-danger">
						${error_string}
					</div>

				</c:if>
				
				<c:url var="post_url" value="/login" />
    <form name='myform' action="${post_url}" method='POST'>
    
    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

      <!-- Email input -->
      <div class="form-outline mb-4">
        <input type="text" id="loginName" name='username' class="form-control" />
        <label class="form-label" for="username"> Username</label>
      </div>

      <!-- Password input -->
      <div class="form-outline mb-4">
        <input type="password" name='password' id="loginPassword" class="form-control" />
        <label class="form-label" for="password" >Password</label>
      </div>

      <!-- 2 column grid layout -->
      <div class="row mb-4">
        <div class="col-md-6 d-flex justify-content-center">
          <!-- Checkbox -->
          <div class="form-check mb-3 mb-md-0">
            <input class="form-check-input" type="checkbox" value="" id="loginCheck" checked />
            <label class="form-check-label" for="loginCheck"> Remember me </label>
          </div>
        </div>

        <div class="col-md-6 d-flex justify-content-center">
          <!-- Simple link -->
          <a href="#!">Forgot password?</a>
        </div>
      </div>
      <!-- Register buttons -->
      <div class="text-center">
        <p>Not a member? <a href="/register">Register</a></p>
      </div>

      <!-- Submit button -->
      <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>      
      </form>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      
      </div>
    </div>
  </div>
  
  <!--Login form ends   -->
	
    <nav>
	<%@ include file="footer.jsp" %>
	</nav>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
  <script>
		function validateform() {
			var userName = document.myform.userName.value;
			var password = document.myform.password.value;

			if (userName == "") {
				alert("Please enter your username!");
				return false;
			}

			if (password == "") {
				alert("Please enter your password!");
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
</html>