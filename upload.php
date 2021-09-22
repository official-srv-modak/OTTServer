
<?php
include("reload_disk.php");
error_reporting(0);

$viability = check();

if ($viability)
{
?>
    <!DOCTYPE html>
<html>
<head><title>Video Upload</title></head>
<body>
<p>Created by Sourav Modak</p>
    <center>
    <img src="modakflix.png" alt="Modakflix"/>
    <form method="post" action="upload_file.php" enctype="multipart/form-data">
    <p><input type = "file" name = "file"></p>
    <p><input type="radio" id="movie" name="category" value="Movies">
    <label for="movie">Movie</label><br></p>
    <p><input type="radio" id="tv" name="category" value="TV_Shows">
    <label for="tv">TV</label><br></p>
    <p><input type = "submit" name = "upload" value = "UPLOAD"></p>
    </form>
    
<?php
    include("db.php");
    $store_name = "";
    try
    {
        $category = $_POST['category'];
    }

    catch(Exception $e)
    {
        echo "All fields are MANDATORY";
    }

    if (isset($_POST['upload']) && $category)
    {
        $name = $_FILES['file']['name'];
        $tmp = $_FILES['file']['tmp_name'];
        $category = $_POST['category'];

        $file = fopen("path_movies.txt","r");

        $dir_movies = "";
        while(! feof($file))
        {
            $dir_movies = fgets($file);
            //echo $dir_movies;
        }
        fclose($file);

        $file = fopen("path_tv.txt","r");

        $dir_tv = "";
        while(! feof($file))
        {
            $dir_tv = fgets($file);
            //echo $dir_tv;
        }
        fclose($file);

        if ($category == 'Movies') 
        {
            $store_name = explode(".m", $name)[0];
            $dir_movies = $dir_movies. "/". $store_name. "/";
            if (!file_exists($dir_movies)) {
                mkdir($dir_movies, 0777, true);
            }
            move_uploaded_file($tmp, $dir_movies . $name);
        }
        elseif ($category == 'TV_Shows') 
        {
            $store_name = explode(".m", $name)[0];
            $dir_tv = $dir_tv. "/". $store_name. "/";
            if (!file_exists($dir_tv)) {
                mkdir($dir_tv, 0777, true);
            }
            move_uploaded_file($tmp, $dir_tv . $name);
        }

        $sql = "INSERT INTO file_system (name, path, category, language) VALUES ('$store_name', 'Movies/$name', '$category', 'Hindi')";
        $res = mysqli_query($con, $sql);

        if ($res == 1)
        {
            echo "<h1>Successful</h1>";
        }
        else
        {
            echo "<p>" . mysqli_error($con) . "</p";
        }
    }
    else
    {
        echo "All fields are MANDATORY";
    }
}
$con->close();
?>
</center>
</body>
</html>
