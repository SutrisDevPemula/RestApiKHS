<?php

require "connec.php";

function query($tampil)
{
  global $con;

  $result = mysqli_query($con, $tampil);
  $rows = [];

  while ($row = mysqli_fetch_assoc($result)) {

    $rows[] = $row;
  }

  return $rows;
}

function tmbh_sewa($data)
{
    global $con;
    $id = $data['idtr'];
    $biaya = $data['biaya'];
    $noktp = $data['nktp'];
    $tgl = $data['tgl'];
    $durasi = $data['durasi'];
    $idpetugas = "12345";
    $nopol = $data['nopol'];
    $statusbyr = "Unpayred";


    mysqli_query($con, "INSERT INTO `penyewaan`
                (`ID_transaksi`, `No_Ktp`, `tanggal_pinjam`, `durasi`, `id_petugas`, `no_pol`, `biaya`, `paid`)
                    VALUES
                ('$id','$noktp','$tgl','$durasi','$idpetugas','$nopol','$biaya','$statusbyr')
             ");

    return mysqli_affected_rows($con);

}

function ubah( $data ) {
    global $con;

    $idTransaksi = $data['idtrans'];
    $statusBayar = $data['statusBayar'];

    $query = "UPDATE `penyewaan` SET paid = '$statusBayar' WHERE id_transaksi = '$idTransaksi'";

    mysqli_query( $con, $query );

    return mysqli_affected_rows( $con );
}

function cari($keyword)
{
    $sql = "SELECT * FROM `penyewaan`
                    WHERE
                    id_transaksi LIKE '%$keyword%'
             ";

    return query($sql);
}