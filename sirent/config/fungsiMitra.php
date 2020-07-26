<?php

include "connec.php";

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

function tambahMitra($data)
{
    global $con;

    $id_mitra = "MT";
    $id_mitra .= uniqid();
    $id_mitra = strtoupper($id_mitra);
    $nama = $data['nama'];
    $alamat = $data['alamat'];
    $noTelp = $data['notelp'];
    $email = $data['email'];

    $foto = upload();

    if (!$foto) {
        return false;
    }

    mysqli_query($con, "INSERT INTO mitra
                                        VALUES
                                        ('$id_mitra','$nama','$alamat','$noTelp','$email','$foto')");

    return mysqli_affected_rows($con);
}

function upload()
{
    $namaGambar = $_FILES['foto']['name'];
    $size = $_FILES['foto']['size'];
    $error = $_FILES['foto']['error'];
    $tmp = $_FILES['foto']['tmp_name'];

    //cek upload gambar ada atau tidak
    if ($error === 4) {
        echo "
        <script>
        alert('gambar belom di upload');
        </script>
        ";

        return false;
    }

    //cek format gambar
    $ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
    $ekstensiGambar = explode('.', $namaGambar);
    $ekstensiGambar = strtolower(end($ekstensiGambar));

    if ( !in_array($ekstensiGambar, $ekstensiGambarValid )) {
        echo "
        <script>
        alert('Format tidak didukung');
        </script>
        ";
        return false;
    }

    //cek ukuran gambar
    if ($size > 1000000) {
        echo "
        <script>
        alert('ukuran gambar terlalu besar');
        </script>
        ";
        return false;
    }

    //upload file
    move_uploaded_file($tmp, '../../upload/mitra/' . $namaGambar);

    return $namaGambar;
}

?>







