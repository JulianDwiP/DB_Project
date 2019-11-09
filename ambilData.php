<?php
    require_once 'include/Config.php';

    $response = array("error" => FALSE);
    $sql = "SELECT * FROM tbl_user";
    $result = $con->query($sql);
    $row = $result->fetch_assoc();

    if($result){
            $response["user"]["id"] = $row["id"];
            $response["user"]["nama"] = $row["nama"];
            $response["user"]["username"] = $row["username"];
            $response["user"]["password"] = $row["en_password"];
            $response["user"]["email"] = $row["email"];
            echo json_encode($response);
    }
    mysqli_close($con);
?>