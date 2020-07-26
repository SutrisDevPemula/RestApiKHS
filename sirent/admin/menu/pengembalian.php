<?php
require "../../config/function_pengembalian.php";
require "../../config/function_tmobll.php";
require "../log_session.php";
//require "../../config/fungsi_mitra";

$mobil = query("SELECT * FROM mobil");

$kembali = query1("SELECT * FROM pengembalian");



?>

<?php

if (isset($_POST['simpan'])) {
  if (tambahmobil($_POST) > 0) {
    echo "<script>
                alert('selamat anda sudah terdaftarkan sebagai member.');
               </script>";
    header("Location:dtmobil.php");
  } else {
    echo mysqli_error($con);
  }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin | Sirent</title>

    <!--    css with bootstrap-->
    <link rel="stylesheet" href="../asset/bootsrap/bootstrap.min.css">
    <link rel="stylesheet" href="../asset/css/style-min.css">
</head>
<body>
<!--navs-->
<div class="container-fluid">
    <br>
    <ul class="nav justify-content-end">
        <a class="navbar-brand mr-auto" href="#"><img src="../asset/icon/sirent_1.png" alt="" style="width: 150px"></a>
        <!--        <li class="nav-item">-->


        <div class="btn-group">
            <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false" style="text-transform: uppercase">
                <img src="../asset/icon/user.png" alt="" style="width: 40px; margin-right: 15px">
              <?= $_SESSION['admin']; ?>
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="menu/logout.php">Log Out</a>
            </div>
        </div>

    </ul>
</div>
<hr>
<!--last navs-->
<!--navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav mr-auto">
                <a class="nav-item nav-link" href="../index.php">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="dtmobil.php">Data Mobil</a>
                <a class="nav-item nav-link" href="mitra.php">Data Mitra</a>
                <a class="nav-item nav-link" href="pemesanan.php">Data Pemesanan</a>
                <a class="nav-item nav-link" href="pengembalian.php">Data Pengembalian</a>
                <a class="nav-item nav-link" href="costumer.php">Data Costumer</a>
            </div>
        </div>
    </div>
</nav>
<hr>
<!--last navbar-->

<!--content-->
<br>
<br>
<br>
<div class="container-fluid">

    <br>
    <!--    tabel content-->
    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr style="text-transform: uppercase">
                <th scope="col">ID Pengembalian</th>
                <th scope="col">ID Transaksi</th>
                <th scope="col">No Pol</th>
                <th scope="col">Tgl Kembali</th>
                <th scope="col">Lama Pengembalian</th>
                <th scope="col">denda</th>
            </tr>
            </thead>

          <?php foreach ($kembali as $row) : ?>
              <tbody>
              <tr>
                  <td scope="col"><?= $row["Id_kembali"]; ?></td>
                  <td scope="col"><?= $row['Id_transaksi']; ?></td>
                  <td scope="col"><?= $row["no_pol"]; ?></td>
                  <td scope="col"><?= $row["tgl_kembali"]; ?></td>
                  <td scope="col"><?= $row["lama_pengembalian"]; ?> Hari</td>
                  <td scope="col">Rp. <?= $row["denda"]; ?></td>
              </tr>
              </tbody>
          <?php endforeach; ?>
        </table>
    </div>
    <!--    last tabel content-->
</div>
<!--last content-->

<!--js with bootstrap-->
<!-- Optional JavaScript -->

<script src="../asset/js/jquery-3.4.1.slim.min.js"></script>
<script src="../asset/js/popper.min.js"></script>
<script src="../asset/js/bootstrap.min.js"></script>

</body>
</html>