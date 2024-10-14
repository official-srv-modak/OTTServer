<!DOCTYPE html>
<html>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <head>
   <script src="includes/videosub-0.9.9.js"></script>
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <link rel="stylesheet" href="styles.css">
      <?php
         
        $path = $_GET['path'];
		
        $type = $_GET['type'];
         $name = preg_split("#/#", $path)[count(preg_split("#/#", $path)) - 1];
		 $folder_path = chop($path, $name);
		 $extension = explode(".", $name)[count(explode(".", $name)) - 1];
		 $name = chop($name,".".$extension);
         ?>
        
      <video class="center" controls id="video" width="640" height="480">
         <source src = "<?php echo $path; ?>" type="video/webm">
      </video>
      <script>
	  src="includes/videosub-0.9.9.js"
         var elem = document.getElementById("video");
         function openFullscreen() {
             if (elem.requestFullscreen) {
           elem.requestFullscreen();
         } else if (elem.mozRequestFullScreen) {
           elem.mozRequestFullScreen();
         } else if (elem.webkitRequestFullscreen) {
           elem.webkitRequestFullscreen();
         } else if (elem.msRequestFullscreen) { 
           elem.msRequestFullscreen();
         }
           else
             document.write("Some error")
         }
         window.onload = openFullscreen;
      </script>
   </head>
   <body onload="openFullscreen()" style="background-color:black;">
      <script>
         var elem = document.getElementById("video");
         function openFullscreen() {
             if (elem.requestFullscreen) {
           elem.requestFullscreen();
         } else if (elem.mozRequestFullScreen) {
           elem.mozRequestFullScreen();
         } else if (elem.webkitRequestFullscreen) {
           elem.webkitRequestFullscreen();
         } else if (elem.msRequestFullscreen) { 
           elem.msRequestFullscreen();
         }
         }
      </script>
   </body>
</html>