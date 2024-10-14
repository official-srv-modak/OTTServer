<?php

include("check_path.php"); // to check if the file is present or not
include("path.php"); 

$viability = check();
if ($viability)
{
    function starts_with($string, $startString)
	{
		$len = strlen($startString); 
		return (substr($string, 0, $len) === $startString); 
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
    function get_playable_file($directory_path)
    {
        $files = get_directory($directory_path);
        $file_name = "";
        $folder_name = "";
        foreach($files as $token)
        {
            if (strpos($token, '.mp4') !== false || strpos($token, '.mkv') !== false || strpos($token, '.avi') !== false)  {
                $file_name = $token;
                $folder_name_temp = explode("/", $directory_path);
                $folder_name = end($folder_name_temp);
                //echo dirname($_SERVER['PHP_SELF']);
                break;
            }
        }
        if($file_name == "")
        {
            echo "$directory_path doesn't contain any recognizable media file";
            return -1;
        }
        else
        {
            $p = get_movies_path();
            $p1 = explode("/", $p);
            //echo $p1[sizeof($p1)-2];
            return dirname($_SERVER['PHP_SELF']) . "/". $p1[sizeof($p1)-2]. "/" . $folder_name . "/". $file_name;
        }
        
    }
$movies_path = get_movies_path();
trim($movies_path, " ");
trim($movies_path, "\n");
$tv_path = get_tv_path();  
include("db.php");
$movies_list_from_db = array();
$playable_file_list = array();
$path_list = array();
$i = 0;
$sql = "SELECT * FROM modak_flix.file_system WHERE category='Movies'";
$result = $con->query($sql);

if ($result->num_rows > 0)
{
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
        $path_list[$i] = $row["path"];
        $playable_file_list[$i] = $row["url"];
        $movies_list_from_db[$i++] = $row["album_art_path"];
    }
}
else
{
    //echo "0 results from Movies</br>";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>BootStream/Movies</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->

<body class="main-layout album-page">
    <!-- loader  -->
    <div class="loader_bg">
        <div class="loader"><img src="images/loading.gif" alt="#" /></div>
    </div>
    <!-- end loader -->
    <!-- header -->
    <header>
        <!-- header inner -->
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col logo_section">
                        <div class="full">
                            <div class="center-desk">
                                <div class="logo">
                                    <a href="/"><img src="images/logo.png" alt="logo" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-8 col-md-10 col-sm-10">
                        <div class="menu-area">
                            <div class="limit-box">
                                <nav class="main-menu">
                                    <ul class="menu-area-main">
                                        <li> <a href="/">Home</a> </li>
                                        <li class="active"> <a href="movies.php">Movies</a> </li>
                                        <li> <a href="tv.php">TV Shows</a> </li>
                                        <li> <a href="download.php">Download android app</a> </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2">
                        <form class="search">
                            <input class="form-control" type="text" placeholder="Search">
                            <button><img class="search-img" src="images/search_icon.png"></button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- end header inner -->
    </header>
    <!-- end header -->

    <div class="Albumsbg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="Albumstitlepage">
                        <h2>Movies</h2>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Albums -->
    <div class="Albums">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">

                        <span>Movies you chose, and we found</span>
                    </div>
                </div>
            </div>
            <div class="row">
            <?php
                //foreach($movies_list_from_db as $var)
                for($iterator = 0; $iterator < sizeof($movies_list_from_db); $iterator++)
                {   
                    $var = $movies_list_from_db[$iterator];
                    $file_path = $playable_file_list[$iterator];
                   // echo $file_path;
                    //$file_path = str_replace(" ", "%", $file_path);
                	if($var)
                	{

            ?>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="<?php echo "play_video.php?path=".$file_path."&type=video/webm"; ?>">
                                <img src="<?php echo $var; ?>">
                            </a>
                            <span class="hoverle">
                        <a href="<?php echo "play_video.php?path=".$file_path."&type=video/webm"; ?>"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
            <?php 
            		}
                }
                ?>
            </div>
        </div>
    </div>
    <!-- end Albums -->

    <!--  footer -->
    <footr>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-12 width">
                        <div class="address">
                            <h3>Contact Us</h3>
                            <ul class="locarion_icon">
                            <li><img class="ft-logo" src="images/logo.png" alt="BootStream icon" /></li>
                                <li><img src="icon/1.png" alt="icon" />Toronto, CA</li>
                                <li><img src="icon/2.png" alt="icon" />(+1437 602 9840 )</li>
                                <li><img src="icon/3.png" alt="icon" />official.srv.modak@gmail.com</li>

                            </ul>


                            <ul class="contant_icon">
                                <li><img src="icon/fb.png" alt="icon" /></li>
                                <li><img src="icon/tw.png" alt="icon" /></li>
                                <li><img src="icon/lin(2).png" alt="icon" /></li>
                                <li><img src="icon/instagram.png" alt="icon" /></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <p>© 2024 All Rights Reserved.</p>
            </div>
        </div>
    </footr>
    <!-- end footer -->
    <!-- Javascript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".fancybox").fancybox({
                openEffect: "none",
                closeEffect: "none"
            });

            $(".zoom").hover(function() {

                $(this).addClass('transition');
            }, function() {

                $(this).removeClass('transition');
            });
        });
    </script>
</body>

</html>
<?php
}

?>