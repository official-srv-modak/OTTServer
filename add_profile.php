<?php
//include("reload_disk.php");
include("path.php");
include("reload_shows_watched.php");

include("db.php");

$json = json_decode($_POST["data"]);

$sql = "DELETE FROM modak_flix.user_info";
$res = mysqli_query($con, $sql);

if ($res == 1) {
    //echo "<h1>Refresh successful</h1>";
} else {
    echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
}

$array = $json->cards;
//echo $json->cards;
foreach ($array as $val) {
    //echo $val["username"];
    $username  = $val->username;
    $firstname = $val->first_name;
    $lastname  = $val->last_name;
    $sql       = "INSERT INTO modak_flix.user_info (first_name, last_name, username, Serial) VALUES (\"$firstname\", \"$lastname\", \"$username\", NULL);";
    $res       = mysqli_query($con, $sql);
    
    if ($res == 1) {
        //echo "<h1>Refresh successful</h1>";
    } else {
        echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
    }
}

?>