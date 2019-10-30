<?php
 
require_once 'include/db_function.php';
$db = new db_function();
 
$response = array("error" => FALSE);
 
if (isset($_POST['nama']) && isset($_POST['email']) && isset($_POST['password'])) {
 
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $username = $_POST['username'];
 
    if ($db->isUserExist($email)) {
        $response["error"] = TRUE;
        $response["error_msg"] = "User telah ada dengan email " . $email;
        echo json_encode($response);
    } else {
      
        $user = $db->simpanUser($nama, $email, $password, $username);
        if ($user) {
            $response["error"] = FALSE;
            $response["user"]["username"] = $user["username"];
            $response["user"]["nama"] = $user["nama"];
            $response["user"]["email"] = $user["email"];
            $response["user"]["password"] = $user["en_password"];
            echo json_encode($response);
        } else {
            $response["error"] = TRUE;
            $response["error_msg"] = "Terjadi kesalahan saat melakukan registrasi";
            echo json_encode($response);
        }
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Parameter (nama, email, atau password) ada yang kurang";
    echo json_encode($response);
}
?>