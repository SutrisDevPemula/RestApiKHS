<?php
require "connec.php";

function query1($tampil)
{
    global $con;

    $result = mysqli_query($con, $tampil);
    $rows = [];

    while ($row = mysqli_fetch_assoc($result)) {

        $rows[] = $row;
    }

    return $rows;
}

function konfirPengembalian($data)
{
    global $con;

    $id_transaksi = $data['IdTransaksi'];
    $noPol = $data['NoPolisi'];
    $tgKembali = $data['tglKembali'];
    $lamaKembali = $data['lamaKembali'];
    $denda = 100000;
    $id_kembali = uniqid();
    $id_kembali = strtoupper($id_kembali);

    $denda = $denda * $lamaKembali;

    mysqli_query($con, "INSERT INTO `pengembalian` 
                                            VALUES
                                            ('$id_kembali','$id_transaksi','$noPol','$tgKembali','$lamaKembali','$denda')
                  ");

    return mysqli_affected_rows($con);
}