<!DOCTYPE html>
<html>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <head>
   <link rel="stylesheet" href="styles.css">
      <?php
         include('db.php');
         
         if(isset($_GET['id']))
         {
             $id = $_GET['id'];
         
             $sql = "select path from file_system where id = '$id'";
         
             $res = mysqli_query($con, $sql);
             $row = mysqli_fetch_assoc($res);
         
             $path = $row['path'];
		     
         ?>
        <?php 
         }
         ?>
      <video class="center" controls id="video" >
         <source src = "<?php echo $path; ?>" type="video/mp4">
		 <track src="<?php echo $name.".srt"; ?>" kind="subtitle" srclang="en-US" label="English" />
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