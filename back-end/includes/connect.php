<?php
session_start();
$servername = "localhost:3306";
$server_user = "root";
$server_pass = "elevis123";
$dbname = "cavallo";
$name = $_SESSION['name'];
$con = new mysqli($servername, $server_user, $server_pass, $dbname);
?>
