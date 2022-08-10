<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    
    <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
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
          <h2>Sell your car now!Register here</h2>
          <ol>
            <li><a href="/">Home</a></li>
            <li>Add cars</li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->
    
	<div class="container" style="margin-top:20px;">
  <div class="card border-0 shadow my-5" >
    <div class="card-body p-5" >
      <p class="lead"><i class='fas fa-car' style='font-size:24px'></i>Add your car!</p>
    
    <div>
    <form:form action="mycar" name="myform" method="post" modelAttribute="addcar" onsubmit="return validateform()" enctype="multipart/form-data" >
  <div class="form-group" >
    <form:label for="userName" path="userName">UserName</form:label>
    <form:input type="text" class="form-control" path="userName" for="userName" aria-describedby="emailHelp" placeholder="John"/>
  </div>
  <div class="form-group" >
    <form:label for="carname" path="carname">Model</form:label>
    <form:input type="text" class="form-control" path="carname" for="carname" aria-describedby="emailHelp" placeholder="Nexon"/>
  </div>
  <div class="form-group" >
    <form:label for="mobile" path="mobile">Mobile No.</form:label>
    <form:input type="text" class="form-control" path="mobile" for="mobile" aria-describedby="emailHelp" placeholder="987654XXXX"/>
  </div>
  <div class="form-group" >
    <form:label for="model" path="model">Brand</form:label>
    <form:input type="text" class="form-control" path="model" for="model" aria-describedby="emailHelp" placeholder="Tata"/>
  </div>
  <div class="form-group">
    <form:label path="registration" for="registration">Year of registration</form:label>
    <form:input type="number" path="registration" for="registration" class="form-control" placeholder="2019" />
  </div>
  <div class="form-group">
    <form:label path="color" for="color">Color</form:label>
    <form:input type="text" path="color" for="color" class="form-control" placeholder="Black" />
  </div>
  <div class="form-group">
    <form:label path="state" for="state">State</form:label>
    <form:input type="text" class="form-control" path="state" for="state" placeholder="Madhya Pradesh"/>
  </div>
  <div class="form-group">
    <form:label path="country" for="country">Country</form:label>
    <form:input type="text" class="form-control" path="country" for="country" placeholder="India"/>
  </div>
  <div class="form-group">
    <form:label path="price" for="price">Price</form:label>
    <form:input type="text" class="form-control" path="price" for="price" placeholder="Rs 6 lakhs/-"/>
  </div>
  <div class="form-group">
    <form:label for="image" path="image">Add Picture</form:label>
    <form:input type="file" name="img" for="image" path="image" class="form-control" placeholder="Add profile Image" />
  </div>
  <div class="form-group" >
    <form:label style="padding-right:10px;" for="userNew" path="userNew">Status</form:label>
    <form:radiobutton path="userNew" value="used" label="Used" style="padding-right:10px;"/>
    <form:radiobutton path="userNew" value="new" label="New" />
  </div>
  
  <form:button type="reset" class="btn btn-danger">Reset</form:button>
  <form:button type="submit" class="btn btn-success">Submit</form:button>
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