<?php

require_once 'dbConnection.php';

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    //disable user status
    if (isset($_POST['user-id-to-status-disable'])){
        $id = $_POST['user-id-to-status-disable'];
        $query = "UPDATE user SET status= '0' WHERE id= '$id'";
        if(query($query)){
            redirect("dash.php?q=1");
        }
    }

    //enable exam status
    if(isset($_POST['user-id-to-status-enable'])){
        $id = $_POST['user-id-to-status-enable'];
        $query = "UPDATE user SET status= '1' WHERE id= '$id'";
        if(query($query)){
            redirect("dash.php?q=1");
        }
    }
}