<?php
include ("path.php");
$query = $_GET["query"];
$username = $_GET["username"];
function search_value($row2, $row) {
    foreach ($row2 as $var) {
        //echo "in ".$var["name"];
        //echo $var["name"];
        if ($var["name"] == $row["name"]) return true;
    }
    return false;
}
function get_shows_watched() {
    include ("reload_disk.php");
    include ("path.php");
    include ("reload_shows_watched.php");
    include ("db.php");
    $username = $_GET["username"];
    $sql = "SELECT * FROM modak_flix.file_system WHERE category='Movies 'ORDER BY NAME";
    $result = $con->query($sql);
    $rows = array();
    $names = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $names[] = $row['name'];
        }
    } else {
        echo "0 results from shows_watched</br>";
    }
    $sql = "SELECT * FROM modak_flix.shows_watched WHERE username=\"" . $username . "\" order by serial DESC";
    $result = $con->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            if (in_array($row["name"], $names)) {
                $rows[] = $row;
            }
        }
    } else {
        // echo "0 results from shows_watched</br>";
        
    }
    return $rows;
}
if ($query !== "") {
    $rows1 = array();
    $rows2 = array();
    $rows = array();
    $rows = get_shows_watched();
    include ("db.php");
    $sql = "SELECT * FROM modak_flix.file_system WHERE name like \"%" . $query . "%\" order by name";
    $result = $con->query($sql);
    $rows = array();
    if ($result->num_rows > 0) {
        // output data of each row
        while ($row = $result->fetch_assoc()) {
            if (!search_value($rows1, $row)) $rows2[] = $row;
        }
        $rows = array_merge($rows1, $rows2);
        sort($rows);
        echo '{"cards":' . json_encode($rows) . "}";
    }
}
?>
