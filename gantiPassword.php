<?php
require_once 'include/db_function.php';
include 'include/Config.php';
$db = new db_function;

$response = array("error" => FALSE);

if(isset($_POST['id'])&& isset($_POST['password'])){
    $id = $_POST['id'];
    $password = $_POST['password'];

    $user = $db->gantiPassword($password, $id);

    if ($user != false) {
        $response["error"] = False;
        $response["error_msg"] = "Berhasil Mengganti password";
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