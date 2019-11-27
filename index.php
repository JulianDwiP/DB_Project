<?php
include("auth.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Welcome </title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
<div class="form">
<h1 >Welcome <?php echo $_SESSION['username']; ?>!</h1>
<p >Beranda</p>
<p><a href="admTambahbuku.php">Tambah Buku</a></p>
<a href="logout.php">Logout</a>
</div>
</body>
</html>