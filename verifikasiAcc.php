<?php
require_once 'include/db_function.php';
include 'include/Config.php';
$db = new db_function;


$response = array("error" => FALSE);

if(isset($_POST['username'])&& isset($_POST['email'])){
    $email = $_POST['email'];
    $username = $_POST['username'];

    $user = $db->verifyAccount($username, $email);

    if ($user == false) {
        $sql = "SELECT * from tbl_user where username = '$username' and email = '$email'";
        $data = mysqli_query($con,$sql);

        $result = mysqli_fetch_assoc($data);
        echo json_encode($result);
    } else {
        $response["error"] = TRUE;
        $response["error_msg"] = "Login gagal. Password/Email salah";
        echo mysqli_error($con);
        echo json_encode($response);
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Parameter (email atau password) ada yang kurang";
    echo json_encode($response);
}

?>