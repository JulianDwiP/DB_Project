<?php

require_once 'include/Config.php';

$type = $_GET['item_type'];

if (isset($_GET['key'])) {
    $key = $_GET["key"];
    if ($type == 'buku') {
        $query = "SELECT * FROM buku WHERE nama LIKE '%$key%'";
        $result = mysqli_query($con, $query);
        $response = array();
        while($row=mysqli_fetch_array($result))
        {
            $data[]=$row;
        }
        echo json_encode([
            'status' => TRUE,
             'list' => $data]);  
    }
} else {
    if ($type == 'buku') {
        $query = "SELECT * FROM buku";
        $result = mysqli_query($con, $query);
        $response = array();
        while($row=mysqli_fetch_array($result))
        {
            $data[]=$row;
        }
        echo json_encode([
            'status' => TRUE,
             'list' => $data]);
    }
}
mysqli_close($con);


?>