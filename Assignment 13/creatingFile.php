<?php
$file = "demo.txt";
$myfile = fopen("demo.txt","x");
fclose($myfile);
echo "file created";
?>