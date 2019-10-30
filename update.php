<?php
    require_once 'include/Config.php';
        $response = array();
        // $id = $_POST['id'];
        $nama = $_POST['nama'];
        $username = $_POST['username'];
        $email = $_POST['email'];
        // $password = $_POST['password'];
        
    $sql = "UPDATE tbl_user SET nama = '$nama', username = '$username', email = '$email' WHERE email = '$email';";

    if(mysqli_query($con,$sql)) {
        $response["error"] = FALSE;
        $response["message"] = "Berhasil diperbarui";
        echo json_encode($response);
      } else {
        $response["error"] = TRUE;
        $response["message"] = "oops! Gagal merubah!";
        echo json_encode($response);
        echo mysqli_error($con);
      }
      mysqli_close($con);
?>