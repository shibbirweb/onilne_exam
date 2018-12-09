<div class="panel">
    <div class="panel-heading text-center">Currently online users</div>
    <div class="panel-body">
    <table class="table table-striped table-hover title1">

        <tr>
            <td style="vertical-align:middle"><b>S.N.</b></td>
            <td style="vertical-align:middle"><b>Name</b></td>
            <td style="vertical-align:middle"><b>Gender</b></td>
            <td style="vertical-align:middle"><b>Branch</b></td>
            <td style="vertical-align:middle"><b>Roll No</b></td>
            <td style="vertical-align:middle"><b>Phone Number</b></td>
            <td style="vertical-align:middle" class="text-center"><b>Action</b></td>
        </tr>
        <?php
        $online_time = ONLINE_TIME;
        $qurey = "SELECT user_id FROM online WHERE last_time_seen > DATE_SUB(NOW(), INTERVAL $online_time MINUTE)";
        $result = query($qurey,MULTIPLE_RETURN);
        if (mysqli_num_rows($result) > 0){
            $serial = 1;
            while ($single = mysqli_fetch_assoc($result)){
                $user_id = $single['user_id'];
                //debug($user_id);
                $qurey = "SELECT * FROM user WHERE id = '$user_id'";
                $single_user = query($qurey,SINGLE_RETURN);
                //debug($single_user);
                ?>
        <tr>
            <td style="vertical-align:middle"><?php echo $serial++; ?></td>
            <td style="vertical-align:middle"><?php echo $single_user['name']; ?></td>
            <td style="vertical-align:middle"><?php echo $single_user['gender']; ?></td>
            <td style="vertical-align:middle"><?php echo $single_user['branch']; ?></td>
            <td style="vertical-align:middle"><?php echo $single_user['rollno']; ?></td>
            <td style="vertical-align:middle"><?php echo $single_user['phno']; ?></td>
            <td style="vertical-align:middle" class="text-center">
                <b>
                    <a href="#" class="btn" style="margin:0px;background:red;color:white">&nbsp<span class="title1"><b>Remove</b></span></a>
                </b>
            </td>
        </tr
                <?php
            }
        }else{
            ?>
            <tr>
                <td colspan="7" align="center">No user currently active</td>
            </tr>
                <?php
        }

        ?>
    </table>
    </div>
</div>