<?php
require_once 'include/db_function.php';
include 'include/Config.php';
$db = new db_function;

$response = array("error" => FALSE);

if(isset($_POST['email'])&& isset($_POST['password'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    $user = $db->getUserbyEmailAndPassword($email, $password);

    if ($user != false) {
        $sql = "select * from tbl_user where email = '$email'";
        $data = mysqli_query($con,$sql);
        $result = mysqli_fetch_assoc($data);
        $response["error"] = FALSE;
        $response["list"] = $result;
        echo json_encode($response);
    } else {
        $response["error"] = TRUE;
        $response["error_msg"] = "Login gagal. Password/Email salah";
        echo json_encode($response);
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Parameter (email atau password) ada yang kurang";
    echo json_encode($response);
}
?>