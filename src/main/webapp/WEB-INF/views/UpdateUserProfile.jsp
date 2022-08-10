<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <!doctype html>
<html lang="en">
  <head>
    <title>ABC Cars</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
    
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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
  <div class="container" style="margin-top:20px;">
  <div class="card border-0 shadow my-5" >
    <div class="card-body p-5" >
      <p class="lead"><i class='fas fa-car' style='font-size:24px'></i>Modify Profile details!</p>
    
	<div style="margin:50px 0 100px 100px;">
	
	<form action="/saveUpdateUserData" method="get">

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