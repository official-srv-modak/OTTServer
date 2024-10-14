<?php
    $server_ip = trim(shell_exec("ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print $2}'"));

    $path_movies = "path_movies.txt";
    $path_tv = "path_tv.txt";
    $path_cached_images = "path_cached_images.txt";
    $path_cached_images_ip = "http://$server_ip/cached_images/";
    $path_server = "http://$server_ip/";
    $path_server_root = "/Applications/XAMPP/xamppfiles/htdocs/";
?>