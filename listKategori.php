<?php

require_once 'include/Config.php';

$sql = "SELECT kategori from kategori_buku";
$result = mysqli_query($con, $sql);
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