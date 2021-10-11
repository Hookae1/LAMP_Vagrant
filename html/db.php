<?php
$conn = mysqli_connect("localhost", "hookahel", "password", "mydb");

if (!$conn) {
    die("Error: " . mysqli_connect_error());
}

echo "Connected to Database!";

?>