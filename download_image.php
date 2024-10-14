<?php

$url = $_GET["url"];
$img = $_GET["directory"];
$img = $img.'/album_art.jpg';
file_put_contents($img, file_get_contents($url));
?>