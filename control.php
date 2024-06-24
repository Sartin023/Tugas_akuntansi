<?php
session_start();
include 'koneksi.php'; // Menggunakan file koneksi yang sudah ada

$sql = "SELECT Nama_Akun, Saldo_Normal, Posisi FROM tbl_control"; // Pastikan nama tabel dan kolom sesuai
$result = $koneksi->query($sql);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Control</title>
    <link rel="stylesheet" href="style/control.css">
</head>
<body>
    <div class="topnav" id="myTopnav">
        <a href="index.html">Home</a>
        <div class="dropdown">
            <button class="dropbtn">Master Data 
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="COA.php">COA</a>
                <a href="control.php" class="active">Control</a>
                <a href="jurnal-umum.php">Jurnal Umum</a>
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
                <a href="profil.php">Profil</a>
                <a href="logout.php">Log Out</a>
            </div>
        </div>
        <a href="javascript:void(0);" class="icon" onclick="toggleResponsive()">&#9776;</a>
    </div>

    <div class="main-content">
        <h2>Control</h2>
        <table>
            <thead>
                <tr>
                    <th>Nama Akun</th>
                    <th>Saldo Normal</th>
                    <th>Posisi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                    // Output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row["Nama_Akun"] . "</td>";
                        echo "<td>" . $row["Saldo_Normal"] . "</td>";
                        echo "<td>" . $row["Posisi"] . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='3'>No data available</td></tr>";
                }
                $koneksi->close();
                ?>
            </tbody>
        </table>
    </div>

    <script src="index.js"></script>
</body>
</html>
