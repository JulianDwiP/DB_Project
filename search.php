<?php

require_once 'include/Config.php';

$filter = $_POST['deskripsi'];
$nama = $_POST['nama'];
$kategori = $_POST['kategori'];

if($filter == "Paling Banyak Dibaca" && $kategori != "Semua Kategori" ){
    $sql = "SELECT * from buku where nama like '%$nama%' and kategori = '$kategori' order by pengunjung desc";
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
}else if($filter == "Semua Buku" && $kategori != "Semua Kategori"){
    $sql = "SELECT * from buku where nama like '%$nama%' and kategori = '$kategori'";
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
}else if($filter == "Peringkat Terbaik" && $kategori != "Semua Kategori"){
    $sql = "SELECT * from buku where nama like '%$nama%' and kategori ='$kategori' order by peringkat desc";
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
}else if($filter == "Paling Banyak Dibaca" && $kategori == "Semua Kategori"){
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
}else if($filter == "Semua Buku" && $kategori == "Semua Kategori"){
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
}else if($filter == "Peringkat Terbaik" && $kategori == "Semua Kategori"){
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