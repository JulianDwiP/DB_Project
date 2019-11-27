<?php
    require_once 'include/Config.php';

    $id = $_POST['id_user'];

    $get = "SELECT * FROM downloaded where id_user = '$id'";
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