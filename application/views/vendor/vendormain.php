
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Vendor Dashboard</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets1/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- orion icons-->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets1/css/orionicons.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets1/css/style.sea.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets1/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets1/img/favicon.png?3">
    
  </head>
  <body>
    <!-- navbar-->
    <header class="header">
      <nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow"><a href="#" class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i class="fas fa-align-left"></i></a><a href="index.html" class="navbar-brand font-weight-bold text-uppercase text-base">Vendor Dashboard</a>
        <ul class="ml-auto d-flex align-items-center list-unstyled mb-0">
          <li class="nav-item">
            <form id="searchForm" class="ml-auto d-none d-lg-block">
              <div class="form-group position-relative mb-0">
                <button type="submit" style="top: -3px; left: 0;" class="position-absolute bg-white border-0 p-0"><i class="o-search-magnify-1 text-gray text-lg"></i></button>
                <input type="search" placeholder="Search ..." class="form-control form-control-sm border-0 no-shadow pl-4">
              </div>
            </form>
          </li>
          <li class="nav-item dropdown mr-3"><a id="notifications" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle text-gray-400 px-1"><i class="fa fa-bell"></i><span class="notification-icon"></span></a>
                <!-- add notifications here -->
            
            <!-- <div aria-labelledby="notifications" class="dropdown-menu"><a href="#" class="dropdown-item">
                <div class="d-flex align-items-center">
                  <div class="icon icon-sm bg-violet text-white"><i class="fab fa-twitter"></i></div>
                  <div class="text ml-2">
                    <p class="mb-0">You have 2 followers</p>
                  </div>
                </div></a><a href="#" class="dropdown-item"> 
                <div class="d-flex align-items-center">
                  <div class="icon icon-sm bg-green text-white"><i class="fas fa-envelope"></i></div>
                  <div class="text ml-2">
                    <p class="mb-0">You have 6 new messages</p>
                  </div>
                </div></a><a href="#" class="dropdown-item">
                <div class="d-flex align-items-center">
                  <div class="icon icon-sm bg-blue text-white"><i class="fas fa-upload"></i></div>
                  <div class="text ml-2">
                    <p class="mb-0">Server rebooted</p>
                  </div>
                </div></a><a href="#" class="dropdown-item">
                <div class="d-flex align-items-center">
                  <div class="icon icon-sm bg-violet text-white"><i class="fab fa-twitter"></i></div>
                  <div class="text ml-2">
                    <p class="mb-0">You have 2 followers</p>
                  </div>
                </div></a>
              <div class="dropdown-divider"></div><a href="#" class="dropdown-item text-center"><small class="font-weight-bold headings-font-family text-uppercase">View all notifications</small></a>
            </div> -->
          </li>
          <li class="nav-item dropdown ml-auto"><a id="userInfo" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle"><img src="<?php echo base_url(); ?>assets1/img/avatar-6.jpg" alt="Jason Doe" style="max-width: 2.5rem;" class="<?php echo base_url(); ?>assets1/img-fluid rounded-circle shadow"></a>
            <div aria-labelledby="userInfo" class="dropdown-menu"><a href="#" class="dropdown-item"><strong class="d-block text-uppercase headings-font-family">Mark Stephen</strong><small>Web Developer</small></a>
                <!-- set login page to logout here   -->
            <div class="dropdown-divider"></div><a href="#" class="dropdown-item">Settings</a><a href="#" class="dropdown-item">Activity log       </a>
              <div class="dropdown-divider"></div><a href="<?php echo base_url(); ?>" class="dropdown-item">Logout</a>
            </div>
          </li>
        </ul>
      </nav>
    </header>
    <div class="d-flex align-items-stretch">
      <div id="sidebar" class="sidebar py-3">
        <div class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
        <ul class="sidebar-menu list-unstyled">
              <li class="sidebar-list-item"><a href="<?php echo site_url(); ?>/vendor" class="sidebar-link text-muted active"><i class="o-home-1 mr-3 text-gray"></i><span>Home</span></a></li>
              <li class="sidebar-list-item"><a href="#" data-toggle="collapse" data-target="#pages" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted"><i class="o-sales-up-1 mr-3 text-gray"></i><span>Sales Progress</span></a>
                    <div id="pages" class="collapse">
                    <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
                        <li class="sidebar-list-item"><a href="<?php echo base_url(); ?>index.php/vendor/viewwarehouseProgress" class="sidebar-link text-muted pl-lg-5">Warehouses</a></li>
                        <li class="sidebar-list-item"><a href="<?php echo base_url(); ?>index.php/vendor/viewsalespersonProgress" class="sidebar-link text-muted pl-lg-5">Salesperson</a></li>
                    </ul>
                    </div>
            </li>
              <li class="sidebar-list-item"><a href="<?php echo base_url(); ?>index.php/vendor/viewStock" class="sidebar-link text-muted"><i class="o-database-1 mr-3 text-gray"></i><span>Stock Status</span></a></li>
   
              <li class="sidebar-list-item"><a href="<?php echo base_url(); ?>index.php/vendor/importOrders" class="sidebar-link text-muted"><i class="o-survey-1 mr-3 text-gray"></i><span>Import Orders</span></a></li>
          
              <li class="sidebar-list-item"><a href="<?php echo base_url(); ?>" class="sidebar-link text-muted"><i class="o-exit-1 mr-3 text-gray"></i><span>Logout</span></a></li>
        </ul>
        
      </div>  
      <div class="page-holder w-100 d-flex flex-wrap">
        <div class="container-fluid px-xl-5">
         <br>
         <br>
         
          <section>
            <div class="row mb-4">
              <div class="col-lg-7 mb-4 mb-lg-0">
                <div class="card">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">SALES PROGRESS</h2>
                  </div>
                  <div class="card-body">
                    <p class="text-gray">Overall Sales Progress over past months</p>
                    <div class="chart-holder">
                        <!-- include a sales history chart here -->
                      <canvas id="lineChart1" style="max-height: 14rem !important;" class="w-100"></canvas>
                    </div>
                  </div>
                </div>
              </div>
               <div class="col-lg-24 mb-4 mb-lg-0">
                <div class="card">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">SALES PROGRESS</h2>
                  </div>
                  <div class="card-body">
                    <p class="text-gray">Overall Sales Progress over past months</p>
                    <div class="chart-holder">
                        <!-- include a sales history chart here -->
                      <canvas id="lineChart1" style="max-height: 14rem !important;" class="w-100"></canvas>
                    </div>
                  </div>
                </div>
            </div>
            
              
            </div>
          </section>
          <section class="py-5">
          <div class="col-lg-24 mb-4 mb-lg-0">
                <div class="card">
                  <div class="card-header">
                    <h2 class="h6 text-uppercase mb-0">WAREHOUSE SALES PROGRESS</h2>
                  </div>
                  <div class="card-body">
                    <p class="text-gray">Overall Sales Progress over past months</p>
                    <div class="chart-holder">
                        <!-- include a sales history chart here -->
                      <canvas id="lineChart1" style="max-height: 14rem !important;" class="w-100"></canvas>
                    </div>
                  </div>
                </div>
          </section>
          <section>
            <div class="row">
              <div class="col-lg-8">
                <div class="card mb-5 mb-lg-0">         
                  <div class="card-header">
                    <h2 class="h6 mb-0 text-uppercase">TRANSACTION HISTORY</h2>
                  </div>
                  <div class="card-body">
                    <p class="text-gray mb-5">Recent transactions </p>
                    <div class="d-flex justify-content-between align-items-start align-items-sm-center mb-4 flex-column flex-sm-row">
                      <!-- <div class="left d-flex align-items-center">
                        <div class="icon icon-lg shadow mr-3 text-gray"><i class="fab fa-dropbox"></i></div>
                        <div class="text">
                          <h6 class="mb-0 d-flex align-items-center"> <span>Dropbox Inc.</span><span class="dot dot-sm ml-2 bg-violet"></span></h6><small class="text-gray">Account renewal</small>
                        </div>
                      </div> -->
                      <!-- <div class="right ml-5 ml-sm-0 pl-3 pl-sm-0 text-violet">
                        <h5>-$20</h5>
                      </div> -->
                    </div>
                    <div class="d-flex justify-content-between align-items-start align-items-sm-center mb-4 flex-column flex-sm-row">
                      <!-- <div class="left d-flex align-items-center">
                        <div class="icon icon-lg shadow mr-3 text-gray"><i class="fab fa-apple"></i></div>
                        <div class="text">
                          <h6 class="mb-0 d-flex align-items-center"> <span>App Store.</span><span class="dot dot-sm ml-2 bg-green"></span></h6><small class="text-gray">Software cost</small>
                        </div>
                      </div>
                      <div class="right ml-5 ml-sm-0 pl-3 pl-sm-0 text-green">
                        <h5>-$20</h5>
                      </div> -->
                    </div>
                    <div class="d-flex justify-content-between align-items-start align-items-sm-center mb-4 flex-column flex-sm-row">
                      <!-- <div class="left d-flex align-items-center">
                        <div class="icon icon-lg shadow mr-3 text-gray"><i class="fas fa-shopping-basket"></i></div>
                        <div class="text">
                          <h6 class="mb-0 d-flex align-items-center"> <span>Supermarket.</span><span class="dot dot-sm ml-2 bg-blue"></span></h6><small class="text-gray">Shopping</small>
                        </div>
                      </div>
                      <div class="right ml-5 ml-sm-0 pl-3 pl-sm-0 text-blue">
                        <h5>-$20</h5>
                      </div> -->
                    </div>
                    <div class="d-flex justify-content-between align-items-start align-items-sm-center mb-4 flex-column flex-sm-row">
                      <!-- <div class="left d-flex align-items-center">
                        <div class="icon icon-lg shadow mr-3 text-gray"><i class="fab fa-android"></i></div>
                        <div class="text">
                          <h6 class="mb-0 d-flex align-items-center"> <span>Play Store.</span><span class="dot dot-sm ml-2 bg-red"></span></h6><small class="text-gray">Software cost</small>
                        </div>
                      </div>
                      <div class="right ml-5 ml-sm-0 pl-3 pl-sm-0 text-red">
                        <h5>-$20</h5>
                      </div> -->
                    </div>
                  </div>
                </div>
              </div>
              
          </section>
         
        </div>
        <footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6 text-center text-md-left text-primary">
                <p class="mb-2 mb-md-0">Royal Vintage (PVT) Ltd. &copy;</p>
              </div>
              <div class="col-md-6 text-center text-md-right text-gray-400">
                <p class="mb-0">All Rights Reserved. </p>
                <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="<?php echo base_url(); ?>assets1/vendor/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>assets1/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="<?php echo base_url(); ?>assets1/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>assets1/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="<?php echo base_url(); ?>assets1/vendor/chart.js/Chart.min.js"></script>
    <script src="<?php echo base_url(); ?>https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
    <script src="<?php echo base_url(); ?>assets1/js/charts-home.js"></script>
    <script src="<?php echo base_url(); ?>assets1/js/front.js"></script>
  </body>
</html>