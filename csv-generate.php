<?php
require_once 'dbConnection.php';
require_once 'lib/functions.php';

$eid = $_GET['eid'];

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

$csv_result = array(
    array('Name', 'Marks'),
);

while ($data = mysqli_fetch_assoc($all_results)) {
    $exam_username = $data['username'];
    $name_sql = "SELECT name FROM user where username='$exam_username'";
    $name_result = query($name_sql, SINGLE_RETURN);

    $name = $name_result['name'];
    $score = $data['score'];
    $new_row = array($name, $score);
    array_push($csv_result, $new_row);

}

$exam_name_slug = strtolower(str_replace(' ','-',$exam_name));
$save_file_name = $exam_name_slug.'-'.time().'.csv';

array_to_csv_download($csv_result, $save_file_name);


function array_to_csv_download($array, $filename = "export.csv", $delimiter=",") {
    // open raw memory as file so no temp files needed, you might run out of memory though
    $f = fopen('php://memory', 'w');
    // loop over the input array
    foreach ($array as $line) {
        // generate csv lines from the inner arrays
        fputcsv($f, $line, $delimiter);
    }
    // reset the file pointer to the start of the file
    fseek($f, 0);
    // tell the browser it's going to be a csv file
    header('Content-Type: application/csv');
    // tell the browser we want to save it instead of displaying it
    header('Content-Disposition: attachment; filename="'.$filename.'";');
    // make php send the generated csv lines to the browser
    fpassthru($f);
}

