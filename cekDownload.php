<?php

require_once 'include/Config.php';

$nam = $_POST['nama'];
$id_user = $_POST['id_user'];

$cek = "SELECT * from downloaded where nama = '$nam' and id_user = '$id_user'";
$result = mysqli_query($con, $cek);
$cari = mysqli_num_rows($result);

if($result){
   $response["status"] = TRUE;
   $response["hasil"] = mysqli_fetch_assoc($result);
   echo json_encode($response);
}else{
    $response["hasil"] = mysqli_fetch_assoc($result);
    $response["status"] = FALSE;
    echo json_encode($response);
    echo mysqli_error($con);
}

?>