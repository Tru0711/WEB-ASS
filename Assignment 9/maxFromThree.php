<?php
   $a = 23;
   $b = 10;
   $c = 99;

   if($a > $b and $a > $c){
    echo "Max is : ".$a;
   }
   else if($b > $c and $b > $a){
    echo "Max is : ".$b;
   }
   else{
    echo "Max is : ".$c;
   }
?>