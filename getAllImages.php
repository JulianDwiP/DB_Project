<?php

    require_once('include/Config.php');

    $sql = "SELECT image FROM tbl_user ";
    $res = mysqli_query($con,$sql);
    $result = array();

    while($row = mysqli_fetch_array($res)){
        array_push($result,array('url' =>$row['image']));
    }

    echo json_encode(array("result" =>$result));

    mysqli_close($con);

?>