<?php
include("reload_disk.php");
include("path.php");
include("reload_shows_watched");

include("db.php");


$username = $_GET["username"];
$sql = "DELETE FROM modak_flix.shows_watched WHERE username=\"" . $username . "\"";
$res = mysqli_query($con, $sql);

if ($res == 1)
{
    //echo "<h1>Refresh successful</h1>";
}
else
{	
   	echo "<p>" . mysqli_error($con) . "</p>".$sql."</br";
}
?>
