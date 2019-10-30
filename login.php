<?php
require_once 'include/db_function.php';
$db = new db_function;

$response = array("error" => FALSE);

if(isset($_POST['email'])&& isset($_POST['password'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    $user = $db->getUserbyEmailAndPassword($email, $password);

    if ($user != false) {
        $response["error"] = FALSE;
        $response["user"]["nama"] = $user["nama"];
        $response["user"]["email"] = $user["email"];
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