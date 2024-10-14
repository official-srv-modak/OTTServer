<?php
include("check_path.php"); // to check if the file is present or not

function starts_with($string, $startString)
	{
		$len = strlen($startString); 
		return (substr($string, 0, $len) === $startString); 
	}
function to_db($store_name, $category, $path, $ids, $mode)
	{
		if($mode === "append")
		{
			include("db.php"); 
			$sql = "INSERT INTO new_changes (name, path, category, language) VALUES ('$store_name', '$path', '$category', 'Hindi')";
        	$res = mysqli_query($con, $sql);

        	if ($res == 1)
        	{
            	//echo "<h1>Refresh successful</h1>";
        	}
        	else
        	{	
            	echo "<p>" . mysqli_error($con) . "</p>";
        	}
		}
		if($mode === "delete")
		{
			include("db.php"); 
			$sql = "DELETE FROM new_changes WHERE name='$store_name' AND category='$category'";
        	$res = mysqli_query($con, $sql);

        	if ($res == 1)
        	{
            	//echo "<h1>Refresh successful</h1>";
        	}
        	else
        	{	
            	echo "<p>" . mysqli_error($con) . "</p>";
        	}
        }
        
	}

    function get_directory($path_to_folder)
	{
		$output = array();
		$i = 0;
		if ($handle = opendir($path_to_folder)) {

			while (false !== ($entry = readdir($handle))) {
		
				if ($entry != "." && $entry != ".." && !starts_with($entry, "._") && !starts_with($entry, ".")) {
		
					$output[$i++] = $entry;
				}
			}
		
			closedir($handle);
		}
		return $output;
	}

    function get_movies_path()
    {
		include("path.php"); 
        $file = fopen($path_movies, "r");
		$dir = "";
        while (!feof($file))
        {
            $dir = fgets($file);
            $dir = trim(preg_replace('/\s\s+/', '', $dir));
            //echo $dir. "<br />";
            if (!file_exists($dir))
            {
                echo "No such directory " . $dir . "<br />";
                return false;
            }

		}
		fclose($file);
		return $dir;
	}

	function get_tv_path()
    {
		include("path.php"); 
        $file = fopen($path_tv, "r");
		$dir = "";
        while (!feof($file))
        {
            $dir = fgets($file);
            $dir = trim(preg_replace('/\s\s+/', '', $dir));
            //echo $dir. "<br />";
            if (!file_exists($dir))
            {
                echo "No such directory " . $dir . "<br />";
                return false;
            }

		}
		fclose($file);
		return $dir;
    }
include("db.php");
$movies_list_from_db = array();
$movies_id_from_db = array();
$i = 0;
$sql = "SELECT * FROM modak_flix.file_system WHERE category='Movies'";
$result = $con->query($sql);

if ($result->num_rows > 0)
{
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
        $movies_id_from_db[$i] = $row["id"];
        $movies_list_from_db[$i++] = $row["name"];
    }
}
else
{
    //echo "0 results from Movies</br>";
}

$tv_list_from_db = array();
$tv_id_from_db = array();
$i = 0;
$sql = "SELECT * FROM modak_flix.file_system WHERE category='TV_Shows'";
$result = $con->query($sql);

if ($result->num_rows > 0)
{
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
        $tv_id_from_db[$i] = $row["id"];
        $tv_list_from_db[$i++] = $row["name"];
    }
}
else
{
    //echo "0 results from TV</br>";
}

$tv_list_from_fs = array();
$movies_list_from_fs = array();

$movies_list_from_fs = get_directory(get_movies_path());
$tv_list_from_fs = get_directory(get_tv_path());


$result=array_diff($movies_list_from_db,$movies_list_from_fs);

foreach($result as $var)
	to_db($var, "Movies", get_movies_path()."/".$var, "", "append");

$result=array_diff($tv_list_from_db,$tv_list_from_fs);

foreach($result as $var)
    to_db($var, "TV_Shows", get_tv_path()."/".$var, "", "append");
    

?>