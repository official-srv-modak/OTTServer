<?php
  
    $file_path = "subtitles/";
    $file_name = $_FILES['uploaded_file']['name'];
    $file_path = $file_path . basename( $_FILES['uploaded_file']['name']);
    if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $file_path)) {
        echo "http://modakflix.com/subtitles/".$file_name;
    } else{
        echo "fail";
    }
 ?>