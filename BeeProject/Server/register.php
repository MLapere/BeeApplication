<?php

$host = "localhost";
$username = "transeasy_user";
$password = "databees";
$dbname = "transeasy_databees";
$connection = mysqli_connect($host, $username, $password, $dbname);

$firstname = $_POST["firstname"];
$lastname = $_POST["lastname"];
$email = $_POST["email"];
$password = $_POST["password"];
$coordinator = $_POST["coordinator"];

$query = "INSERT INTO users (firstname, lastname, email, password, is_healthcoordinator) VALUES(?, ?, ?, ?, ?)";
$statement = mysqli_prepare($connection, $query);
mysqli_stmt_bind_param($statement, "ssssi", $firstname, $lastname, $email, $password, $coordinator);
mysqli_stmt_execute($statement);
$success = mysqli_stmt_affected_rows($statement) == 1;
mysqli_stmt_close($statement);
mysqli_close($connection);

if($success) {
	$result = array("result" => "success", "msg" => "Registration successful.");
} else {
	$result = array("result" => "error", "msg" => "This email address is already registered.");
}

die(json_encode($result));