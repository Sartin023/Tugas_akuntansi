<?php
session_start();
include 'koneksi.php'; // Menggunakan file koneksi yang sudah ada

// Memeriksa apakah pengguna sudah login
if (!isset($_SESSION['username'])) {
    header("Location: login.php"); // Redirect ke halaman login jika belum login
    exit();
}

$username = $_SESSION['username'];
$sql = "SELECT id FROM users WHERE username=?";
$stmt = $koneksi->prepare($sql);
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();

$id = '';
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $id = $row['id'];
}

$stmt->close();
$koneksi->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profil</title>
    <link rel="stylesheet" href="style/index.css">
</head>
<body class="header-profil">
    <div class="topnav" id="myTopnav">
        <a href="index.html">Home</a>
        <div class="dropdown">
            <button class="dropbtn">Master Data 
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="coa.html">COA</a>
                <a href="control.html">Control</a>
                <a href="jurnal-umum.html">Jurnal Umum</a>
            </div>
        </div> 
        <div class="dropdown">
            <button class="dropbtn">Hasil Data 
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="buku-besar.html">Buku Besar</a>
                <a href="neraca-saldo.html">Neraca Saldo</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">Profil 
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="profil.php" class="active">Profil</a>
                <a href="logout.php">Log Out</a>
            </div>
        </div>
        <a href="javascript:void(0);" class="icon" onclick="toggleResponsive()">&#9776;</a>
    </div>

    <div class="main-content">
        <h2>Profil</h2>
        <p>ID Anda: <?php echo $id; ?></p>
    </div>

    <script src="index.js"></script>
</body>
</html>
