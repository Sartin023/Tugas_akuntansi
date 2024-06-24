<?php
session_start();
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    try {
        // Prepare query SQL
        $sql = "SELECT * FROM users WHERE username=?";
        $stmt = $koneksi->prepare($sql);
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();

            // Verifikasi password
            if ($password == $row['password']) { // Tidak menggunakan password_verify
                // Login berhasil, regenerasi ID sesi
                session_regenerate_id();
                $_SESSION['username'] = $username;
                header("Location: index.html");
                exit;
            } else {
                echo "Password salah!";
            }
        } else {
            echo "Username tidak ditemukan!";
        }

        $stmt->close();
        $koneksi->close();
    } catch (Exception $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>
