<?php

require "../log_session.php";
require "../../config/function_sewa.php";
require "../../config/function_pengembalian.php";

//$pemesanan = query("SELECT No_Ktp, No_telp, nama, E-mail FROM costumer INNER JOIN penyewaan ON No_Ktp = No_Ktp");
$key = $_GET['key'];
$npl = $_GET['nopol'];
$pemesanan = query("SELECT * FROM costumer INNER JOIN penyewaan ON costumer.No_Ktp = penyewaan.No_ktp WHERE penyewaan.id_transaksi = '$key' ");
$mobil = query("SELECT * FROM mobil WHERE no_pol = '$npl' ");

?>

<?php


if (isset($_POST["ubah"])) {


    if (ubah($_POST) != 0) {

        echo "<script language = 'JavaScript'>
                alert('data berhasil diubah');
                document.location = '';
             </script>";
    } else {
        echo "<script language = 'JavaScript'>
                alert('data gagal diubah');
                document.location = '';
             </script>";
    }


}
?>

<?php
if (isset($_POST['konfirmasi'])) {

//    var_dump($_POST);
    if (konfirPengembalian($_POST) > 0) {
        echo "<script>
                alert('Konfirmasi pengembalian berhasil.');
               </script>";
    } else {
        echo "<script>
                alert('Konfirmasi pengembalian gagal.');
               </script>";
//    echo mysqli_error($con);
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
                <a class="dropdown-item" href="logout.php">Log Out</a>
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
<?php foreach ($pemesanan as $rows) : ?>
<br>
<br>
<br>
<div class="container-fluid">
    <div class="row">
        <div class="col-4">
            <h5>Detail Penyewa</h5>
            <div class="card" style="width: 100%;">
                <img src="../../upload/regfoto/<?= $rows['gambar']; ?>" alt="..." class="card-img-top">
                <div class="card-body">
                    <p class="card-text">
                    <div class="row">
                        <div class="col">
                            No Ktp <br>
                            Nama <br>
                            No Telp
                        </div>
                        <div class="col">
                            <?= $rows['No_Ktp']; ?> <br>
                            <?= $rows['nama']; ?> <br>
                            <?= $rows['No_telp']; ?>
                        </div>
                    </div>
                    </p>
                </div>
            </div>
        </div>
        <div class="col">
            <?php foreach ($mobil as $rowsmobil) : ?>
            <h5>Detail Penyewaan</h5>
            <div class="card">
                <div class="card-header">
                    <img src="../../upload/imgmobil/<?= $rowsmobil['gambar']; ?>" alt="" class="card-header"
                         style="width: 500px">
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            ID Transaksi <br><br>
                            <?= $rows["id_transaksi"]; ?> <br><br><br>
                            Merk <br><br>
                            <?= $rowsmobil["merk"]; ?> <br>

                        </div>
                        <div class="col">
                            Tanggal Pinjam <br><br>
                            <?= $rows["tanggal_pinjam"]; ?> <br>

                        </div>
                        <div class="col">
                            No Pol <br><br>
                            <?= $rows["no_pol"]; ?> <br>
                        </div>
                        <div class="col">
                            Durasi <br><br>
                            <?= $rows["durasi"]; ?> Hari<br>
                        </div>
                    </div>
                    <hr>
                    <h5>Pembayaran</h5><br>
                    <div class="row">
                        <div class="col">
                            Biaya <br><br>
                            <?= $rows["biaya"]; ?> <br>
                        </div>
                        <div class="col">
                            Status Bayar <br><br>
                            <?php
                            $statusBayar = $rows["paid"];
                            if ($statusBayar === 'Unpayred') : ?>
                                <button type="button" class="btn btn-danger"
                                        style="border-radius: 100px; width: 100px"><?= $rows["paid"]; ?></button>
                            <?php else : ?>
                                <button type="button" class="btn btn-success"
                                        style="border-radius: 100px; width: 100px"><?= $rows["paid"]; ?></button>
                            <?php endif; ?>
                        </div>
                        <div class="col">
                            Status Pengembalian <br><br>
                            <?php
                            $idtrans = $rows["id_transaksi"];
                            $result = mysqli_query($con, "SELECT * FROM `pengembalian` WHERE Id_transaksi = '$idtrans' ");
                            if (mysqli_num_rows($result) > 0) : ?>
                            <button type="button" class="btn btn-success"
                                    style="border-radius: 100px; width: 100px">Kembali</button>
                            <?php else: ?>
                            <button type="button" class="btn btn-danger"
                                    style="border-radius: 100px; width: 100px">
                                Belum</button>
                            <?php endif; ?>

                        </div>
                    </div>
                </div>

                <div class="row" style="margin-bottom: 50px; margin-top: 100px;">
                    <div class="col" style="margin-left: 500px; margin-right: -40px">
                        <button class="btn btn-info" name="ubah" data-toggle="modal"
                                data-target="#exampleModal2">Konfirmasi pengembalian
                        </button>
                    </div>
                    <div class="col" style="margin-right: -50px">
                        <button class="btn btn-warning" name="ubah" data-toggle="modal"
                                data-target="#exampleModal">Konfirmasi pembayaran
                        </button>
                    </div>
                    <div class="col" style="margin-right: -50px">
                        <a href="pemesanan.php" class="btn btn-danger">Kembali</a>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<?php endforeach; ?>
<br>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ubah status bayar</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="" method="post">
                <div class="modal-body">
                    ID Transaksi: <?= $rows["id_transaksi"]; ?>
                    <input type="text" hidden name="idtrans" value="<?= $rows["id_transaksi"]; ?>">
                    <!--                    </div>-->
                    <br>
                    <br>
                    <!--                    <div class="form-group col-md-4">-->
                    <div class="form-group col-md-4">
                        <label for="inputState">Status bayar:</label>
                        <select id="inputState" class="form-control" name="statusBayar">
                            <option value="Payred"><?= $rows["paid"]; ?></option>
                            <option value="Payred">Payred</option>
                            <option value="Unpayred">Unpayred</option>
                        </select>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="ubah">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!--last content-->

<!-- Modal 2 -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Konfirmasi Pengembalian</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="IdTransaksi">Id Transaksi:</label>
                        <input type="text" class="form-control" name="IdTransaksi" id="IdTransaksi"
                               value="<?= $rows["id_transaksi"]; ?>">
                    </div>
                    <div class="form-group">
                        <label for="NoPolisi">No Polisi:</label>
                        <input type="text" class="form-control" name="NoPolisi" id="NoPolisi"
                               value="<?= $rows["no_pol"]; ?>">
                    </div>
                    <div class="form-group">
                        <label for="TglPinjam">Tanggal Pinjam:</label>
                        <input type="text" class="form-control" id="TglPinjam" aria-describedby="emailHelp"
                               placeholder="Tanggal Pinjam" disabled name="tglPinjam"
                               value="<?= $rows["tanggal_pinjam"]; ?>">
                    </div>
                    <div class="form-group">
                        <label for="tglKembali">Tanggal kembali:</label>
                        <input type="date" class="form-control" id="tglKembali" aria-describedby="emailHelp"
                               placeholder="TanggalKembali" name="tglKembali">
                    </div>
                    <div class="form-group">
                        <label for="durasi">Durasi:</label>
                        <input type="text" class="form-control" id="lamaKembali" aria-describedby="emailHelp"
                               placeholder="LamaKembali" name="durasi" value="<?= $rows["durasi"]; ?> Hari">
                    </div>
                    <div class="form-group">
                        <label for="lamaKembali">Lama Pengembalian:</label>
                        <input type="number" class="form-control" id="lamaKembali" aria-describedby="emailHelp"
                               placeholder="LamaKembali" name="lamaKembali">
                    </div>
                    <div class="form-group">
                        <label for="denda">Denda:</label>
                        <input type="text" class="form-control" id="denda" aria-describedby="emailHelp"
                               placeholder="Denda" disabled name="denda" value="100000 / hari">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" name="konfirmasi">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!--last content-->


<!--js with bootstrap-->
<!-- Optional JavaScript -->

<script src="../asset/js/jquery-3.4.1.slim.min.js"></script>
<script src="../asset/js/popper.min.js"></script>
<script src="../asset/js/bootstrap.min.js"></script>

</body>
</html>