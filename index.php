<?php 
include 'koneksi.php';
?>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Read Space</title>

  <link rel="shortcut icon" type="text/css" href="photo/favicon2.ico">
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="assets/dist/css/adminlte.min.css">
</head>
<body class="hold-transition layout-top-nav layout-navbar-fixed">
  <div class="wrapper">

<!-- Navbar -->
<nav class="main-header navbar navbar-expand-md navbar-dark" style="background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);">
    <a class="navbar-brand" href="#">
        <div class="container">
            <img src="assets/dist/img/l3.png" alt="Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
            <span class="brand-text font-weight-light">Read Space</span>
        </div>
    </a>

    <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse order-3" id="navbarCollapse">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="index.php" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
                <a href="kamar.php" class="nav-link">Category</a>
            </li>
            <li class="nav-item">
                <a href="fasilitas.php" class="nav-link">Fasilitas</a>
            </li>
        </ul>
        <div class="navbar-nav ml-auto">
            <a href="login.php" class="nav-item nav-link">Login</a>
        </div>
    </div>
</nav>
<!-- /.navbar -->


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0"></h1>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <div class="content">
        <div class="container d-flex justify-content-center align-items-center" style="min-height: 50vh;">
          <div class="col-md-4">
            <div class="card">
              <!-- /.card-header -->
              <div class="card-body">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img class="d-block w-100" src="assets/gambar/rs1.jpg" alt="First slide" height="450">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="assets/gambar/rs2.jpg" alt="Second slide" height="450">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="assets/gambar/rs3.jpg" alt="Third slide" height="450">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="assets/gambar/rs4.jpg" alt="Fourth slide" height="450">
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-custom-icon" aria-hidden="true">
                      <i class="fas fa-chevron-left"></i>
                    </span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-custom-icon" aria-hidden="true">
                      <i class="fas fa-chevron-right"></i>
                    </span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <div class="card">
              <div class="col-md-12">
                <div class="card-body">
                <style>
                    body {
                        font-family: 'Georgia', sans-serif;
                    }
                </style>
                  <h2 class="text-center">Read Space</h2><br>
                  <p class="text-center">Read Space adalah sebuah platform inovatif yang dirancang khusus untuk para penggemar membaca dan menulis cerita, tempat di mana imajinasi dapat berkembang tanpa batas. Di platform ini, pengguna tidak hanya dapat menikmati berbagai karya fiksi dari penulis amatir maupun profesional, 
                    tetapi juga memiliki kesempatan untuk berbagi cerita mereka sendiri dengan komunitas yang mendukung. Dengan antarmuka yang mudah digunakan, Read Space menawarkan berbagai fitur menarik, seperti alat penulisan interaktif, pilihan genre yang beragam, serta sistem feedback yang memungkinkan penulis untuk berkembang. Setiap cerita yang diunggah di sana bisa menjadi jendela untuk mengenal dunia baru, membuka wawasan, dan memberikan inspirasi bagi pembaca serta penulis lainnya. Selain itu, Read Space juga menyelenggarakan kompetisi menulis dan 
                    acara spesial yang memberi ruang bagi setiap penulis untuk mengeksplorasi ide kreatif mereka dengan lebih leluasa.</p>
                </div>
              </div>
            </div> 
        </div>
        <!-- /.content -->
      </div>

      <!-- /.content-wrapper -->

      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
      </aside>
      <!-- /.control-sidebar -->

      <!-- Main Footer -->
      <footer class="main-footer">
        <!-- Default to the left -->
        <strong>Copyright &copy; 2025 | dirs All rights reserved.
      </footer>
    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="assets/dist/js/adminlte.min.js"></script>
  </body>
  </html>