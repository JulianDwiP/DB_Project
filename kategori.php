<?php

require_once 'include/Config.php';

$kategori = $_POST['kategori'];
$sql = "SELECT * from buku where kategori = '$kategori' order by peringkat Desc";
$result = mysqli_query($con, $sql);

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