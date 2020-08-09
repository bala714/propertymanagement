<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Property</title>
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
	response.sendRedirect("login.jsp");
}
%>
  <div class="click-closed"></div>
 
  <div class="box-collapse">
    <div class="title-box-d">
      <h3 class="title-d">Search Shop</h3>
    </div>
    <span class="close-box-collapse right-boxed ion-ios-close"></span>
    <div class="box-collapse-wrap form">
      <form class="form-a">
        <div class="row">
          <div class="col-md-12 mb-2">
            <div class="form-group">
              <label for="Type">Keyword</label>
              <input type="text" class="form-control form-control-lg form-control-a" placeholder="Keyword">
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="Type">Type</label>
              <select class="form-control form-control-lg form-control-a" id="Type">
                <option>All Type</option>
                <option>Shop Big</option>
                <option>Shop Small</option>
                <option>Shop Medium</option>
                <option>Atrium</option>
                <option>Theatre</option>
              </select>
            </div>
          </div>
         
          <div class="col-md-12">
            <button type="submit" class="btn btn-b">Search Property</button>
          </div>
        </div>
      </form>
    </div>
  </div>



   <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" href="index.jsp">Abc<span class="color-b">Mall</span></a>
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.jsp">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="property-grid.jsp">Property</a>
          </li>
         
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Shops
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="property-single6.jsp">Shop-Big</a>
              <a class="dropdown-item" href="property-single.jsp">Shop-Small</a>
              <a class="dropdown-item" href="property-single-3.jsp">Shop-Medium</a>
              <a class="dropdown-item" href="property-single1.jsp">Atrium</a>
            </div>
          </li>

          
          <li class="nav-item">
            <a class="nav-link" href="contact.jsp">Contact</a>
          </li>
        </ul>
      </div>
      <button type="button" class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      <form action="Logout" method="POST">
        <button type="submit" class="btn btn-success" value="Logout">Logout</button></form>
    </div>
  </nav>

  <main id="main">

    
    <section class="intro-single">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-lg-8">
            <div class="title-single-box">
              <h1 class="title-single">Atrium-Weekdays</h1>
              <span class="color-text-a">Abc Mall</span>
            </div>
          </div>
          <div class="col-md-12 col-lg-4">
            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="index.jsp">Home</a>
                </li>
                <li class="breadcrumb-item">
                  <a href="property-grid.jsp">Properties</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                  Atrium-Weekdays
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </section>
    
    <section class="property-single nav-arrow-b">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div id="property-single-carousel" class="owl-carousel owl-arrow gallery-property">
              <div class="carousel-item-b">
                <img src="assets/img/property-3.jpg" alt="">
              </div>
              
            </div>
            <div class="row justify-content-between">
              <div class="col-md-5 col-lg-4">
                <div class="property-price d-flex justify-content-center foo">
                  <div class="card-header-c d-flex">
                    <div class="card-box-ico">
                      <span class="ion-money">Rs.</span>
                    </div>
                    <div class="card-title-c align-self-center">
                      <h5 class="title-c">5000</h5>
                    </div>
                  </div>
                </div>
                <div class="property-summary">
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="title-box-d section-t4">
                        
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
              <div class="col-md-7 col-lg-7 section-md-t3">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="title-box-d">
                      <h3 class="title-d">Shop Description</h3>
                    </div>
                  </div>
                </div>
                <div class="property-description">
                  <p class="description color-text-a">
                    Abc Mall is one of the popular malls in Coimbatore.The infrastructure is top notch.
                    There are five floors with various business spaces like small shops,medium shops,big shops,atriums,theatre etc.
                  </p>
                  <p class="description color-text-a no-margin">
                   Abc Mall provided reliable service to its business space owners.Abc entertainment is one of the most trusted
                   organisation in the world.Any problem you get immediate solution.
                  </p>
                </div>
                
               
              </div>
            </div>
          </div>
          
      
                
              <div class="col-md-12 col-lg-4">
                <div class="property-contact">
                  <form class="form-a" action="register" method="POST">
                    <div class="row">
                      <div class="col-md-12 mb-1">
                        <div class="form-group">
                        <h3 class="title-d">Register property:</h3>
                          <input type="text" name="name" class="form-control form-control-lg form-control-a" id="inputName" placeholder="Name *" required>
                        </div>
                      </div>
                      <div class="col-md-12 mb-1">
                        <div class="form-group">
                          <input type="email" name="Email" class="form-control form-control-lg form-control-a" id="inputEmail1" placeholder="Email *" required>
                        </div>
                      </div>
                     <div class="col-md-6 mb-2">
            <div class="form-group">
              <label >Select Shop:</label>
              <select class="form-control form-control-lg form-control-a" id="Type" name="shop">
                <option>All Shops</option>
                <option>Atrium</option>
                
              </select>
            </div>
            <div class="form-group">
              <label for="Type">Select Price:</label>
              <select class="form-control form-control-lg form-control-a" id="Type" name="price">
                <option>All Prices(per unit)</option>
                <option>5000</option>
                
              </select>
            </div>
          </div>
                      <div class="col-md-12 mb-1">
                        <div class="form-group">
                         <label for="Date">Date:</label>
<input type="date" id="DaTE" name="date">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <button type="submit" class="btn btn-a">Register</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
   
    </section>

  </main>

 
   <section class="section-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-4">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">Real Estate Pvt Ltd.</h3>
              <p>The Mall was built by Real Estate Pvt Ltd.One of the best in the business.<br>They do personal homes,office workspaces,business spaces etc.<br>
             </p>
            </div>
            <div class="w-body-a">
              <p class="w-text-a color-text-a">
                
              </p>
            </div>
            <div class="w-footer-a">
              <ul class="list-unstyled">
                <li class="color-a">
                  <span class="color-text-a">Email. .</span> Realestate@gmail.com</li>
                <li class="color-a">
                  <span class="color-text-a">Phone .</span> 1234567890</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md-4 section-md-t3">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">Abc Entertainment</h3>
            </div>
            <p>Abc Entertainment-We are a top company in many established fields like Television,Movies,Malls etc.<br>Our top priority is to entertain customers by varierty of means.<br>We provide a breather to our customers in their busy schedule.<br>
             </p>
            </div>
            <div class="w-body-a">
              <div class="w-footer-a">
              <ul class="list-unstyled">
                <li class="color-a">
                  <span class="color-text-a">Email .</span> abcentertainment@gmail.com</li>
                <li class="color-a">
                  <span class="color-text-a">Phone .</span>9001234567</li>
              </ul>
            </div>
              </div></div>
       <div class="col-sm-12 col-md-4 section-md-t3">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">Types of Shops</h3>
            </div>
            <div class="w-body-a">
              <ul class="list-unstyled">
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="property-single.jsp">Shop Small</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="property-single3.jsp">Shop Medium</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="property-single5.jsp">Shop Large</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="property-single1.jsp">Atrium</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Theatre</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Food Court</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
       


  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <nav class="nav-footer">
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="index.jsp">Home</a>
              </li>
              <li class="list-inline-item">
                <a href="about.jsp">About</a>
              </li>
              <li class="list-inline-item">
                <a href="property-grid.jsp">Property</a>
              </li>
              <li class="list-inline-item">
                <a href="property-single.jsp">Shops</a>
              </li>
              <li class="list-inline-item">
                <a href="contact.jsp">Contact</a>
              </li>
            </ul>
          </nav>
          
          <div class="copyright-footer">
            <p class="copyright color-text-a">
              &copy; Copyright
              <span class="color-a">Abc Entertainment</span> All Rights Reserved.
            </p>
          </div>
          
        </div>
      </div>
    </div>
  </footer>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

 
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/scrollreveal/scrollreveal.min.js"></script>

  
  <script src="assets/js/main.js"></script>

</body>

</html>