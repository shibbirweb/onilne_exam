 <?php

 if (version_compare(phpversion(), '5.4.0', '<')) {
     if(session_id() == '') {
        session_start();
     }
 }
 else
 {
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }
 }

 include_once 'dbConnection.php';
if (!(isset($_SESSION['username']))) {
    header("location:index.php");
} else {
    $name     = $_SESSION['name'];
    $username = $_SESSION['username'];
    $logged_user_id = $_SESSION['logged_user_id'];
    updateLastSeen($logged_user_id);
}

$result = mysqli_query($con, "SELECT * FROM quiz WHERE status = 'enabled' ORDER BY date DESC") or die('Error');
    ?>
    <div class="panel">
        <table class="table table-striped title1" style="vertical-align:middle">
            <tr>
                <td style="vertical-align:middle"><b>S.N.</b></td>
                <td style="vertical-align:middle"><b>Name</b></td>
                <td style="vertical-align:middle"><b>Total question</b></td>
                <td style="vertical-align:middle"><b>Correct Answer</b></td>
                <td style="vertical-align:middle"><b>Wrong Answer</b></td>
                <td style="vertical-align:middle"><b>Total Marks</b></td>
                <td style="vertical-align:middle"><b>Time limit</b></td>
                <td style="vertical-align:middle"><b>Action</b></td>
            </tr>
    <?php
    $c = 1;
    while ($row = mysqli_fetch_array($result)) {
        $title   = $row['title'];
        $total   = $row['total'];
        $correct = $row['correct'];
        $wrong   = $row['wrong'];
        $time    = $row['time'];
        $eid     = $row['eid'];
        $q12 = mysqli_query($con, "SELECT score FROM history WHERE eid='$eid' AND username='$username'") or die('Error98');
        $rowcount = mysqli_num_rows($q12);
        if ($rowcount == 0) {
            ?>
            <tr>
                <td style="vertical-align:middle"><?php echo $c++; ?></td>
                <td style="vertical-align:middle"><?php echo  $title; ?></td>
                <td style="vertical-align:middle"><?php echo  $total; ?></td>
                <td style="vertical-align:middle">+<?php echo  $correct; ?></td>
                <td style="vertical-align:middle">-<?php echo  $wrong; ?></td>
                <td style="vertical-align:middle"><?php echo  $correct * $total; ?></td>
                <td style="vertical-align:middle"><?php echo  $time; ?> min</td>
                <td style="vertical-align:middle">
                    <?php
                    $logged_user_id = $_SESSION['logged_user_id'];
                    $status_query = "SELECT status FROM user WHERE id = '$logged_user_id'";
                    $status_result = query($status_query,SINGLE_RETURN);
                    if($status_result['status'] == 1){
                        ?>
                        <b>
                            <?php echo '<a href="account.php?q=quiz&step=2&eid=' . $eid . '&n=1&t=' . $total . '&start=start" class="btn" style="color:#FFFFFF;background:darkgreen;font-size:12px;padding:7px;padding-left:10px;padding-right:10px"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span><b>Start</b></span></a>' ?>
                        </b>
                        <?php
                    }else{
                        ?>
                        <button onclick="noPermissionForExam();" class="btn btn-warning"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></button>
                        <?php
                    }
                    ?>
                </td>
            </tr>
    <?php
        } else {
            $q = mysqli_query($con, "SELECT * FROM history WHERE username='$_SESSION[username]' AND eid='$eid' ") or die('Error197');
            while ($row = mysqli_fetch_array($q)) {
                $timec  = $row['timestamp'];
                $status = $row['status'];
            }
            $q = mysqli_query($con, "SELECT * FROM quiz WHERE eid='$eid' ") or die('Error197');
            while ($row = mysqli_fetch_array($q)) {
                $ttimec  = $row['time'];
                $qstatus = $row['status'];
            }
            $remaining = (($ttimec * 60) - ((time() - $timec)));
            if ($remaining > 0 && $qstatus == "enabled" && $status == "ongoing") {
                echo '<tr style="color:darkgreen"><td style="vertical-align:middle">' . $c++ . '</td><td style="vertical-align:middle">' . $title . '&nbsp;<span title="This quiz is already solve by you" class="glyphicon glyphicon-ok" aria-hidden="true"></span></td><td style="vertical-align:middle">' . $total . '</td><td style="vertical-align:middle">+' . $correct . '</td><td style="vertical-align:middle">-' . $wrong . '</td><td style="vertical-align:middle">' . $correct * $total . '</td><td style="vertical-align:middle">' . $time . '&nbsp;min</td>
  <td style="vertical-align:middle"><b><a href="account.php?q=quiz&step=2&eid=' . $eid . '&n=1&t=' . $total . '&start=start" class="btn" style="margin:0px;background:darkorange;color:white">&nbsp;<span class="title1"><b>Continue</b></span></a></b></td></tr>';
            } else {
                echo '<tr style="color:darkgreen"><td style="vertical-align:middle">' . $c++ . '</td><td style="vertical-align:middle">' . $title . '&nbsp;<span title="This quiz is already solve by you" class="glyphicon glyphicon-ok" aria-hidden="true"></span></td><td style="vertical-align:middle">' . $total . '</td><td style="vertical-align:middle">+' . $correct . '</td><td style="vertical-align:middle">-' . $wrong . '</td><td style="vertical-align:middle">' . $correct * $total . '</td><td style="vertical-align:middle">' . $time . '&nbsp;min</td>
  <td style="vertical-align:middle"><b><a href="account.php?q=result&eid=' . $eid . '" class="btn" style="margin:0px;background:darkred;color:white">&nbsp;<span class="title1"><b>View Result</b></span></a></b></td></tr>';
            }
        }
    }
    $c = 0;
    echo '</table></div><div class="panel" style="padding-top:1px;padding-left:15%;padding-right:15%;word-wrap:break-word"><h3 align="center" style="font-family:calibri">:: General Instructions ::</h3><br /><ul type="circle"><font style="font-size:14px;font-family:calibri">';
    $file = fopen("instructions.txt", "r");
    while (!feof($file)) {
        echo '<li>';
        $string = fgets($file);
        $num    = strlen($string);
        $c      = str_split($string);
        for ($i = 0; $i < $num; $i++) {
            $last = $c[$i];
            if ($c[$i] == ' ' && $last == ' ') {
                echo '&nbsp;';
            } else {
                echo $c[$i];
            }
        }
        echo "</li><br />";
    }

    fclose($file);
    echo '</font></ul></div>';