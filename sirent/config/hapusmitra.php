<?php
require "fungsi_mitra";

$id = $_GET['id_mitra'];

if ( hapus($id) > 0){
    echo "<script language = 'JavaScript'>
    alert('data berhasil dihapus');
    document.location = '../admin/menu/mitra.php';
    </script>";
}else {
    echo "<script language = 'JavaScript'>
    alert('data gagal dihapus');
    document.location = '../admin/menu/mitra.php';
    </script>";

}
