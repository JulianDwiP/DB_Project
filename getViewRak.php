<?php
require_once 'include/Config.php';

$id=$_POST['id_buku'];

$sql = "SELECT pengunjung from rakBuku where id_buku ='$id'";
$result = mysqli_query($con, $sql);

if($result){
    $data = mysqli_fetch_assoc($result);
    echo json_encode($data);
}else{
    $response["data"] = False;
    echo mysqli_error($con);  
}
?>