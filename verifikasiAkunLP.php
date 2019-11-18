<?php

require_once 'include/Config.php';

    $username = $_POST['username'];
    $email = $_POST['email'];

    $get = "SELECT * FROM tbl_user where username = '$username' && email = '$email'";
    $result = mysqli_query($con, $get);

    if($result){
        while($row=mysqli_fetch_array($result))
	{
		$data[]=$row;
	}
	
	echo json_encode([
        'status' => TRUE,
         'list' => $data]);
    }else{
        echo 'error'.mysqli_error($con);
    }
    mysqli_close($con);
?>