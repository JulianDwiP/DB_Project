<?php
 
require_once 'include/db_function.php';
$db = new db_function();
 
$response = array("error" => FALSE);
 
if (isset($_POST['nama']) && isset($_POST['email']) && isset($_POST['username'])) {
 
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $user = $db->updateUser($nama, $email, $username);
        if ($user) {
            $response["error"] = FALSE;
            $response["user"]["username"] = $user["username"];
            $response["user"]["nama"] = $user["nama"];
            $response["user"]["email"] = $user["email"];
            echo json_encode($response);
        } else {
            $response["error"] = TRUE;
            $response["error_msg"] = "Terjadi kesalahan saat melakukan registrasi";
            echo json_encode($response);
        }
    }else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Parameter (nama, email, atau password) ada yang kurang";
    echo json_encode($response);
}
?>