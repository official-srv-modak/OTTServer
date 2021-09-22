<?php
include("reload_disk.php");
include("path.php"); 

include("db.php");
$sql = "SELECT * FROM modak_flix.user_info order by serial";
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
    //echo "0 results from Movies</br>";
}

echo '{"cards":'.json_encode($rows)."}";
?>
