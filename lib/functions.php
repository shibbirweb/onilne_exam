<?php

require_once 'constant.php';

function debug($data){
    echo '<pre>';
    print_r($data);
    echo'</pre>';
}

function updateLastSeen($id){
    $query = "UPDATE online SET last_time_seen = NOW() WHERE user_id = '$id'";
    query($query);
}
function logoutSeen($id){
    $online_time = ONLINE_TIME;
    $query = "UPDATE online SET last_time_seen = DATE_SUB(NOW(), INTERVAL $online_time MINUTE) WHERE user_id = '$id'";
    query($query);
}

/*
 * Query function
 * $query type = 0 : no return
 * $query_type = 1 : return one result;
 * $query_tpye = 2 : return multiple result
 * */
function query($query, $query_type = NO_RETURN){
    global $con;
    switch ($query_type){
        case NO_RETURN:
            $result = mysqli_query($con, $query) or die("Query failed: ".mysqli_error($con));
            if ($result){
                return true;
            }else{
                return false;
            }
            break;
        case SINGLE_RETURN:
            $result = mysqli_query($con, $query) or die("Query failed: ".mysqli_error($con));
            return mysqli_fetch_assoc($result);
            break;
        case MULTIPLE_RETURN:
            $result = mysqli_query($con, $query) or die("Query failed: ".mysqli_error($con));
            return $result;
            break;
    }
}

function redirect($location){
    header("Location:".$location);
}