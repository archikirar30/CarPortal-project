<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>ABC Cars</title>
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
          <li><a href="/contact">Contact</a></li>
          <li><a href="/profile">Profile</a></li>
          <li><a href="/search">View Cars</a></li>
          <li><a href="/addcar">Add Car</a></li>
          <li><a href="/logout">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  <div class="content">
  <section class="breadcrumbs" style="margin-top:75px">
      <div class="container">

<p class="lead">Search Cars</p>

 <form action="/search">
      <div >
      Filter:
    	<input type="text" name="keyword" value="${keyword}" required />
  		<button type="submit" class="btn btn-primary">
    	Search
  		</button>&nbsp;
  		<button type="reset" class="btn btn-danger">
    	Clear
  		</button>
 	 </div>
 	
 </form>
<div style="margin:50px 0 100px 0 ;">
<table class="table align-middle mb-0 bg-white">
  <thead class="bg-light">
    <tr>
      <th>Car Id </th>
      <th>Car Detail</th>
      <th>User Detail</th>
      <th>Price</th>
      <th>Address</th>
      <th>Used/New</th>
      <th>Actions</th>
    </tr>
  </thead>
  	<dd:forEach var="searchdata" items="${cardata}">
  <tbody>
    <tr>
    <td>
        <p class="fw-normal mb-1">${searchdata.cid}</p>
      </td>
      <td>
        <div class="d-flex align-items-center">
          <img
              src="assets/img/car_image-1.jpg"
              alt=""
              style="width: 45px; height: 45px"
              class="rounded-circle"
              />
          <div class="ms-3">
            <p class="fw-bold mb-1">${searchdata.carname}</p>
            <p class="text-muted mb-0">${searchdata.model}</p>
            <p class="text-muted mb-0">${searchdata.registration}</p>
            <p class="text-muted mb-0">${searchdata.color}</p>
          </div>
        </div>
      </td>
      <td>
        <p class="fw-bold mb-1">${searchdata.userName}</p>
        <p class="text-muted mb-0">${searchdata.mobile}</p>
      </td>
      <td>
        <p class="fw-normal mb-1">${searchdata.price}</p>
      </td>
      <td>
        <p class="fw-normal mb-1">${searchdata.state}</p>
        <p class="text-muted mb-0">${searchdata.country}</p>
      </td>
      <td>
        <p class="fw-normal mb-1">${searchdata.userNew}</p>
      </td>
      <td>
        <button type="button" onclick="location.href='bidAppointment/${searchdata.cid}';" class="btn btn-link btn-sm btn-rounded">
          Book Appointment
        </button>
      </td>
    </tr>
  </tbody>
    </dd:forEach>
</table>
</div>
</div>
</section></div>
 <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
 <nav>
		<%@ include file="footer.jsp" %>
	</nav>
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