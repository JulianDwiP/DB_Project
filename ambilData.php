<?php
    require_once 'include/Config.php';

    $response = array("error" => FALSE);
    $email = $_POST['email'];
    $sql = "SELECT * FROM tbl_user where email ='$email'";
    $result = $con->query($sql);
    $row = $result->fetch_assoc();

    // if($result->num_rows > 0){
    //     while($row = $result->fetch_assoc()){
    //         $response["error"] = FALSE;
    //         $response["user"]["id"] = $row["id"];
    //         $response["user"]["nama"] = $row["nama"];
    //         $response["user"]["username"] = $row["username"];
    //         $response["user"]["password"] = $row["en_password"];
    //         $response["user"]["email"] = $row["email"];
    //         echo "\n\n";
    //         echo json_encode($response);
    //     }
    //     }else{
    //         $response["error"] = TRUE;
    //         echo json_encode($response);
    // }

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