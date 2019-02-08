<?php

$result = mysqli_query($con, "SELECT * FROM user") or die('Error');
?>
<div class="panel">
    <table class="table table-striped title1">
        <tr>
            <td style="vertical-align:middle"><b>S.N.</b></td>
            <td style="vertical-align:middle"><b>Name</b></td>
            <td style="vertical-align:middle"><b>Gender</b></td>
            <td style="vertical-align:middle"><b>Rollno</b></td>
            <td style="vertical-align:middle"><b>Branch</b></td>
            <td style="vertical-align:middle"><b>Username</b></td>
            <td style="vertical-align:middle"><b>Phno</b></td>
            <td style="vertical-align:middle"><b>History</b></td>
            <td style="vertical-align:middle"><b>Eligible For Exam</b></td>
            <td style="vertical-align:middle"><b>Action</b></td>
        </tr>
<?php
$c = 1;
while ($row = mysqli_fetch_array($result)) {
    $id        = $row['id'];
    $name      = $row['name'];
    $phno      = $row['phno'];
    $gender    = $row['gender'];
    $rollno    = $row['rollno'];
    $branch    = $row['branch'];
    $username1 = $row['username'];
    $exam_status    = $row['status'];

    ?>
    <tr>
    <td style="vertical-align:middle"><?php echo $c++; ?></td>
    <td style="vertical-align:middle"><?php echo $name; ?></td>
    <td style="vertical-align:middle"><?php echo $gender; ?></td>
    <td style="vertical-align:middle"><?php echo $rollno; ?></td>
    <td style="vertical-align:middle"><?php echo $branch; ?></td>
    <td style="vertical-align:middle"><?php echo $username1; ?></td>
    <td style="vertical-align:middle"><?php echo $phno; ?></td>
    <td style="vertical-align:middle"><a class="btn btn-info btn-sm" href="individual-history.php?username=<?php echo $username1; ?>&q=10">View</a></td>
    <td style="vertical-align:middle">
        <?php
        if($exam_status == 1){ ?>
            <span title="Yes" class="label label-success"><i class="glyphicon glyphicon-ok"> Yes</i></span>
            <a onclick="document.getElementById('change_exam_status_<?php echo $id; ?>').submit();" href="#" class="label label-danger">Change</a>
            <form method="post" action="process.php" id="change_exam_status_<?php echo $id; ?>">
                <input type="hidden" name="user-id-to-status-disable" value="<?php echo $id; ?>"/>
            </form>
        <?php }else{ ?>
            <span title="No" class="label label-danger"><i class="glyphicon glyphicon-remove"> No</i></span>
            <a onclick="document.getElementById('change_exam_status_<?php echo $id; ?>').submit();" href="#" class="label label-success">Change</a>
            <form method="post" action="process.php" id="change_exam_status_<?php echo $id; ?>">
                <input type="hidden" name="user-id-to-status-enable" value="<?php echo $id; ?>"/>
            </form>
        <?php } ?>
    </td>
    <td>
        <a class="btn btn-sm btn-danger" onclick="return confirm('Are you sure want to delete this?');" title="Delete User" href="update.php?dusername=<?php echo $username1; ?>"><b><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></b></a>
    </td>
    </tr>
    <?php
}
$c = 0;
echo '</table></div>';
