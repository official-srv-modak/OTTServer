<?php
$username = $_GET["username"];
$show = $_GET["show"];

include("db.php");
$sql = "delete from shows_watched where username=\"" . $username . "\" and name=\"" . $show . "\"";
$result = $con->query($sql);

if ($result == 1)
{
    //echo "<h1>Refresh successful</h1>";
    
}
else
{
    echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
}
include("reload_shows_watched");

?>
