<?php

include_once 'header.php';

$eid = $_GET['subject'];

$sql = "SELECT * FROM quiz where eid='$eid'";

$result = query($sql, MULTIPLE_RETURN);

$result = mysqli_fetch_assoc($result);

$exam_name = $result['title'];
$total_questions = $result['total'];
$exam_time = $result['time'];
$correct_answer_mark = $result['correct'];
$wrong_answer_mark = $result['wrong'];

$total_marks = $result['correct'] * $result['total'];


$result_sql = "SELECT * FROM history WHERE eid='$eid' ORDER BY score DESC";

$all_results = query($result_sql, MULTIPLE_RETURN);



?>
    <div class="panel">
        <div class="row"><button class="btn btn-success pull-right" onclick="saveAsPDF();"> <span class="glyphicon glyphicon-cloud-download"></span> Download</button></div>
        <div id="print_area">
            <h1 class="text-center title" style="color:#660033;">Result</h1>
            <div class="text-center">
                <h3>Exam name: <?php echo $exam_name; ?></h3>
                <h3>Time: <?php echo $exam_time; ?> minutes</h3>
                <h3>Total Questions: <?php echo $total_questions; ?> </h3>
                <h3>Correct Question Mark: <?php echo $correct_answer_mark; ?> </h3>
                <h3>Wrong Question Mark: -<?php echo $wrong_answer_mark; ?> </h3>
                <h3>Total Marks: <?php echo $total_marks; ?></h3>
            </div>

            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <table class="table table-striped table-hover title1" style="font-size: 18px">
                        <tr>
                            <th>Name</th>
                            <th>Score</th>
                        </tr>
                        <?php
                        while ($data = mysqli_fetch_assoc($all_results)) {
                            $exam_username = $data['username'];
                            $name_sql = "SELECT name FROM user where username='$exam_username'";
                            $name_result = query($name_sql, SINGLE_RETURN);
                            $name = $name_result['name'];
                            $score = $data['score'];
                            ?>
                            <tr>
                                <td><?php echo $name; ?></td>
                                <td><?php echo $score; ?></td>
                            </tr>
                            <?php
                        }
                        ?>

                    </table>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
    function saveAsPDF() {
        var htmlContent = $('#print_area').html();
        var pdf = new jsPDF('p', 'pt', 'letter');
        source = htmlContent;
        specialElementHandlers = {
            '#bypassme': function(element, renderer){
                return true
            }
        }
        margins = {
            top: 50,
            left: 60,
            width: 545
        };
        pdf.fromHTML(
            source // HTML string or DOM elem ref.
            , margins.left // x coord
            , margins.top // y coord
            , {
                'width': margins.width // max width of content on PDF
                , 'elementHandlers': specialElementHandlers
            },
            function (dispose) {
                // dispose: object with X, Y of the last line add to the PDF
                //          this allow the insertion of new lines after html
                pdf.save('<?php echo $exam_name ?>_result.pdf');
            }
        )
    }
</script>

<?php
include_once 'footer.php';
?>

