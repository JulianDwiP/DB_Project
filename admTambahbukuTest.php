

<?php
    require_once('include/Config.php');
    $kategori = mysqli_query($con, "SELECT * FROM kategori_buku");
?>
<html>
<head>
    <meta charshet="utf-8"/>
    <title> Test </title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
</head>
<body>
    <div class="container">
        <form class="" action="admTambahbukuTest.php">
            <div class="form-group">
                <label for="exampleFormControlInput1">Judul</label>
                <input type="text" class="form-control" name="nama" placeholder="Judul Buku">
            </div>
            <div class="mb-3">
                <label for="validationTextarea">Deskripsi</label>
                    <textarea class="form-control" rows="6" name="deskripsi"></textarea>
            </div>

            <div class="form-group">
                <label for="exampleFormControlInput1">Pengarang</label>
                <input type="text" class="form-control" name="author" placeholder="Judul Buku">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Peringkat</label>
                <input type="number" class="form-control" name="peringkat" placeholder="Judul Buku">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Kategori</label>
                <input type="text" class="form-control" name="kategori" placeholder="Judul Buku">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Foto Buku</label><br>
                <input type="file" name="myfile" placeholder="Judul Buku">
            </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Pdf Buku</label><br>
                <input type="file" name="pdf" placeholder="Judul Buku">
            </div>
            <button type="submit" class="btn btn-primary btn-med" name="btn">Masukan</button>
        </form>
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
        echo "Berhasil Memasukan ke table";
    }else{
        echo mysqli_error($con);
    }
}else{
}

?>
</body>
</html>

