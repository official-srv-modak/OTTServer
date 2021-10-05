<?php
include("check_path.php"); // to check if the file is present or not
include("path.php"); 
error_reporting(0);
	
$viability = check();

if ($viability)
{
	function get_folder_name($path_to_directory)
	{
		$p = $path_to_directory;
        $p1 = explode("/", $p);
        return str_replace("/","",$p1[sizeof($p1)-2]);
	}

	function endsWith( $haystack, $needle ) {
    	$length = strlen( $needle );
    	if( !$length ) 
    	{
        	return true;
    	}
    	return substr( $haystack, -$length ) === $needle;
	}

	function get_playable_path_file($directory_path, $show_flag, $server_uri)
	{
		$output = "";
		if ($show_flag === "movie")
		{
			if(is_dir($directory_path))
			{
				$file_list = get_directory($directory_path);
				foreach ($file_list as $var) {
					if(endsWith($var, ".mp4") || endsWith($var, ".mkv") || endsWith($var, ".avi"))
					{
						$output = $server_uri.get_movies_path().get_folder_name($directory_path)."/". $var;
						return $output;
					}
				}
			}
		}

		
	}
	function to_db($store_name, $category, $path, $desc, $aa_path, $url, $mode)
	{
		if($mode === "append")
		{
			include("db.php");
			$desc = str_replace("\"","'",$desc);
			$desc = iconv("ISO-8859-1", "UTF-8", $desc);
			$sql = "INSERT INTO file_system (name, path, category, des, album_art_path, language, url) VALUES (\"".$store_name."\", \"".$path."\", \"".$category."\", \"".$desc."\", \"".$aa_path."\", 'Hindi', \"".$url."\")";
        	$res = mysqli_query($con, $sql);

        	if ($res == 1)
        	{
            	//echo "<h1>Refresh successful</h1>";
        	}
        	else
        	{	
            	echo "<p>" . mysqli_error($con) . "</p>".$sql."</br";
				echo "<p>" . $con->connect_error . "</p></br";
        	}
		}
		if($mode === "delete")
		{
			include("db.php"); 
			$sql = "DELETE FROM file_system WHERE name='$store_name' AND category='$category'";
        	$res = mysqli_query($con, $sql);

        	if ($res == 1)
        	{
            	//echo "<h1>Refresh successful</h1>";
        	}
        	else
        	{	
            	//echo "<p>" . mysqli_error($con) . "</p>";
        	}
		}
	}
	
	function starts_with($string, $startString)
	{
		$len = strlen($startString); 
		return (substr($string, 0, $len) === $startString); 
	}

	function get_file_name($path_to_folder)
	{
		$output = array();
		$i = 0;
		if ($handle = opendir($path_to_folder)) {

			while (false !== ($entry = readdir($handle))) {
		
				if ($entry != "." && $entry != ".." && !starts_with($entry, "._") && !starts_with($entry, ".") && strpos($entry, '.m')) {
					return $entry;
				}
			}
		}

	}
	
	function get_description($path_to_folder)
	{
		$path_to_folder .= "/"."description.txt";
		if (file_exists($path_to_folder))
		{
			$myfile = fopen($path_to_folder, "r") or die("Unable to open file!");
			$output = fread($myfile,filesize($path_to_folder));
			fclose($myfile);
			return $output;
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

	function get_cached_images_path()
    {
		include("path.php"); 
        $file = fopen($path_cached_images, "r");
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

	function handle_aa($path_to_file, $content_name)
	{
		include("path.php");
		$cached_images_path = get_cached_images_path();
		//echo $path_to_file."</br>";
		if (file_exists($path_to_file))
		{
			include("path.php");
			$source_path = $path_to_file;
			$destination_path = $cached_images_path . $content_name . "_album_art.jpg";
			copy($source_path, $destination_path);
			//echo $path_cached_images_ip . $content_name . "_album_art.jpg"."</br>";
			return $path_cached_images_ip . $content_name . "_album_art.jpg";
		}
		else
			return "";
	}
}

include("db.php");
$sql = "DROP TABLE modak_flix.file_system";
$result = $con->query($sql);

$sql = "CREATE TABLE `modak_flix`.`file_system` ( `id` INT NOT NULL AUTO_INCREMENT , `name` LONGTEXT NOT NULL , `category` VARCHAR(20) NOT NULL , `path` LONGTEXT NOT NULL , `language` VARCHAR(20) NOT NULL , `des` LONGTEXT NOT NULL , `album_art_path` LONGTEXT NOT NULL, `url` LONGTEXT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB AUTO_INCREMENT=100";
$result = $con->query($sql);


$movies_list_from_db = array();
$i = 0;
$sql = "SELECT * FROM modak_flix.file_system WHERE category='Movies'";
$result = $con->query($sql);

if ($result->num_rows > 0)
{
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
        $movies_list_from_db[$i++] = $row["name"];
    }
}
else
{
    //echo "0 results from Movies</br>";
}

$tv_list_from_db = array();
$i = 0;
$sql = "SELECT * FROM modak_flix.file_system WHERE category='TV_Shows'";
$result = $con->query($sql);

if ($result->num_rows > 0)
{
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
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

$result=array_diff($movies_list_from_fs,$movies_list_from_db);

foreach($result as $var)
	{
		include("path.php");
		$description = get_description(get_movies_path().$var);
		$aa_path = handle_aa(get_movies_path().$var."/"."album_art.jpg", $var);
		$url = get_playable_path_file(get_movies_path().$var."/", "movie", $path_server);
		//echo $url."</br>";
		//$aa_path_temp = explode("/", get_movies_path());
		//$aa_path = end($aa_path_temp)."/".$var."/"."album_art.jpg";
		to_db($var, "Movies", get_movies_path().$var, $description, $aa_path, $url, "append");
	}


$result=array_diff($tv_list_from_fs,$tv_list_from_db);

foreach($result as $var)
	{
		include("path.php");
		$description = get_description(get_tv_path().$var);
		$aa_path = handle_aa(get_tv_path().$var."/"."album_art.jpg", $var);
		$url = get_playable_path_file(get_tv_path().$var."/", "tv", $path_server);
		//$aa_path_temp = explode("/", get_tv_path());
		//$aa_path = end($aa_path_temp)."/".$var."/"."album_art.jpg";
		to_db($var, "TV_Shows", get_tv_path().$var, $description, $aa_path, $url, "append");
	}

$result=array_diff($movies_list_from_db,$movies_list_from_fs);

foreach($result as $var)
	to_db($var, "Movies", get_movies_path().$var, "", "", "", "delete");

$result=array_diff($tv_list_from_db,$tv_list_from_fs);

foreach($result as $var)
	to_db($var, "TV_Shows", get_tv_path().$var, "", "", "", "delete");


$con->close();

include("reload_shows_watched.php");

?>
