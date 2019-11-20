<!DOCTYPE html>
<html>
<head>
    <meta charshet="utf-8"/>
    <title> Test </title>
</head>
<body>
<form method="post" enctype="multipart/form-data">
<input type="file" name ="myfile"/>
<button name ="btn">Upload</button>
<br>
<input type="file" name="pdf"/>
</form>
<?php
require_once('include/Config.php');

if(isset($_POST['btn'])){
    $target = "pdf-icons/";
    $target_file_img = $target . basename($_FILES['myfile']['name']);
    $file_target_img = $_FILES['myfile']['type'];
    if($file_target_img == "image/jpg"||$file_target_img == "image/png"||$file_target_img == "image/jpeg"){
        if(move_uploaded_file($_FILES['myfile']['tmp_name'], $target_file_img)){
            echo "The file ". basename( $_FILES["myfile"]["name"])."\n". " has been uploaded.";
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }else{
        echo "Hanya boleh file dgn format img saja";
    }
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
            }
            
    $stmt = $con->prepare("INSERT into buku(id,pdf_icon, pdf_url) values('',?,?)");
    $stmt->bind_param("ss", $target_file_img, $target_file_pdf);
    if($stmt->execute()){
        echo "Berhasil Memasukan ke table lur";
    }else{
        echo mysqli_error($con);
    }
?>

<p></p>
<ol>
</ol>
</body>
</html>
