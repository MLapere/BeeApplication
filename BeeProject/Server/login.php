<?php

$host = "localhost";
$username = "transeasy_user";
$password = "databees";
$dbname = "transeasy_databees";
$connection = mysqli_connect($host, $username, $password, $dbname);

$email = $_POST["email"];
$password = $_POST["password"];

$query = "SELECT * FROM users WHERE email = ? AND password = ?";
$statement = mysqli_prepare($connection, $query);
mysqli_stmt_bind_param($statement, "ss", $email, $password);
mysqli_stmt_execute($statement);
mysqli_stmt_store_result($statement);
$success = mysqli_stmt_num_rows($statement) == 1;
mysqli_stmt_close($statement);
mysqli_close($connection);

if($success) {
	$result = array("result" => "success");
} else {
	$result = array("result" => "error", "msg" => "Wrong email or password.");
}

die(json_encode($result));