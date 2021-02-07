<?php
include("db.php");
$sql = "select album_art_path, des, name from modak_flix.file_system";
//echo $sql;
$result = $con->query($sql);

if ($result->num_rows > 0)
{
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
        $aapath = $row["album_art_path"];
        $des = $row["des"];
        $name = $row["name"];
        include("db.php");
        $sql = "update modak_flix.shows_watched set album_art_path = \"" . $aapath . "\", des = \"" . $des . "\" where name=\"".$name."\"";
        $res = mysqli_query($con, $sql);

        if ($res == 1)
        {
            //echo "<h1>Refresh successful</h1>";
            
        }
        else
        {
            echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
        }
    }
}
else
{
    echo "0 results from Movies</br>";
}
?>