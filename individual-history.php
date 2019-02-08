<?php
include_once 'header.php';
?>
<?php

    if (isset($_GET['username'])) {
        $username = $_GET['username'];
    $q = mysqli_query($con, "SELECT * FROM history WHERE username='$username' AND status='finished' ORDER BY date DESC ") or die('Error197');
    ?> <div class="panel title">
    <table class="table table-striped title1" >
        <tr>
            <td style="vertical-align:middle"><b>S.N.</b></td><td style="vertical-align:middle"><b>Quiz</b></td>
            <td style="vertical-align:middle"><b>Total Questions</b></td>
            <td style="vertical-align:middle"><b>Right</b></td>
            <td style="vertical-align:middle"><b>Wrong<b></td>
            <td style="vertical-align:middle"><b>Unattempted<b>
            </td><td style="vertical-align:middle"><b>Score</b>
            </td><td style="vertical-align:middle"><b>Action<b></td>
        </tr>
     <?php
        $c = 0;
        while ($row = mysqli_fetch_array($q)) {
        $eid = $row['eid'];
        $s   = $row['score'];
        $w   = $row['wrong'];
        $r   = $row['correct'];
        $q23 = mysqli_query($con, "SELECT * FROM quiz WHERE  eid='$eid' ") or die('Error208');
        while ($row = mysqli_fetch_array($q23)) {
        $title = $row['title'];
        $total = $row['total'];
        }
        $c++;
        ?>
        <tr>
            <td style="vertical-align:middle"><?php echo $c; ?></td>
            <td style="vertical-align:middle"><?php echo $title; ?></td>
            <td style="vertical-align:middle"><?php echo $total; ?></td>
            <td style="vertical-align:middle"><?php echo $r; ?></td>
            <td style="vertical-align:middle"><?php echo $w; ?></td>
            <td style="vertical-align:middle"><?php echo ($total - $r - $w); ?></td>
            <td style="vertical-align:middle"><?php echo $s; ?></td>
            <td style="vertical-align:middle"><b><a href="individual-result.php?q=10&username=<?php echo $username ?>&eid=<?php echo $eid; ?>" class="btn" style="margin:0px;background:darkred;color:white">&nbsp;<span class="title1"><b>View Result</b></td>
        </tr>
                    <?php
        }
        echo '</table></div>';
    }
    ?>

<?php include_once 'footer.php';
