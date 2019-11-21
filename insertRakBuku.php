<?php

require_once 'include/Config.php';

$response = array();
    $nama = $_POST['nama'];
    $deskripsi = $_POST['deskripsi'];
    $pdf_icon = $_POST['pdf_icon'];
    $pdf_url = $_POST['pdf_url'];
    $author = $_POST['author'];
    $peringkat = $_POST['peringkat'];
    $kategori = $_POST['kategori'];
    $id_user = $_POST['id_user'];
    $id_buku = $_POST['id_buku'];

$insert = "INSERT into rakBuku (nama, deskripsi, author, pdf_icon, pdf_url, peringkat, kategori, id_user, id_buku)
values ('$nama', '$deskripsi', '$author', '$pdf_icon', '$pdf_url', $peringkat, '$kategori', '$id_user', '$id_buku')";

$ada = mysqli_num_rows(mysqli_query($con, "SELECT nama from rakBuku where nama = '$nama' and id_user = '$id_user'"));

if($ada>0){
    $response["status"] = False;
    $response["message"] = "Data Sudah di download";
    echo json_encode($response);
}else{
    if(mysqli_query($con, $insert)){
        $response["status"] = TRUE;
        $response["message"] = "Berhasil Menambahkan";
        echo json_encode($response);
    }else{
        echo mysqli_error($con);
    }
}



?>