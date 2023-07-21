<?php
  $hostname = "localhost";
  $username = "ycdcdxmt_chat";
  $password = "ycdcdxmt_chat";
  $dbname = "ycdcdxmt_chat";

  $conn = mysqli_connect($hostname, $username, $password, $dbname);
  if(!$conn){
    echo "Database connection error".mysqli_connect_error();
  }
?>
