<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
    <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
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
    
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <title>ABC Cars </title>
  </head>
  <body> 
  
	<nav>
		<%@ include file="header.jsp" %>
	</nav>
	<section class="breadcrumbs" style="margin-top:75px">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Profile</h2>
          <ol>
            <li><a href="/">Home</a></li>
            <li>Profile</li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->
    <div class="container" style="margin-top:20px;">
  <div class="card border-0 shadow my-5" >
    <div class="card-body p-5" >
      <p class="lead"><i class='fas fa-car' style='font-size:24px'></i>Modify Profile details!</p>
    
	<div style="margin:50px 0 100px 100px;">
    <form action="/saveLoggedUserData" method="get">

  <!-- Userid input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example4">User id:</label>
    <input type="text" value="${searchdata.userId}" id="form6Example4" name="userId" class="form-control" />
  </div>
  <!-- 2 column grid layout with text inputs for the first and last names -->
  <div class="row mb-4">
    <div class="col">
      <div class="form-outline">
        <label class="form-label" for="form6Example1">UserName:</label>
        <input type="text" id="form6Example1" name="userName" value="${searchdata.userName}"class="form-control" />
      </div>
    </div>
    <div class="col">
      <div class="form-outline">
        <label class="form-label" for="form6Example2">Password:</label>
        <input type="password" id="form6Example2" name="password" value="${searchdata.password}" class="form-control" />
      </div>
      </div>
     </div>
  <!-- Full name input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example3">Full Name:</label>
    <input type="text" id="form6Example3" name="name" value="${searchdata.name}" class="form-control" />
  </div>
  
  <!-- Mobile input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example4">Mobile:</label>
    <input type="number" id="form6Example4" name="mobile" value="${searchdata.mobile}" class="form-control" />
  </div>
  
  <!-- Email input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example4">Email:</label>
    <input type="email" id="form6Example4" name="mailid" value="${searchdata.mailid}" class="form-control" />
  </div>
  
  <!-- Age input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example4">Age:</label>
    <input type="text" id="form6Example4" name="age" value="${searchdata.age}" class="form-control" />
  </div>

  <!-- Gender input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example5">Gender:</label>
    <input type="text" id="form6Example5" name="gender" value="${searchdata.gender}" class="form-control" />
  </div>
  
  <!-- State input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example5">State:</label>
    <input type="text" id="form6Example5" name="state" value="${searchdata.state}" class="form-control" />
  </div>

  <!-- Country input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example6">Country</label>
    <input type="text" id="form6Example6" name="country" value="${searchdata.country}" class="form-control" />
  </div>
  
  <!-- Image input -->
  <div class="form-outline mb-4">
  <img src="/uploadedImage/${searchdata.image}">
    <label class="form-label" for="form6Example6">Image:</label>
    <input type="file" id="form6Example6" name="image" class="form-control" />
  </div>

  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block mb-4">Update</button>
</form>

	  </div>
	</div>
  </div>
</div>
    <style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4b5a75;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
	<nav>
		<%@ include file="footer.jsp" %>
	</nav>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>