<?php

if($_SERVER['REQUEST_METHOD']=='POST'){
    require_once('include/Config.php');

    $image = $_POST['image'];
    $id = $_POST['id'];

    $sql = "SELECT id FROM tbl_user where id = '$id'";

    $res = mysqli_query($con,$sql);

    while($row = mysqli_fetch_array($res)){
        $id = $row['id'];
    }

    $path = "uploads/$id.png";
    $actualpath = "http://192.168.43.236/perpus_db/$path";

    $sql = "UPDATE tbl_user set image = '$actualpath' where id = '$id'";

    if(mysqli_query($con, $sql)){
        file_put_contents($path,base64_decode($image));
        echo "Sukses di Upload";
    }

    mysqli_close($con);
}else{
    echo "Error";
}
?>