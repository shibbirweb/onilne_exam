<?php
session_start();
if (isset($_SESSION["username"])) {
    session_destroy();
}
include_once 'dbConnection.php';
$ref      = @$_GET['q'];
$username = $_POST['username'];
$password = $_POST['password'];

$username = stripslashes($username);
$username = addslashes($username);
$password = stripslashes($password);
$password = addslashes($password);
$password = md5($password);
$result = mysqli_query($con, "SELECT id,name FROM user WHERE username = '$username' and password = '$password'") or die('Error');
$count = mysqli_num_rows($result);
if ($count == 1) {
    while ($row = mysqli_fetch_array($result)) {
        $name = $row['name'];
        $logged_user_id = $row['id'];
    }
    $_SESSION["name"]     = $name;
    $_SESSION["username"] = $username;
    $_SESSION['logged_user_id'] = $logged_user_id;

    //debug($name);
    //debug($logged_user_id);

    $query = "SELECT user_id FROM online WHERE user_id = '$logged_user_id'";
    $result  = query($query, MULTIPLE_RETURN);
    if (mysqli_num_rows($result) < 1){
        //no previous record
        $query = "INSERT INTO online(user_id, last_time_seen) VALUES ('$logged_user_id', NOW())";
        query($query);
        //echo "Record saved";
    }else{
        //record already exists
        updateLastSeen($logged_user_id);
        //echo "Record updated";
    }



    /*----------------*/
    header("location:account.php?q=1");
} else
    header("location:$ref?w=Wrong Username or Password");


?>