<?php

$result = mysqli_query($con, "SELECT * FROM quiz ORDER BY date DESC") or die('Error');
?>

<div class="panel">
    <table class="table table-striped title1">
        <tr>
            <td style="vertical-align:middle"><b>S.N.</b></td>
            <td style="vertical-align:middle"><b>Topic</b></td>
            <td style="vertical-align:middle"><b>Total question</b></td>
            <td style="vertical-align:middle"><b>Marks</b></td>
            <td style="vertical-align:middle"><b>Time limit</b></td>
            <td style="vertical-align:middle"><b>Action</b></td>
        </tr>
<?php
$c = 1;
while ($row = mysqli_fetch_array($result)) {
    $title   = $row['title'];
    $total   = $row['total'];
    $correct = $row['correct'];
    $time    = $row['time'];
    $eid     = $row['eid'];

    ?>

    <tr>
    <td style="vertical-align:middle"><?php echo $c++; ?></td>
    <td style="vertical-align:middle"><?php echo $title; ?></td>
    <td style="vertical-align:middle"><?php echo $total; ?></td>
    <td style="vertical-align:middle"><?php echo $correct * $total; ?></td>
    <td style="vertical-align:middle"><?php echo $time; ?>&nbsp;min</td>
    <td style="vertical-align:middle"><b><a href="subject-wise-result.php?q=10&subject=<?php echo $eid; ?>" class="btn btn-success"><span class="title1"><b>View</b></span>
        </a>
        </b>
    </td>
</tr>
<?php
}
$c = 0;
echo '</table></div>';


