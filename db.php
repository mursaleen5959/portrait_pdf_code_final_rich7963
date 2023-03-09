<?php

$servername = "localhost"; // database server name
$username = "root"; // database username
$password = ""; // database password
$dbname = "rich7963"; // database name

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
