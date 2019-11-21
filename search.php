<?php

require_once 'include/Config.php';

$search = $_POST['nama'];

$sql = "SELECT * from buku  where nama like '%$search%'";
$result = mysqli_query($con, $sql);

if($result){
    while($row=mysqli_fetch_array($result))
        {
            $data[]=$row;
        }
        echo json_encode([
            'status' => TRUE,
             'list' => $data]);  
}else{
    echo mysqli_error($con);
    $response["status"] = false;
    echo json_encode($response);
}

?>