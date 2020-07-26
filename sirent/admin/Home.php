<?php

require "../config/connec.php";
require "log_session.php";

$result_costumer = mysqli_query($con, "SELECT * FROM costumer");
$result_mitra = mysqli_query($con, "SELECT * FROM mitra");
$result_penyewaan = mysqli_query($con, "SELECT * FROM penyewaan");
$result_mobil = mysqli_query($con, "SELECT * FROM mobil");

$costumer = mysqli_num_rows($result_costumer);
$mitra = mysqli_num_rows($result_mitra);
$penyewaan = mysqli_num_rows($result_penyewaan);
$mobil = mysqli_num_rows($result_mobil);


require "../config/function_sewa.php";
date_default_timezone_set('Asia/Jakarta');
$tgl=date('m/d/Y');
//echo $tgl;

$pemesanan = query("SELECT * FROM penyewaan WHERE tanggal_pinjam = '$tgl'");

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin | Sirent</title>

    <!--    css with bootstrap-->
    <link rel="stylesheet" href="asset/bootsrap/bootstrap.min.css">
    <link rel="stylesheet" href="asset/css/style-min.css">
</head>
<body>
<!--navs-->
<div class="container-fluid">
    <br>
    <ul class="nav justify-content-end">
        <a class="navbar-brand mr-auto" href="#"><img src="asset/icon/sirent_1.png" alt="" style="width: 150px"></a>
        <!--        <li class="nav-item">-->


        <div class="btn-group">
            <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false" style="text-transform: uppercase">
                <img src="asset/icon/user.png" alt="" style="width: 40px; margin-right: 15px">
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
                <a class="nav-item nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="menu/dtmobil.php">Data Mobil</a>
                <a class="nav-item nav-link" href="menu/mitra.php">Data Mitra</a>
                <a class="nav-item nav-link" href="menu/pemesanan.php">Data Pemesanan</a>
                <a class="nav-item nav-link" href="menu/pengembalian.php">Data Pengembalian</a>
                <a class="nav-item nav-link" href="menu/costumer.php">Data Costumer</a>
            </div>
        </div>
    </div>
</nav>
<hr>
<!--last navbar-->

<!--content-->
<div class="container-fluid" style="width: 90%">
    <!--    row information-->
    <div class="row">
        <div class="col-lg bg-success">
            <h6>Total Costumer</h6>
            <h4><?= $costumer ?> user</h4>
        </div>
        <div class="col-lg bg-primary">
            <h6>Total Mitra</h6>
            <h4>
                <?= $mitra ?>
                user
            </h4>
        </div>
        <div class="col-lg bg-danger">
            <h6>Total Penyewaan</h6>
            <h4><?= $penyewaan ?> user</h4>
        </div>
        <div class="col-lg bg-warning">
            <h6>Total Mobil</h6>
            <h4><?= $mobil ?> Unit</h4>
        </div>
    </div>
    <!--    last row information-->

    <!--    row content-->
    <div class="row">
        <div class="col-lg col-lg-8">
            <h5>New order</h5> <?= date('j-F-Y');?>
            <!--    tabel content-->
            <br><br>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">ID Transaksi</th>
                        <th scope="col">No Ktp</th>
                        <th scope="col">Tanggal Pinjam</th>
                        <th scope="col">Durasi</th>
                        <th scope="col">No Pol</th>
                        <th scope="col">Biaya</th>
                        <th scope="col">Satatus Bayar</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>

                    <tbody>
                    <?php foreach ($pemesanan as $row) : ?>
                        <tr>
                            <td scope="col"><?= $row['id_transaksi']; ?></td>
                            <td scope="col"><?= $row["No_ktp"]; ?></td>
                            <td scope="col"><?= $row["tanggal_pinjam"]; ?></td>
                            <td scope="col"><?= $row["durasi"]; ?></td>
                            <td scope="col"><?= $row["no_pol"]; ?></td>
                            <td scope="col">Rp. <?= number_format($row["biaya"], 0, ".", "."); ?></td>
                            <td scope="col"><?= $row["paid"]; ?></td>
                            <td scope="col">
                                <a href="menu/dtl_pemesanan.php?key=<?= $row['id_transaksi']; ?>&nopol=<?= $row["no_pol"]; ?>">
                                    <button type="button" class="btn btn-info">Lihat Detail</button>
                                </a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>

                </table>
            </div>
            <!--    last tabel content-->
        </div>
        <div class="col-lg">
            <h5>Inbox</h5>
        </div>
    </div>
    <!--    last row content-->

    <!--    statistik penyewaan-->
    <div class="row">
        <div class="col-lg">
            <h5>Satatistik Penyewaan</h5>
        </div>
    </div>
    <!--    last statistik penyewaan-->
</div>
<!--last content-->

<!--js with bootstrap-->
<!-- Optional JavaScript -->

<script src="asset/js/jquery-3.4.1.slim.min.js"></script>
<script src="asset/js/popper.min.js"></script>
<script src="asset/js/bootstrap.min.js"></script>


</body>
</html>