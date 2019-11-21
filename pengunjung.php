<?php

require_once 'include/Config.php';

$id = $_POST['id'];
$pengunjung = $_POST['pengunjung'];

$cek = "SELECT pengunjung from buku where id='$id'";
$mana = mysqli_query($con, $cek);
// $fas = mysqli_fetch_assoc($mana);
// print $fas;
while($row = $mana->fetch_assoc()) {
    $data = $row["pengunjung"] + 1;
}

$sql = "UPDATE buku set pengunjung = '$data' where id = '$id'";
$result = mysqli_query($con, $sql);
if($result){
    $response["status"] = TRUE;
    echo json_encode($response);
}else{
    $response["status"] = False;
    echo json_encode($response);
    echo mysqli_error($con);
}
?>