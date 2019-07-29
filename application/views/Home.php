<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/style.css')?>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Hello, world!</title>
  </head>
  <body>
  
   <header>
    <div data-top-bar >
          <div data-sign-in ><i class="fa fa-user fa-2x" aria-hidden="true"></i>Sign In</div>
          <div data-address><i class="fa fa-home fa-2x" aria-hidden="true"></i> 12 Street, Los Angeles, CA, 94101</div>
          <div data-phone><i class="fa fa-phone fa-2x" aria-hidden="true"></i>+1234 567-8901</div>
          <div data-cart ><i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i><span class="badge badge-secondary">0</span></div>
      </div>
    

      <div data-row1>
        <header><h1>Moto<span>Sellers</span></h1></header>
        <div data-banner-ad><img src="https://via.placeholder.com/728x90.png?text=728x90"></div>
      </div>

      <nav data-nav >
        <ul >
          <li class="active">Home</li>
          <li>Inventory</li>
          <li>Blog</li>
          <li>Sell My Car</li>
          <li>Shop</li>
          <li>Contact</li>
        </ul>
      </nav>
   </header>

    <section>
      <div data-row2>
        <div data-single-car-slider>
                          <!-- Carousel starts -->

                          <div class="bd-example">
                          <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                              <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                              <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                              <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                              <div class="carousel-item active">
                                <img src="https://via.placeholder.com/728x500.png?text=car 1" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                  <h5>First slide label</h5>
                                  <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                </div>
                              </div>
                              <div class="carousel-item">
                                <img src="https://via.placeholder.com/728x500.png?text=car 2" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                  <h5>Second slide label</h5>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                              </div>
                              <div class="carousel-item">
                                <img src="https://via.placeholder.com/728x500.png?text=car 3" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                  <h5>Third slide label</h5>
                                  <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                </div>
                              </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                              <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                              <span class="sr-only">Next</span>
                            </a>
                          </div>
                    </div>
                          <!-- carousel ends -->
        </div>

        <div data-query-filter>
          <div data-col1>
           <label for="country">Country:</label>
           <select name="" id="country" class="form-control">
              <option value="" style=" background-shadow: #ff600a">State</option>
           </select>

           <label for="state">City:</label>
           <select name="" id="state" class="form-control">
              <option value="">Lagos</option>
           </select>

           <label for="year_from">Year From:</label>
           <select name="" id="year_from" class="form-control">
              <option value="">Lagos</option>
           </select>

           <label for="make">Make:</label>
           <select name="" id="make" class="form-control">
              <option value="">Lagos</option>
           </select>

           <label for="make">Make:</label>
           <select name="" id="make" class="form-control">
              <option value="">Lagos</option>
           </select>

           <label for="make">Make:</label>
           <select name="" id="make" class="form-control">
              <option value="">Lagos</option>
           </select>
           
          </div>

          <div data-col2>
            <label for="model">Model:</label>
            <select name="" id="model" class="form-control">
                <option value="">Lagos</option>
            </select>

            <label for="max-price">Max Price:</label>
            <select name="" id="max-price" class="form-control">
                <option value=""></option>
            </select>

            <label for="max-price">Max Price:</label>
            <select name="" id="max-price" class="form-control">
                <option value=""></option>
            </select>

            <label for="max-price">Max Price:</label>
            <select name="" id="max-price" class="form-control">
                <option value=""></option>
            </select>

            <label for="max-price">Max Price:</label>
            <select name="" id="max-price" class="form-control">
                <option value=""></option>
            </select>

            <label for="max-price">Max Price:</label>
            <select name="" id="max-price" class="form-control">
                <option value="" style="background-color: red"></option>
            </select>
          </div>
        </div>
      </div>
    </section>

    <main>
      <div data-row-3>
        <div data-main>


            <div data-switch-icons> <h4>Recent Cars</h4>
                <i class="fa fa-th-large" aria-hidden="true"></i>
                <i class="fa fa-th-list" aria-hidden="true"></i>
            </div>

            <div data-featured-cars>
              <div>
               
                <img src="https://via.placeholder.com/300x200.png?text=300x200" alt="featured cars">
                <div data-featured-tag  class="stand-out"> featured</div>
              </div>

              <div data-car-spec>
               <h6> Lamborghini Aventador '2012</h6>
                <ul>
                
                  <li class="subheading"> <span class="heading">Location:</span> <span class="inner-text">Lagos / Ikeja</span>
                  <li class="subheading"> <span class="heading">Engine:</span><span class="inner-text"> 6 cm³ V16, Petrol</span></li>
                  <li class="subheading"> <span class="heading">Kilometer:</span> <span class="inner-text">600km</span></li>
                  <li class="subheading"> <span class="heading"> Condition:</span> <span class="inner-text">used</span></li>
                </ul>
                <a href="" class="btn btn-dark">Details</a>
              </div>

              <div data-price>
               <h6>  ₦15,000000</h6>
              </div>
            </div>


            <div data-featured-cars>
              <div>
               
                <img src="https://via.placeholder.com/300x200.png?text=300x200" alt="featured cars">
                <div data-featured-tag  class="stand-out"> featured</div>
              </div>

              <div data-car-spec>
               <h6> Lamborghini Aventador '2012</h6>
                <ul>
                
                  <li class="subheading"> <span class="heading">Location:</span> <span class="inner-text">Lagos / Ikeja</span>
                  <li class="subheading"> <span class="heading">Engine:</span><span class="inner-text"> 6 cm³ V16, Petrol</span></li>
                  <li class="subheading"> <span class="heading">Kilometer:</span> <span class="inner-text">600km</span></li>
                  <li class="subheading"> <span class="heading"> Condition:</span> <span class="inner-text">used</span></li>
                </ul>
                <a href="" class="btn btn-dark">Details</a>
              </div>

              <div data-price>
               <h6>  ₦15,000000</h6>
              </div>
            </div>

            <div data-featured-cars>
              <div>
               
                <img src="https://via.placeholder.com/300x200.png?text=300x200" alt="featured cars">
                <div data-featured-tag  class="stand-out"> featured</div>
              </div>

              <div data-car-spec>
               <h6> Lamborghini Aventador '2012</h6>
                <ul>
                
                  <li class="subheading"> <span class="heading">Location:</span> <span class="inner-text">Lagos / Ikeja</span>
                  <li class="subheading"> <span class="heading">Engine:</span><span class="inner-text"> 6 cm³ V16, Petrol</span></li>
                  <li class="subheading"> <span class="heading">Kilometer:</span> <span class="inner-text">600km</span></li>
                  <li class="subheading"> <span class="heading"> Condition:</span> <span class="inner-text">used</span></li>
                </ul>
                <a href="" class="btn btn-dark">Details</a>
              </div>

              <div data-price>
               <h6>  ₦15,000000</h6>
              </div>
            </div>
            
        </div>

        <div data-side>
          <h4>Recently Added Cars</h4>
          
          <div thumb-nail-container>
            <div thumb-nail-image>
              <img src="https://via.placeholder.com/100x100.png?text=150x150" alt="">
            </div>

            <div thumb-nail-desc>
              <h6>GM Starts Shipping ...</h6>
              <div >
              <span data-calender><i class="fa fa-calendar" aria-hidden="true"></i></span> <span data-date class="subheading">Apr 28, 2015  3</span> 
              <span class="subheading"> <i class="fa fa-comment" aria-hidden="true"></i>3</span>
              </div>
              Corrupti. Nec culpa corrupti, irure reprehenderit posue ..
            </div>
          </div>
          
          <div thumb-nail-container>
            <div thumb-nail-image>
              <img src="https://via.placeholder.com/100x100.png?text=150x150" alt="">
            </div>

            <div thumb-nail-desc>
              <h6>GM Starts Shipping ...</h6>
              <div >
              <span data-calender><i class="fa fa-calendar" aria-hidden="true"></i></span> <span data-date class="subheading">Apr 28, 2015  3</span> 
              <span class="subheading"> <i class="fa fa-comment" aria-hidden="true"></i>3</span>
              </div>
              Corrupti. Nec culpa corrupti, irure reprehenderit posue ..
            </div>
          </div>

          <div thumb-nail-container>
            <div thumb-nail-image>
              <img src="https://via.placeholder.com/100x100.png?text=150x150" alt="">
            </div>

            <div thumb-nail-desc>
              <h6>GM Starts Shipping ...</h6>
              <div >
              <span data-calender><i class="fa fa-calendar" aria-hidden="true"></i></span> <span data-date class="subheading">Apr 28, 2015  3</span> 
              <span class="subheading"> <i class="fa fa-comment" aria-hidden="true"></i>3</span>
              </div>
              Corrupti. Nec culpa corrupti, irure reprehenderit posue ..
            </div>
          </div>

          <h4>Random Cars</h4>
          
          <div thumb-nail-container>
            <div thumb-nail-image>
              <img src="https://via.placeholder.com/100x100.png?text=150x150" alt="">
            </div>

            <div thumb-nail-desc>
              <h6>GM Starts Shipping ...</h6>
              <div >
              <span data-calender><i class="fa fa-calendar" aria-hidden="true"></i></span> <span data-date class="subheading">Apr 28, 2015  3</span> 
              <span class="subheading"> <i class="fa fa-comment" aria-hidden="true"></i>3</span>
              </div>
              Corrupti. Nec culpa corrupti, irure reprehenderit posue ..
            </div>
          </div>
        </div>

        
         
      </div>  
    </main>

    <footer>
      <div data-footer>
        footer
      </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
    let selectTags = document.getElementsByName('select');
    console.log(selectTags.style);
    
    </script>
  </body>
</html>