<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Abc Mall Rental</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">


  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">


  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">


  <link href="assets/css/style.css" rel="stylesheet">


</head>

<body>

 <% 
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
if(session.getAttribute("email")==null)
{
	response.sendRedirect("adminlogin.jsp");
}
%>



   <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" href="#">Abc<span class="color-b">Mall</span></a>
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" href="revenue.jsp">Revenue</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admincomplain.jsp">Complains</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="adminproperty.jsp">Property used</a>
          </li>
         
          
         

          
          <li class="nav-item">
            <a class="nav-link" href="adminregister.jsp">Register new space</a>
          </li>
        </ul>
      </div>
      <button type="button" class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      <form action="adminlogout" method="POST">
        <button type="submit" class="btn btn-success" value="Logout">Logout</button></form>
    </div>
  </nav>
 <section class="contact">
      <div class="container">
        <div class="row">  
          <div class="col-sm-12 section-t8">

       <form action="a.jsp" method="POST"  >

                      <div class="col-md-12 mb-1">
                        <div class="form-group">
                         <label for="Date">Select the date:</label><br>
<input type="date" id="DaTE" name="date" required><br>
<button type="submit" class="btn btn-success">Click here for per day revenue</button>
                        </div>
                      </div></form>
                      
       <form action="totalrevenue.jsp" method="GET"  >

                      <div class="col-md-12 mb-1">
                        <div class="form-group">
                         
<button type="submit" class="btn btn-success">Click here for total Revnue</button>
                        </div>
                      </div>
                      
                      </form>
                      </div>
                      </div>
                      </div>
                      </section>
                      



  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>


  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/scrollreveal/scrollreveal.min.js"></script>


  <script src="assets/js/main.js"></script>

</body>


</html>