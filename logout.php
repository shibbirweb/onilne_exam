<?php
session_start();
if (isset($_SESSION['username'])) {
    require_once 'dbConnection.php';
    echo $id = $_SESSION['logged_user_id'];

    logoutSeen($id);
    session_destroy();
}
$ref = @$_GET['q'];
header("location:index.php");
?>