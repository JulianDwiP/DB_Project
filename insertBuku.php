<?php

require_once 'include/Config.php';

$response = array();
// $Buku = array(
    $nama = $_POST['nama'];
    $deskripsi = $_POST['deskripsi'];
    $pdf_icon = $_POST['pdf_icon'];
    $pdf_url = $_POST['pdf_url'];
    $author = $_POST['author'];
    $peringkat = $_POST['peringkat'];
    $kategori = $_POST['kategori'];
// );

// $Buku = array(
//     'id' => $id,
//     'nama' => $nama,
//     'deskripsi' => $deskripsi,
//     'pdf_icon' => $pdf_icon,
//     'pdf_url' => $pdf_url,
//     'peringkat' => $peringkat
// );

$insert = "INSERT into buku (nama, deskripsi, author, pdf_icon, pdf_url, peringkat, kategori)
 values ('$nama', '$deskripsi', '$author', '$pdf_icon', '$pdf_url', $peringkat, '$kategori')";

if(mysqli_query($con, $insert)){
    $response["status"] = TRUE;
    $response["message"] = "Berhasil Menambahkan";

    echo json_encode($response);
}

?>