<?php
include_once 'dbConnection.php';
ob_start();
$name     = $_POST['name'];
$name     = ucwords(strtolower($name));
$gender   = $_POST['gender'];
$username = $_POST['username'];
$phno     = $_POST['phno'];
$password = $_POST['password'];
$branch   = $_POST['branch'];
$rollno   = $_POST['rollno'];
$name     = stripslashes($name);
$name     = addslashes($name);
$name     = ucwords(strtolower($name));
$gender   = stripslashes($gender);
$gender   = addslashes($gender);
$username = stripslashes($username);
$username = addslashes($username);
$phno     = stripslashes($phno);
$phno     = addslashes($phno);
$password = stripslashes($password);
$password = addslashes($password);
$password = md5($password);

$q3 = mysqli_query($con, "INSERT INTO user VALUES  (NULL,'$name', '$rollno','$branch','$gender' ,'$username' ,'$phno', '$password')");
if ($q3) {
    session_start();
    $_SESSION["username"] = $username;
    $_SESSION["name"]     = $name;


    $result = mysqli_query($con, "SELECT id FROM user WHERE username = '$username'") or die('Error');
    $count = mysqli_num_rows($result);
    if ($count == 1) {
        while ($row = mysqli_fetch_array($result)) {
            $logged_user_id = $row['id'];
        }
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
    }


    
    header("location:account.php?q=1");
} else {
    header("location:index.php?q7=Username already exists. Please choose another&name=$name&username=$username&gender=$gender&phno=$phno&branch=$branch&rollno=$rollno");
}
ob_end_flush();
?>