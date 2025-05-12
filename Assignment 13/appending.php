<?php
$file = "example.txt";
$content= "Hello World! This is a demo program.\n";
$myfile = fopen($file,"a");
fwrite($myfile,$content);
fclose($myfile);
?>