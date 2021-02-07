<?php
include("refresh.php");
include("path.php"); 

$con = mysqli_connect("localhost", "root", "", "modak_flix");
$i = 0;
$sql = "SELECT * FROM modak_flix.file_system WHERE category='Movies' ORDER BY name";
$result = $con->query($sql);

if ($result->num_rows > 0)
{
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
        echo $row["name"]."</br>";
    }
}
else
{
    echo "0 results from Movies</br>";
}

?>