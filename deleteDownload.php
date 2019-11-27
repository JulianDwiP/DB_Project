<?php

require_once 'include/Config.php';

$id_user = $_POST['id_user'];
$nama = $_POST['nama'];

$sql = "DELETE from downloaded where nama ='$nama' and id_user = '$id_user'  ";
$hasil = mysqli_query($con, $sql);

if($hasil){
    $response ["status"] = TRUE;
    $response["message"] = "Berhasil di hapus dari list";
    echo json_encode($response); 
}else{
    echo mysqli_error($con);
}
?>