<?php 

// $_SERVER['DOCUMENT_ROOT'] .'/../../../../Volumes/SOURAV/Movies/.meh';
// php file to check if the directory is present
// AUTHOR - SOURAV MODAK
// 27 DEC 2020
// INDIA


function check()
{
	$file = fopen("path_movies.txt","r");

	while(! feof($file))
  	{
  		$dir = fgets($file);
  		$dir = trim(preg_replace('/\s\s+/', '', $dir));
  		//echo $dir. "<br />";
  		if ( !file_exists($dir) ) 
  		{
     		echo "No such directory ".$dir. "<br />";
     		return false;
 		}
 		
  	}

	fclose($file);

	$file = fopen("path_tv.txt","r");

	while(! feof($file))
  	{
  		$dir = fgets($file);
  		$dir = trim(preg_replace('/\s\s+/', '', $dir));
  		//echo $dir. "<br />";
  		if ( !file_exists($dir) ) 
  		{
     		echo "No such directory ".$dir. "<br />";
     		return false;
 		}
 		
  	}

	fclose($file);
	return true;
}

?>