<?php

require_once 'include/Config.php';

$id = $_POST['id'];
$pengunjung = $_POST['pengunjung'];
$id_buku = $_POST['id_buku'];

$cek = "SELECT pengunjung from buku where id='$id'";
$mana = mysqli_query($con, $cek);

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
$sqli = "UPDATE rakBuku set pengunjung = '$data' where id_buku = '$id_buku'";
$resultq = mysqli_query($con, $sqli);
if($resultq){
    $responseq["status"] = TRUE;
    echo json_encode($responseq);
}else{
    $responseq["status"] = False;
    echo json_encode($responseq);
    echo mysqli_error($con);
}
?>