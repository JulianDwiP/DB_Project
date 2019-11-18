<?php
require_once('include/Config.php');

$password = $_POST['password'];
$id = $_POST['id'];

$sql = "UPDATE tbl_user set en_password = '$password' where id = '$id'";

if(mysqli_query($con, $sql)){
    echo "Sukses mengganti password";
}else{
    echo "Error";
}
mysqli_close($con);
?>