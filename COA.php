<?php
session_start();
include 'koneksi.php'; // Menggunakan file koneksi yang sudah ada

$sql = "SELECT Kode_Akun, Nama_Akun, Tipe, Debit, Kredit FROM tbl_coa"; // Pastikan nama tabel dan kolom sesuai
$result = $koneksi->query($sql);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COA</title>
    <link rel="stylesheet" href="style/COA.css">
</head>
<body>
    <div class="topnav" id="myTopnav">
        <a href="index.html">Home</a>
        <div class="dropdown">
            <button class="dropbtn">Master Data 
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="coa.php" class="active">COA</a>
                <a href="control.php">Control</a>
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
        <h2>COA</h2>
        <table>
            <thead>
                <tr>
                    <th>Kode Akun</th>
                    <th>Nama Akun</th>
                    <th>Tipe</th>
                    <th>Debit</th>
                    <th>Kredit</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                    // Output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row["Kode_Akun"] . "</td>";
                        echo "<td>" . $row["Nama_Akun"] . "</td>";
                        echo "<td>" . $row["Tipe"] . "</td>";
                        echo "<td>" . $row["Debit"] . "</td>";
                        echo "<td>" . $row["Kredit"] . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='5'>No data available</td></tr>";
                }
                $koneksi->close();
                ?>
            </tbody>
        </table>
    </div>

    <script src="index.js"></script>
</body>
</html>
