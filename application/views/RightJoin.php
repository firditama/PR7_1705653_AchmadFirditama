<!DOCTYPE html>
<html lang="id">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Kereta Join</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- jQuery -->
    <script src="../assets/js/jquery-3.3.1.slim.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-primary bg-warning sticky-top">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item active">
            <a class="nav-link text-white" href="<?php echo site_url('welcome/index'); ?>">
                <h3>Left Join</h3>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="#">
                <h3>Right Join</h3>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="<?php echo site_url('welcome/innerJoin'); ?>">
                <h3>Inner Join</h3>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="<?php echo site_url('welcome/about'); ?>">
                <h3>About</h3>
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container">
      <form class="" action="index.html" method="post">
        <div class="row">
          <div class="col-12 mt-5">
            <table class="table table-bordered">
              <thead>
                  <th>No</th>
                  <th>Kode Kursi</th>
                  <th>Kode Kereta</th>
                  <th>Kode Gerbong</th>
                  <th>Nama Gerbong</th>
              </thead>
              <tbody>
                <tr>
                  <?php
                    $no = 1;
                    foreach ($kursi  as $key) {
                   ?>
                   <td><?php echo $no++ ?></td>
                   <td><?php echo $key->kd_kursi ?></td>
                   <td><?php echo $key->kd_kereta ?></td>
                   <td><?php echo $key->kd_gerbong ?></td>
                   <td><?php echo $key->nama ?></td>
                </tr>
              <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
