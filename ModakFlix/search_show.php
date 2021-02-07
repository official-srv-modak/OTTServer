<?php
include ("path.php");

$query = $_GET["query"];
$username = $_GET["username"];

function search_value($row2, $row)
{
    foreach($row2 as $var)
    {
        //echo "in ".$var["name"];
        //echo $var["name"];
        if($var["name"] == $row["name"])
            return TRUE;
    }
    return FALSE;
}
if ($query !== "")
{
    $con = mysqli_connect("localhost", "root", "", "modak_flix");
    $sql = "SELECT * FROM modak_flix.shows_watched WHERE name like \"%" . $query . "%\" and username=\"".$username."\" order by name";
    $result = $con->query($sql);
    $rows1 = array();
    $rows2 = array();
    $rows = array();
    if ($result->num_rows > 0)
    {
        // output data of each row
        while ($row = $result->fetch_assoc())
        {
            $rows1[] = $row;
        }
        //echo '{"cards":' . json_encode($rows) . "}";
        
    }

    
    $con = mysqli_connect("localhost", "root", "", "modak_flix");
    $sql = "SELECT * FROM modak_flix.file_system WHERE name like \"%" . $query . "%\" order by name";
    $result = $con->query($sql);
    $rows = array();

    if ($result->num_rows > 0)
    {
        // output data of each row
        while ($row = $result->fetch_assoc())
        {
            if(!search_value($rows1, $row))
                $rows2[] = $row;
        }
        $rows = array_merge($rows1,$rows2);
        sort($rows);
        echo '{"cards":' . json_encode($rows) . "}";
    }

}

?>
