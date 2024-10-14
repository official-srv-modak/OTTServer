<?php
include("reload_disk.php");
include("path.php");
include("reload_shows_watched.php");

include("db.php");


$username = $_GET["username"];
$sql = "SELECT * FROM modak_flix.file_system WHERE category='Movies 'ORDER BY NAME";
$result = $con->query($sql);
$rows = array();
$names = array();

if ($result->num_rows > 0)
{
    while ($row = $result->fetch_assoc())
    {
		$names[] = $row['name'];
    }
}
else
{
    echo "0 results from shows_watched</br>";
}

$sql = "SELECT * FROM modak_flix.shows_watched WHERE username=\"" . $username . "\" order by serial DESC";
$result = $con->query($sql);

if ($result->num_rows > 0)
{
    while ($row = $result->fetch_assoc())
    {
		if(in_array($row["name"], $names))
		{
			$rows[] = $row;
		}
    }
}
else
{
   // echo "0 results from shows_watched</br>";
}

//print_r($names);
echo '{"cards":' . json_encode($rows) . "}";
?>
