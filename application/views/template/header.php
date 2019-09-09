<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/style.css')?>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title><?php echo $title; ?></title>
    </head>
  <body>
  
  <div data-top-bar-container>
    <div data-top-bar >
        <div data-sign-in ><i class="fa fa-user fa-2x" aria-hidden="true"></i><span><a href="<?php echo $this->global_func->toggle_sign_in_url(); ?>"><?php echo $this->global_func->toggle_sign_in(); ?></a></span></div>
            <div data-address><i class="fa fa-home fa-2x" aria-hidden="true"></i> <span>12 Street, Ikeja, Lagos, 94101</span></div>
             <div data-cart ><i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i><span class="badge badge-secondary">0</span></div>
            </div>
        <div data-phone><i class="fa fa-phone fa-2x" aria-hidden="true"></i>+1234 567-8901</div>
    </div>

   <header>
      <h1> MotoSellers</h1>
      <h4 ><i class="fa fa-bars fa-2x" aria-hidden="true" onclick="toggle('listItem')"> </i></h4>
      
      
      <nav>
          <ul id="listItem">
              <a href="<?php echo base_url()?>"><li>Home</li></a>
              <li>Inventory</li>
              <a href="<?php echo base_url('dashboard')?>"><li>Dashboard</li></a>
              <li>Blog</li>
              <li>Sell My Car</li>
              <li>Shop</li>
          </ul>
          
      </nav>
      
      <img src="https://via.placeholder.com/728x90.png?text=banner ad" class="d-block w-100" alt="...">
   </header>