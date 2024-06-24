<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .welcome-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
            text-align: center;
        }
        .welcome-container h2 {
            margin-bottom: 20px;
        }
        .welcome-container a {
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <h2>Welcome</h2>
        <a href="logout.php">Logout</a>
    </div>
</body>
</html>
