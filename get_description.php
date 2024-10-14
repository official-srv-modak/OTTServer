<?php
include("path.php");
include("reload_disk.php");
include("reload_shows_watched.php");

include("db.php");


$username   = $_GET["username"];
$showname   = $_GET["show"];
$resumeFlag = $_GET["resumeflag"];

if ($resumeFlag == "1") {
    $sql    = "SELECT * FROM modak_flix.shows_watched WHERE username=\"" . $username . "\" and name=\"" . $showname . "\"";
    //echo $sql;
    $result = $con->query($sql);
    $rows   = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $rows[] = $row;
            // echo $row . "</br>";
        }
        
        // echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
        
    } else {
        $sql    = "SELECT * FROM modak_flix.file_system WHERE name=\"" . $showname . "\"";
        //echo $sql;
        $result = $con->query($sql);
        $rows   = array();
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $rows[] = $row;
                // echo $row . "</br>";
            }
            
            // echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
            
        }
    }
    
    echo '{"cards":' . json_encode($rows) . "}";
}
else
{
    $sql    = "SELECT * FROM modak_flix.file_system WHERE name=\"" . $showname . "\"";
    //echo $sql;
    $result = $con->query($sql);
    $rows   = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $rows[] = $row;
            // echo $row . "</br>";
        }
        
        // echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
        
    }
    echo '{"cards":' . json_encode($rows) . "}";
}
?>