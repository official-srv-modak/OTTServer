<?php
include("reload_disk.php");
include("path.php"); 
include("reload_shows_watched");

$username = $_GET["username"];
$shows = $_GET["show"];
$pos = $_GET["pos"];
$dur = $_GET["duration"];
$cause = $_GET["cause"];
$name = $_GET["name"];
$aapath = "";
$des = "";


function insert_into($username, $shows, $pos, $aapath, $des, $dur, $cause, $name)
{
    include ("db.php");
    $sql = "select album_art_path, des from modak_flix.file_system where url = \"" . $shows . "\"";
    //echo $sql;
    $result = $con->query($sql);

    if ($result->num_rows > 0)
    {
        // output data of each row
        while ($row = $result->fetch_assoc())
        {
            $aapath = $row["album_art_path"];
            $des = $row["des"];
        }
    }
    else
    {
        echo "0 results from Movies</br>";
    }

    $sql = "INSERT INTO shows_watched (username, url, position, album_art_path, des, duration, cause, name) VALUES (\"" . $username . "\", \"" . $shows . "\", \"" . $pos . "\", \"" . $aapath . "\", \"" . $des . "\",\"".$dur."\",\"".$cause."\",\"".$name."\")";
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
function update($username, $shows, $pos, $aapath, $des, $dur, $cause, $name)
{
    include ("db.php");
    $sql = "select album_art_path, des from modak_flix.file_system where url = \"" . $shows . "\"";
    //echo $sql;
    $result = $con->query($sql);

    if ($result->num_rows > 0)
    {
        // output data of each row
        while ($row = $result->fetch_assoc())
        {
            $aapath = $row["album_art_path"];
            $des = $row["des"];
        }
    }
    else
    {
        echo "0 results from Movies</br>";
    }

    $sql = "delete from modak_flix.shows_watched where name=\"".$name."\" and username=\"".$username."\"";
    $res = mysqli_query($con, $sql);

    if ($res == 1)
    {
        //echo "<h1>Refresh successful</h1>";
        
    }
    else
    {
        echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
    }

    insert_into($username, $shows, $pos, $aapath, $des, $dur, $cause, $name);
    
    /*include ("db.php");
    $sql = "update modak_flix.shows_watched set position = ".$pos.", album_art_path = \"".$aapath."\", des = \"".$des."\", cause = \"".$cause."\", name = \"".$name."\" where url = \"".$shows."\"";
    $res = mysqli_query($con, $sql);

    if ($res == 1)
    {
        //echo "<h1>Refresh successful</h1>";
        
    }
    else
    {
        echo "<p>" . mysqli_error($con) . "</p>" . $sql . "</br";
    }*/
}

include ("db.php");
$sql = "select url from modak_flix.shows_watched where url = \"" . $shows . "\"";
//echo $sql;
$result = $con->query($sql);

if ($result->num_rows > 0)
{
    // output data of each row
    update($username, $shows, $pos, $aapath, $des, $dur, $cause, $name);
}
else
{
    insert_into($username, $shows, $pos, $aapath, $des, $dur, $cause, $name);
}

?>
