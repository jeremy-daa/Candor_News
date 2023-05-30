<?php

$host = "localhost";
$user = "root";
$pass = "";
$db = "candor_news";
$con = mysqli_connect($host,$user,$pass,$db);

// Checking If the connection is obtained
if (!$con) {
  die("Database Connection Error");
}