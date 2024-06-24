<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "akun";

$koneksi = new mysqli($server, $username, $password, $database);

if ($koneksi->connect_error) {
    die("Koneksi database gagal: " . $koneksi->connect_error);
}
?>
