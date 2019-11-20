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
<!-- <button name ="btnPdf">Upload</button> -->
</form>
<?php
require_once('include/Config.php');
$target = "pdf-icons/";
$target_file = $target . basename($_FILES['myfile']['name']);
$uploadOk = 1;

if(isset($_POST['btn'])){
    $cek = getimagesize($_FILES['myfile']['tmp_name']);
    if($cek !== false){
        echo "\n";
        echo " File is an Image - " . $cek['mime'].".";
        $uploadOk =1;
    }else{
        echo "\n";
        echo "File bukan image bodoh";
        $uploadOk = 0;
    }

    if($uploadOk==0){
    echo "\n";
    echo "Sorry, your file was not uploaded.";
    }else{
        if(move_uploaded_file($_FILES['myfile']['tmp_name'], $target_file)){
            echo "The file ". basename( $_FILES["myfile"]["name"])."\n". " has been uploaded.";
    } else {
        echo "\n";
        echo "Sorry, there was an error uploading your file.";
            }
        }
    }

    $targetpdf="pdf/";
    $target_file = $targetpdf . basename($_FILES['pdf']['name']);
    $file_type_pdf = $_FILES['pdf']['type'];
    if(isset($_POST['btn'])){
        if($file_type_pdf =="application/pdf"){
            if(move_uploaded_file($_FILES['pdf']['tmp_name'], $target_file)){
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

    //         $localimage = "http://192.168.43.143/perpus_db/";
            
    // $stmt = $con->prepare("INSERT into buku(pdf_icon, pdf_url) values(?,?)");
?>

<p></p>
<ol>
</ol>
</body>
</html>
