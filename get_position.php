<?php

$username = $_GET["username"];

include("db.php");
$sql = "select * from shows_watched where username='$username'";
$result = $con->query($sql);
$rows = array();

if ($result->num_rows > 0)
{
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
        $rows[] = $row;
    }
}
else
{
    echo "0 results from Movies</br>";
}

echo '{"show":'.json_encode($rows)."}";
?>