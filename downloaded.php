<?php

require_once 'include/Config.php';

$response = array();
    $nama = $_POST['nama'];
    $pdf_url = $_POST['pdf_url'];
    $id_user = $_POST['id_user'];

$insert = "INSERT into downloaded (nama, pdf_url, id_user)
values ('$nama','$pdf_url','$id_user')";

$ada = mysqli_num_rows(mysqli_query($con, "SELECT nama from downloaded where nama = '$nama' and id_user = '$id_user'"));

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