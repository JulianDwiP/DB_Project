<?php
    require_once 'include/Config.php';


    $get = "SELECT * FROM buku order by peringkat desc";
    $result = mysqli_query($con, $get);

    if($result){
        while($row=mysqli_fetch_array($result))
	{
		$data[]=$row;
	}
	
	echo json_encode([
        'status' => TRUE,
         'list' => $data]);
    }
    mysqli_close($con);
?>