<?php

require_once 'include/Config.php';

$dPeringkat = $_POST['dPeringkat'];
$idBuku = $_POST['id_buku'];

$sql = "INSERT into peringkat (dPeringkat, id_buku) values ('$dPeringkat', '$idBuku')";
$hasil = mysqli_query($con, $sql);
$response = array();

if($hasil){
    $cek = "SELECT AVG(dPeringkat) from peringkat where id_buku = '$idBuku'";
    $ambil = mysqli_query($con, $cek);
    
    if($ambil){
            $result = mysqli_fetch_assoc($ambil);
            $result = $result["AVG(dPeringkat)"];
            $formatnum = number_format($result, 1);
            $masukanKeBuku = "UPDATE rakBuku set peringkat ='$formatnum' where id ='$idBuku'";
            if(mysqli_query($con,$masukanKeBuku)){
                $response["peringkat"] = $formatnum;
                echo json_encode($response);
            }else{
                echo 'error'.mysqli_error($con);
            }
            }else{
                echo 'error'.mysqli_error($con);
            }
        }
mysqli_close($con);
?>