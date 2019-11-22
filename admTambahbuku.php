

<?php
    require_once('include/Config.php');
    $kategori = mysqli_query($con, "SELECT * FROM kategori_buku");
?>
<html>
<head>
    <meta charshet="utf-8"/>
    <title> Test </title>
</head>
<body>
    <center>
    <form method="post" enctype="multipart/form-data" action="admTambahbuku.php">
    <table>
    <tr>
        <td>Judul </td>
        <td><input type="text" name ="nama"/></td>
    </tr> <br>
    <tr>
        <td>Deskripsi</td>
        <td><textarea type="text" name="deskripsi" cols="30" rows="10"></textarea></td>
    </tr> <br>
    <tr>
        <td>Pengarang</td>
        <td><input type="text" name="author"/></td>
    </tr> <br>
    <tr>
        <td>Peringkat</td>
        <td><input type="text" name="peringkat"/></td>
    </tr> <br>
    <!-- <input type="text" name="kategori"> <br> -->
    <tr>
        <td>Kategori</td>
        <td><select name="kategori">
            <?php foreach ($kategori as $k) : ?>
                <option>
                    <?= $k ['kategori'];?>
                </option>
            <?php endforeach; ?></td>
        </select>
    </tr><br>
    <tr>  
        <td>Pdf foto</td>
        <td><input type="file" name ="myfile"/></td>
    </tr> <br>
    <tr>
        <td>Pdf buku</td>
        <td><input type="file" name="pdf"/></td>
    </tr><br>
    
    </table><br>
    <tr>
        <td></td>
        <td><button type="submit" name ="btn"> Upload</button></td>
    </tr>
    </form>
    </center>
    <br>
    <br>
    <center>
    <?php
require_once('include/Config.php');

if(isset($_POST['btn'])){
    $nama = @$_POST['nama'];
    $deskripsi = @$_POST['deskripsi'];
    $author = @$_POST['author'];
    $peringkat = @$_POST['peringkat'];
    $kategori = @$_POST['kategori'];

    //image
    $target = "pdf-icons/";
    $target_file_img = $target . basename($_FILES['myfile']['name']);
    $file_target_img = $_FILES['myfile']['type'];
    if($file_target_img == "image/jpg"||$file_target_img == "image/png"||$file_target_img == "image/jpeg"){
        if(move_uploaded_file($_FILES['myfile']['tmp_name'], $target_file_img)){
            // echo "The file ". basename( $_FILES["myfile"]["name"])."\n". " has been uploaded.";
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }else{
        echo "Hanya boleh file dgn format img saja";
    }
    //pdf
    $targetpdf="pdf/";
    $target_file_pdf = $targetpdf . basename($_FILES['pdf']['name']);
    $file_type_pdf = $_FILES['pdf']['type'];
        if($file_type_pdf =="application/pdf"){
            if(move_uploaded_file($_FILES['pdf']['tmp_name'], $target_file_pdf)){
                "File Berhasil di Upload  file ". basename( $_FILES['pdf']['name']). " is uploaded";
                }
                else {
                echo "File Gagal di Upload";
                }
            }
                else {
                echo "Hanya Boleh upload PDF, JPEG GIF .<br>";
                }
    $stmt = $con->prepare("INSERT INTO `buku` (`id`, `nama`, `deskripsi`, `author`, `pdf_icon`, `pdf_url`, `peringkat`, `kategori`, `pengunjung`)
     VALUES ('', '$nama', '$deskripsi', '$author','$target_file_img', '$target_file_pdf', $peringkat , '$kategori', 0)");

    $sql = "INSERT INTO `buku` (`id`, `nama`, `deskripsi`, `author`, `pdf_icon`, `pdf_url`, `peringkat`, `kategori`, `pengunjung`)
    VALUES ('', '$nama', '$deskripsi', '$author','$target_file_img', '$target_file_pdf', $peringkat , '$kategori', 0)"; 
    if(mysqli_query($con,$sql)){
        echo "Berhasil Memasukan ke table lur";
    }else{
        echo mysqli_error($con);
    }
}else{
    echo "button tidak dipencet";
}

?>
</center>
</body>
</html>

