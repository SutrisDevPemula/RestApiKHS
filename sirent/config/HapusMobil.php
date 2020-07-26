<?php

require "function_tmobll.php";

$id = $_GET['id_mobil'];

if ( hapus($id) > 0){
    echo "<script language = 'JavaScript'>
    alert('data berhasil dihapus');
    document.location = '../admin/menu/dtmobil.php';
    </script>";
}else {
    echo "<script language = 'JavaScript'>
    alert('data gagal dihapus');
    document.location = '../admin/menu/dtmobil.php';
    </script>";

}