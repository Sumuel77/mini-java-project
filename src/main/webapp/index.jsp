<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SM-Duknang</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
  <!--Header start-->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">

      <div class="container-fluid py-2">

          <!-- Logo -->
          <a class="navbar-brand ps-lg-5" href="#">
              <img src="img/logo2.png" style="max-width: 200px;" alt="Logo">
          </a>

          <!-- Mobile Toggle -->
          <button class="navbar-toggler"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#menu">
              <span class="navbar-toggler-icon"></span>
          </button>

          <!-- Menu -->
          <div class="collapse navbar-collapse" id="menu">

              <!-- Center Menu -->
              <ul class="navbar-nav mx-auto">

                  <li class="nav-item">
                      <a href="#" class="nav-link mx-2 active">Home</a>
                  </li>

                  <li class="nav-item">
                      <a href="about.html" class="nav-link mx-2">About</a>
                  </li>

                  <li class="nav-item dropdown">
                      <a href="#" class="nav-link mx-2 dropdown-toggle"
                         role="button"
                         data-bs-toggle="dropdown">
                          Shop
                      </a>

                      <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#">Man</a></li>
                          <li><a class="dropdown-item" href="#">Woman</a></li>
                          <li><a class="dropdown-item" href="#">Kids</a></li>
                      </ul>
                  </li>

                  <li class="nav-item">
                      <a href="#" class="nav-link mx-2">Contact</a>
                  </li>

              </ul>

              <!-- Right Side -->
              <!-- RIGHT SIDE -->
                          <div class="d-flex align-items-center gap-3 ms-auto pe-lg-4">

                              <!-- Search -->
                              <form class="d-flex">
                                  <input class="form-control me-2" type="search" placeholder="Search">
                                  <button class="btn btn-outline-success">
                                  <i class="fa-solid fa-magnifying-glass"></i>
                                  </button>
                              </form>

                              <%
                              String user = (String) session.getAttribute("user");

                              if (user != null) {
                              %>

                                  <!-- LOGGED IN UI -->
                                  <span class="welcome-text text-dark">
                                      Hi, <%= user %>
                                  </span>

                                  <a href="#" class="btn btn-outline-dark btn-sm">Cart</a>
                                  <a href="#" class="btn btn-outline-dark btn-sm">Orders</a>
                                  <a href="#" class="btn btn-outline-dark btn-sm">Profile</a>
                                  <a href="logout" class="btn btn-danger btn-sm">Logout</a>

                              <%
                              } else {
                              %>

                                  <!-- GUEST UI -->
                                  <a href="register.jsp" class="btn btn-outline-primary btn-sm">Sign Up</a>
                                  <a href="login.jsp" class="btn btn-dark btn-sm">Login</a>

                              <%
                              }
                              %>

                          </div>


          </div>

      </div>

  </nav>
  <!--Header end-->

  <!--Banner start-->
    <section class="">
        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-md-12">
                    <div class="carousel" id="carouselExampleCaption">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="img/banner-1.jpg" class="d-block w-100" alt="">
                                <div class="carousel-caption text-white fw-bold">
                                    <h1></h1>
                                </div>
                            </div>
                            <div class="carousel-item ">
                                <img src="img/banner-2.jpg" class="d-block w-100 " alt="">
                                <div class="carousel-caption text-white fw-bold">
                                    <h1>Summer Collection</h1>
                                </div>
                            </div>
                            <div class="carousel-item ">
                                <img src="img/banner-3.png" class="d-block w-100" alt="">
                                <div class="carousel-caption text-white fw-bold">
                                    <h1>Summer Collection</h1>
                                </div>
                            </div>
                            <div class="carousel-item ">
                                <img src="img/banner-4.png" class="d-block w-100" alt="">
                                <div class="carousel-caption text-white fw-bold">
                                    <h1>Summer Collection</h1>
                                </div>
                            </div>
                            <button type="button" class="carousel-control-prev" data-bs-target="#carouselExampleCaption" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                            </button>
                            <button type="button" class="carousel-control-next" data-bs-target="#carouselExampleCaption" data-bs-slide="next">
                                <span  class="carousel-control-next-icon"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  <!--Banner end-->

  <!--Product Feature Section Start -->
  <section class="mt-4 feature-align bg-body-secondary">
      <div class="container-fluid">
          <div class="row">
              <div class="col-md-12">
                  <ul>
                      <li class="feature">
                          <a href="">MAN</a>
                      </li>
                      <li class="feature">
                          <a href="">WOMAN</a>
                      </li>
                      <li class="feature">
                          <a href="">KIDS</a>
                      </li>
                  </ul>
              </div>
          </div>
      </div>
  </section>

  <section class="py-5 bg-light">
      <div class="container text-center">
          <h3 class="section-title mb-3">
              Discover our latest collection
          </h3>
          <div class="title-line mx-auto mb-4"></div>
      </div>

  </section>

  <!-- Discover Products Section -->
  <section class="p-5">

      <div class="container">

          <div class="row g-4">

              <!-- 1 -->
              <div class="col-lg-3 col-md-6">
                  <div class="card product-card h-100 border-0 shadow-sm">

                      <div class="product-img position-relative overflow-hidden">

                          <a href="shop-details.html">
                              <img src="img/big1.jpg" class="card-img-top img-fluid">
                          </a>

                          <div class="view-overlay">
                              <a href="shop-details.html" class="quick-view-btn">
                                  Quick View
                              </a>
                          </div>

                      </div>

                      <div class="card-body text-center">

                          <a href="shop-details.html" class="product-title-link">
                              <h5 class="product-title">Mens Premium T-Shirt</h5>
                          </a>

                          <p class="text-success fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 2,500</p>

                      </div>

                  </div>
              </div>

              <!-- 2 -->
              <div class="col-lg-3 col-md-6">
                  <div class="card product-card h-100 border-0 shadow-sm">

                      <div class="product-img position-relative overflow-hidden">

                          <a href="shop-details.html">
                              <img src="img/big2.jpg" class="card-img-top img-fluid">
                          </a>

                          <div class="view-overlay">
                              <a href="shop-details.html" class="quick-view-btn">
                                  Quick View
                              </a>
                          </div>

                      </div>

                      <div class="card-body text-center">

                          <a href="shop-details.html" class="product-title-link">
                              <h5 class="product-title">Casual Hoodie</h5>
                          </a>

                          <p class="text-success fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 3,000</p>

                      </div>

                  </div>
              </div>

              <!-- 3 -->
              <div class="col-lg-3 col-md-6">
                  <div class="card product-card h-100 border-0 shadow-sm">

                      <div class="product-img position-relative overflow-hidden">

                          <a href="shop-details.html">
                              <img src="img/big3.jpg" class="card-img-top img-fluid">
                          </a>

                          <div class="view-overlay">
                              <a href="shop-details.html" class="quick-view-btn">
                                  Quick View
                              </a>
                          </div>

                      </div>

                      <div class="card-body text-center">

                          <a href="shop-details.html" class="product-title-link">
                              <h5 class="product-title">Premium Panjabi</h5>
                          </a>

                          <p class="text-success fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 2,800</p>

                      </div>

                  </div>
              </div>

              <!-- 4 -->
              <div class="col-lg-3 col-md-6">
                  <div class="card product-card h-100 border-0 shadow-sm">

                      <div class="product-img position-relative overflow-hidden">

                          <a href="shop-details.html">
                              <img src="img/big4.jpg" class="card-img-top img-fluid">
                          </a>

                          <div class="view-overlay">
                              <a href="shop-details.html" class="quick-view-btn">
                                  Quick View
                              </a>
                          </div>

                      </div>

                      <div class="card-body text-center">

                          <a href="shop-details.html" class="product-title-link">
                              <h5 class="product-title">Stylish Shirt</h5>
                          </a>

                          <p class="text-success fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 2,200</p>

                      </div>

                  </div>
              </div>

              <!-- 5 -->
              <div class="col-lg-3 col-md-6">
                  <div class="card product-card h-100 border-0 shadow-sm">

                      <div class="product-img position-relative overflow-hidden">

                          <a href="shop-details.html">
                              <img src="img/w11.jpg" class="card-img-top img-fluid">
                          </a>

                          <div class="view-overlay">
                              <a href="shop-details.html" class="quick-view-btn">
                                  Quick View
                              </a>
                          </div>

                      </div>

                      <div class="card-body text-center">

                          <a href="shop-details.html" class="product-title-link">
                              <h5 class="product-title">Women Kurti</h5>
                          </a>

                          <p class="text-success fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 1,800</p>

                      </div>

                  </div>
              </div>

              <!-- 6 -->
              <div class="col-lg-3 col-md-6">
                  <div class="card product-card h-100 border-0 shadow-sm">

                      <div class="product-img position-relative overflow-hidden">

                          <a href="shop-details.html">
                              <img src="img/w12.jpg" class="card-img-top img-fluid">
                          </a>

                          <div class="view-overlay">
                              <a href="shop-details.html" class="quick-view-btn">
                                  Quick View
                              </a>
                          </div>

                      </div>

                      <div class="card-body text-center">

                          <a href="shop-details.html" class="product-title-link">
                              <h5 class="product-title">Designer Kurti</h5>
                          </a>

                          <p class="text-success fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 2,000</p>

                      </div>

                  </div>
              </div>

              <!-- 7 -->
              <div class="col-lg-3 col-md-6">
                  <div class="card product-card h-100 border-0 shadow-sm">

                      <div class="product-img position-relative overflow-hidden">

                          <a href="shop-details.html">
                              <img src="img/w13.jpeg" class="card-img-top img-fluid">
                          </a>

                          <div class="view-overlay">
                              <a href="shop-details.html" class="quick-view-btn">
                                  Quick View
                              </a>
                          </div>

                      </div>

                      <div class="card-body text-center">

                          <a href="shop-details.html" class="product-title-link">
                              <h5 class="product-title">Elegant Kurti</h5>
                          </a>

                          <p class="text-success fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 1,950</p>

                      </div>

                  </div>
              </div>

              <!-- 8 -->
              <div class="col-lg-3 col-md-6">
                  <div class="card product-card h-100 border-0 shadow-sm">

                      <div class="product-img position-relative overflow-hidden">

                          <a href="shop-details.html">
                              <img src="img/w14.jpg" class="card-img-top img-fluid">
                          </a>

                          <div class="view-overlay">
                              <a href="shop-details.html" class="quick-view-btn">
                                  Quick View
                              </a>
                          </div>

                      </div>

                      <div class="card-body text-center">

                          <a href="shop-details.html" class="product-title-link">
                              <h5 class="product-title">Premium Kurti</h5>
                          </a>

                          <p class="text-success fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 2,300</p>

                      </div>

                  </div>
              </div>

              <div class="text-center mt-4">
                  <a href="" class="btn btn-dark px-5 py-2"> View All Products → </a>
              </div>

          </div>

      </div>

  </section>
  <!-- Product Feature Section end -->
  <section class="py-5 bg-gradient offer-section">

      <div class="container">

          <div class="row align-items-center">

              <!-- LEFT IMAGE -->
              <div class="col-md-6 text-center">

                  <img src="img/banner-5.png"
                       class="img-fluid offer-img"
                       alt="Special Offer">

              </div>

              <!-- TEXT SIDE -->
              <div class="col-md-6">
                  <div class="offer-text">
                    <span class="text-primary fw-semibold">
                        New Season Trends!
                    </span>

                      <h2 class="mt-2 mb-3">
                          Special Summer Collection
                      </h2>

                      <h5 class="text-danger mb-4">
                          Get Up to 50% OFF
                      </h5>

                      <a href="#" class="btn btn-dark px-4 py-2">
                          Shop Now
                      </a>
                  </div>
              </div>

          </div>
      </div>
  </section>

  <section class="accessories-banner bg-secondary-subtle py-5">
      <div class="container">
          <div class="row align-items-center">

              <!-- TEXT SIDE -->
              <div class="col-md-6">
                  <div class="accessories-text">

                    <span class="text-muted fw-semibold">
                        Accessories Collection
                    </span>

                      <h2 class="mt-2 mb-3">
                          Upgrade Your Style
                      </h2>

                      <p class="text-secondary mb-4">
                          Discover premium accessories that complete your look — watches, bags, belts and more.
                      </p>

                      <a href="#" class="btn btn-outline-dark px-4 py-2">
                          Explore Accessories
                      </a>

                  </div>
              </div>

              <!-- IMAGE SIDE -->
              <div class="col-md-6 text-center">
                  <img src="img/watch.png"
                       class="img-fluid accessories-img"
                       alt="Accessories Banner">
              </div>

          </div>
      </div>
  </section>
  <section class="py-5 bg-light">

      <div class="container">

          <!-- Title -->
          <div class="text-center mb-5">
              <h2>Accessories Collection</h2>
              <p class="text-muted">
                  Complete your style with premium accessories
              </p>
          </div>

          <div class="row g-4">

              <!-- Item 1 -->
              <div class="col-lg-3 col-md-6">
                  <div class="accessory-card text-center">

                      <img src="img/watch1.jpg"
                           class="img-fluid mb-3 accessory-img">

                      <h5>Luxury Watch</h5>
                      <p class="text-danger fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 2,500</p>

                      <a href="#" class="btn btn-outline-dark btn-sm">
                          View Details
                      </a>

                  </div>
              </div>

              <!-- Item 2 -->
              <div class="col-lg-3 col-md-6">
                  <div class="accessory-card text-center">

                      <img src="img/bag1.jpg"
                           class="img-fluid mb-3 accessory-img">

                      <h5>Leather Bag</h5>
                      <p class="text-danger fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 1,800</p>

                      <a href="#" class="btn btn-outline-dark btn-sm">
                          View Details
                      </a>

                  </div>
              </div>

              <!-- Item 3 -->
              <div class="col-lg-3 col-md-6">
                  <div class="accessory-card text-center">

                      <img src="img/belt2.jpg"
                           class="img-fluid mb-3 accessory-img">

                      <h5>Premium Belt</h5>
                      <p class="text-danger fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 950</p>

                      <a href="#" class="btn btn-outline-dark btn-sm">
                          View Details
                      </a>

                  </div>
              </div>

              <!-- Item 4 -->
              <div class="col-lg-3 col-md-6">
                  <div class="accessory-card text-center">

                      <img src="img/sunglass1.jpg"
                           class="img-fluid mb-3 accessory-img">

                      <h5>Stylish Sunglass</h5>
                      <p class="text-danger fw-bold"><i class="fa-solid fa-bangladeshi-taka-sign"></i> 1,200</p>

                      <a href="#" class="btn btn-outline-dark btn-sm">
                          View Details
                      </a>

                  </div>
              </div>

          </div>

      </div>

  </section>
  <section class="py-5 bg-secondary-subtle">

      <div class="container text-center">

          <h2 class="mb-5">Why Choose Us</h2>

          <div class="row g-4">

              <!-- Item -->
              <div class="col-md-3">
                  <div class="why-card p-4">

                      <div class="why-icon mb-3">
                          <i class="fa fa-truck fa-2x text-success mb-3"></i>
                      </div>

                      <h5>Free Delivery</h5>
                      <p class="text-muted">
                          Fast delivery across the country
                      </p>

                  </div>
              </div>

              <!-- Item -->
              <div class="col-md-3">
                  <div class="why-card p-4">

                      <div class="why-icon mb-3">
                          <i class="fa fa-star fa-2x text-success mb-3"></i>
                      </div>

                      <h5>Secure Payment</h5>
                      <p class="text-muted">
                          100% safe payment methods
                      </p>

                  </div>
              </div>

              <!-- Item -->
              <div class="col-md-3">
                  <div class="why-card p-4">

                      <div class="why-icon mb-3">
                          <i class="fa fa-rotate-left fa-2x text-success mb-3"></i>
                      </div>

                      <h5>Easy Return</h5>
                      <p class="text-muted">
                          Hassle-free return policy
                      </p>

                  </div>
              </div>

              <!-- Item -->
              <div class="col-md-3">
                  <div class="why-card p-4">

                      <div class="why-icon mb-3">
                          <i class="fa fa-headset fa-2x text-success mb-3"></i>
                      </div>

                      <h5>24/7 Support</h5>
                      <p class="text-muted">
                          Always available to help
                      </p>

                  </div>
              </div>

          </div>

      </div>

  </section>
  <section class="py-5 bg-success-subtle">

      <div class="container">

          <h2 class="text-center mb-5">What Our Customers Say</h2>

          <div id="reviewSlider" class="carousel slide" data-bs-ride="carousel">

              <!-- Dots -->
              <div class="carousel-indicators">
                  <button type="button" data-bs-target="#reviewSlider" data-bs-slide-to="0" class="active"></button>
                  <button type="button" data-bs-target="#reviewSlider" data-bs-slide-to="1"></button>
                  <button type="button" data-bs-target="#reviewSlider" data-bs-slide-to="2"></button>
              </div>

              <div class="carousel-inner">

                  <!-- Slide 1 -->
                  <div class="carousel-item active">
                      <div class="d-flex justify-content-center">

                          <div class="review-card text-center p-4">
                              <div class="stars mb-2">⭐⭐⭐⭐⭐</div>
                              <p>"Amazing quality products! Fast delivery."</p>
                              <h6 class="mt-3">— John Doe</h6>
                          </div>

                      </div>
                  </div>

                  <!-- Slide 2 -->
                  <div class="carousel-item">
                      <div class="d-flex justify-content-center">

                          <div class="review-card text-center p-4">
                              <div class="stars mb-2">⭐⭐⭐⭐⭐</div>
                              <p>"Great service and support. Highly recommended!"</p>
                              <h6 class="mt-3">— Sarah Khan</h6>
                          </div>

                      </div>
                  </div>

                  <!-- Slide 3 -->
                  <div class="carousel-item">
                      <div class="d-flex justify-content-center">

                          <div class="review-card text-center p-4">
                              <div class="stars mb-2">⭐⭐⭐⭐⭐</div>
                              <p>"Best shopping experience ever!"</p>
                              <h6 class="mt-3">— Ahmed Ali</h6>
                          </div>

                      </div>
                  </div>

              </div>

              <!-- Left Arrow -->
              <button class="carousel-control-prev" type="button" data-bs-target="#reviewSlider" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon"></span>
              </button>

              <!-- Right Arrow -->
              <button class="carousel-control-next" type="button" data-bs-target="#reviewSlider" data-bs-slide="next">
                  <span class="carousel-control-next-icon"></span>
              </button>

          </div>

      </div>

  </section>
  <section class="py-5">

      <div class="container">

          <h2 class="text-center mb-5">
              🔥 Best Selling Products
          </h2>

          <div class="row g-4">

              <!-- Product 1 -->
              <div class="col-lg-3 col-md-6">

                  <div class="card product-card h-100 position-relative">

                    <span class="badge bg-danger position-absolute m-2">
                        Best Seller
                    </span>

                      <img src="img/w14.jpg"
                           class="card-img-top product-img">

                      <div class="card-body text-center">

                          <h5>Stylish Shirt</h5>

                          <p class="text-success fw-bold">
                              <i class="fa-solid fa-bangladeshi-taka-sign"></i> 2,500
                          </p>

                          <a href="shop-details.html"
                             class="btn btn-outline-dark btn-sm mt-2">
                              View Details
                          </a>

                      </div>

                  </div>

              </div>

              <!-- Product 2 -->
              <div class="col-lg-3 col-md-6">

                  <div class="card product-card h-100 position-relative">

                    <span class="badge bg-danger position-absolute m-2">
                        Best Seller
                    </span>

                      <img src="img/big7.jpg"
                           class="card-img-top product-img">

                      <div class="card-body text-center">

                          <h5>Casual Hoodie</h5>

                          <p class="text-success fw-bold">
                              <i class="fa-solid fa-bangladeshi-taka-sign"></i> 3,000
                          </p>

                          <a href="shop-details.html"
                             class="btn btn-outline-dark btn-sm mt-2">
                              View Details
                          </a>

                      </div>

                  </div>

              </div>

              <!-- Product 3 -->
              <div class="col-lg-3 col-md-6">

                  <div class="card product-card h-100 position-relative">

                    <span class="badge bg-danger position-absolute m-2">
                        Best Seller
                    </span>

                      <img src="img/w3.jpg"
                           class="card-img-top product-img">

                      <div class="card-body text-center">

                          <h5>Premium Panjabi</h5>

                          <p class="text-success fw-bold">
                              <i class="fa-solid fa-bangladeshi-taka-sign"></i> 2,800
                          </p>

                          <a href="shop-details.html"
                             class="btn btn-outline-dark btn-sm mt-2">
                              View Details
                          </a>

                      </div>

                  </div>

              </div>

              <!-- Product 4 -->
              <div class="col-lg-3 col-md-6">

                  <div class="card product-card h-100 position-relative">

                    <span class="badge bg-danger position-absolute m-2">
                        Best Seller
                    </span>

                      <img src="img/w1.jpg"
                           class="card-img-top product-img">

                      <div class="card-body text-center">

                          <h5>Classic T-Shirt</h5>

                          <p class="text-success fw-bold">
                              <i class="fa-solid fa-bangladeshi-taka-sign"></i> 1,500
                          </p>

                          <a href="shop-details.html"
                             class="btn btn-outline-dark btn-sm mt-2">
                              View Details
                          </a>

                      </div>

                  </div>

              </div>

          </div>

      </div>

  </section>
  <!--Footer start-->
  <footer class="bg-dark text-light pt-5">

      <div class="container-fluid px-5">

          <div class="row g-4">

              <!-- Brand -->
              <div class="col-md-3 ">
                  <h4>SmDuknang</h4>
                  <hr>

                  <p>
                      SmDuknang is a traditional clothing brand in Bangladesh, offering beautifully crafted ethnic wear that blends cultural heritage with modern style.
                  </p>

                  <h5>Stay Connected</h5>

                  <div class="social-icons mt-3">
                      <i class="fa-brands fa-facebook"></i>
                      <i class="fa-brands fa-twitter"></i>
                      <i class="fa-brands fa-instagram"></i>
                      <i class="fa-solid fa-phone"></i>
                      <i class="fa-solid fa-envelope"></i>
                  </div>
              </div>

              <!-- Customer Service -->
              <div class="col-md-3 ">
                  <h4>Customer Service</h4>
                  <hr>

                  <ul class="footer-links">
                      <li>Privacy & Policy</li>
                      <li>Terms and Conditions</li>
                      <li>Help Center</li>
                      <li>Transaction Services Agreement</li>
                  </ul>
              </div>

              <!-- Contact -->
              <div class="col-md-3 ">
                  <h4>Contact</h4>
                  <hr>

                  <p><i class="fa-solid fa-phone text-info"></i> +08801880318828</p>
                  <p><i class="fa-solid fa-phone text-info"></i> +08801866699504</p>

                  <p>
                      <i class="fa-solid fa-envelope text-info"></i>
                      <a href="mailto:sumueltripura77@gmail.com">sumueltripura77@gmail.com</a>
                  </p>
              </div>

              <!-- Address -->
              <div class="col-md-3 ">
                  <h4>Address</h4>
                  <hr>

                  <p>Ka-21 South Kuril, Dhaka 1229</p>

                  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d27719.88759394791!2d90.4200192!3d23.805952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2sbd!4v1777237303292!5m2!1sen!2sbd" width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                  </iframe>

              </div>

          </div>

      </div>

      <!-- Bottom -->
      <div class="text-center py-3 mt-4 border-top border-secondary">
          <p>© 2026 SmDuknang. All rights reserved. Developed by SUMUEL TRIPURA.</p>
      </div>

  </footer>
  <!--Footer end-->

  <script src="js/bootstrap.bundle.js"></script>
  <script src="js/custom.js"></script>
</body>
</html>