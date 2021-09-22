<?php

function startsWith ($string, $startString)
{
    $len = strlen($startString);
    return (substr($string, 0, $len) === $startString);
}

  $fileName = $_GET["file_name"];
  $file = 'resources/'; //not public folder
  $fileName = scandir($file);
  foreach($fileName as $val)
  {
	  
	  if(startsWith($val, "ModakFlix"))
	  {
		  
		$file = $file . $val;
	  }
  }
if (file_exists($file)) {
    header('Content-Description: File Transfer');
    header('Content-Type: application/vnd.android.package-archive');
    header('Content-Disposition: attachment; filename='.basename($file));
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file));
    ob_clean();
    flush();
    readfile($file);
    exit;
}
?>