<?php
include("reload_disk.php");
include("path.php");
include("reload_shows_watched");

$con = mysqli_connect("localhost", "root", "", "modak_flix");


$username = $_GET["username"];
$sql = "SELECT * FROM modak_flix.shows_watched WHERE username=\"" . $username . "\" order by serial DESC";
$result = $con->query($sql);
$rows = array();
if ($result->num_rows > 0)
{
    while ($row = $result->fetch_assoc())
    {
        $rows[] = $row;
    }
}
else
{
    echo "0 results from shows_watched</br>";
}

echo '{"cards":' . json_encode($rows) . "}";
?>
