<?php

require_once 'include/Config.php';

$kategori = $_POST['kategori'];
$nama = $_POST['nama'];
if($kategori == "Paling Banyak Dibaca"){
    $sql = "SELECT * from buku where nama like '%$nama%' order by pengunjung desc";
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
}else if($kategori == ""){
    $sql = "SELECT * from buku where nama like '%$nama%'";
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
}else if($kategori == "Peringkat Terbaik"){
    $sql = "SELECT * from buku where nama like '%$nama%' order by peringkat desc";
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
}
?>