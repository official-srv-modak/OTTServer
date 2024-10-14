<?php
include("reload_disk.php");
include("path.php");
include("reload_shows_watched");

include("db.php");


$username = $_GET["username"];
$showname = $_GET["show"];

$sql = "SELECT * FROM modak_flix.shows_watched WHERE username=\"" . $username . "\" and name=\"".$showname."\"";
//echo $sql;
$result = $con->query($sql);
$rows = array();
if ($result->num_rows > 0)
{
    while ($row = $result->fetch_assoc())
    {
        $rows[] = $row;
       // echo $row . "</br>";
    }
    
           // echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
        
}
else
{
    //echo "0 results from shows_watched</br>";
}

echo '{"cards":' . json_encode($rows) . "}";
?>
