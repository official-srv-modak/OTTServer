<!DOCTYPE html>
<html>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <head>
   <link rel="stylesheet" href="styles.css">
      <?php
         
        $path = $_GET['path'];
        $type = $_GET['type'];
         
         ?>
        
      <video class="center" controls id="video" width = 1280 height = 720 >
         <source src = "<?php echo $path; ?>" type="<?php echo $type; ?>">
      </video>
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
           else
             document.write("Some error")
         }
         window.onload = openFullscreen;
      </script>
   </head>
   <body onload="openFullscreen()">
      <p><button class = "center" onclick="openFullscreen();">Open Video in Fullscreen Mode</button></p>
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