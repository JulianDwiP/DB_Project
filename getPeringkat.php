<?php

require_once 'include/Config.php';

$idBuku = $_POST['id_buku'];

$sql = "SELECT AVG(dPeringkat) from peringkat where id_buku = '$idBuku'";
$hasil = mysqli_query($con, $sql);

if($hasil){
    $data = mysqli_fetch_assoc($hasil);
    $response["data"] = $data;
    echo json_encode($response);
}else{
    $response["data"] = False;
    echo mysqli_error($con);    
}

mysqli_close($con);
?>