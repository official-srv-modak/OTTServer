<?php
$movie = $_GET["movie"];
$language = $_GET["language"];
$command = escapeshellcmd('python3 /Applications/XAMPP/xamppfiles/htdocs/Modak_flix/search_imdb.py '.$movie.' '.$language);
$output = shell_exec($command." 2>&1");
echo $output; 
?>