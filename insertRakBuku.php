<?php

require_once 'include/Config.php';

$response = array();
    $nama = $_POST['Rb_nama'];
    $deskripsi = $_POST['Rb_deskripsi'];
    $pdf_icon = $_POST['Rb_pdf_icon'];
    $pdf_url = $_POST['Rb_pdf_url'];
    $author = $_POST['Rb_author'];
    $peringkat = $_POST['Rb_peringkat'];
    $kategori = $_POST['Rb_kategori'];
    $id_user = $_POST['id_user'];

$insert = "INSERT into rakBuku (Rb_nama, Rb_deskripsi, Rb_author, Rb_pdf_icon, Rb_pdf_url, Rb_peringkat, Rb_kategori, id_user)
values ('$nama', '$deskripsi', '$author', '$pdf_icon', '$pdf_url', $peringkat, '$kategori', '$id_user')";

$ada = mysqli_num_rows(mysqli_query($con, "SELECT Rb_nama from rakBuku where Rb_nama = '$nama'"));
if($ada>0){
    $response["status"] = False;
    $response["message"] = "Data Sudah di download";
    echo json_encode($response);
}else{
    if(mysqli_query($con, $insert)){
        $response["status"] = TRUE;
        $response["message"] = "Berhasil Menambahkan";
        echo json_encode($response);
    }
}


?>