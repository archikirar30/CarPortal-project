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
          <h2>Admin Dashboard</h2>
          <ol>
            <li><a href="/">Home</a></li>
            <li>Dashboard</li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->
    
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

<div class="sidebar">
  <a class="active" href="/profile">Profile</a>
  <a href="/viewuser">Manage user/s</a>
  <a href="/admin">Manage car/s</a>
  <a href="/viewallbid">Manage bid/s</a>
</div>

<div class="content">
  <section class="breadcrumbs" style="margin-top:75px">
      <div class="container">
<p class="lead">Manage Bid!</p>
<div style="margin:50px 0 100px 0 ;">
<table class="table align-middle mb-0 bg-white">
  <thead class="bg-light">
    <tr>
      <th>Bidding id </th>
      <th>Car Details</th>
      <th>User Details</th>
      <th>Meeting Details</th>
      <th>Address</th>
      <th>Status</th>
      <th>Actions</th>
    </tr>
  </thead>
  	<dd:forEach var="searchdata" items="${biddata}">
  <tbody>
    <tr>
      <td>
        <p class="fw-normal mb-1">${searchdata.bid}</p>
      </td>
      <td>
            <p class="fw-bold mb-1">Car-id ${searchdata.cid}</p>
            <p class="fw-bold mb-1">${searchdata.carname}</p>
            <p class="text-muted mb-0">${searchdata.model}</p>
            <p class="text-muted mb-0">Made year- ${searchdata.registration}</p>
      </td>
      <td>
        <p class="fw-bold mb-1">User-id ${searchdata.userId}</p>
        <p class="fw-bold mb-1">${searchdata.userName}</p>
        <p class="text-muted mb-0">${searchdata.mobile}</p>
        <p class="text-muted mb-0">${searchdata.mailid}</p>
      </td>
      <td>
        <p class="fw-normal mb-1">${searchdata.mode}</p>
        <p class="fw-normal mb-1">${searchdata.day}</p>
        <p class="text-muted mb-0">${searchdata.time}</p>
      </td>
      <td>
        <p class="fw-normal mb-1">${searchdata.address}</p>
      </td>
      <td>
        <span class="badge badge-success rounded-pill d-inline">${searchdata.status}</span>
      </td>
      <td>
        <button type="button" onclick="location.href='approve/${searchdata.bid}';" class="btn btn-link btn-sm btn-rounded">
          Approve
        </button>
        <button type="button" onclick="location.href='reject/${searchdata.bid}';" class="btn btn-link btn-sm btn-rounded">
          Reject
        </button>
      </td>
    </tr>
  </tbody>
    </dd:forEach>
</table>

      </div>
      </div>
    </section><!-- End About Us Section -->
</div>
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