<?php
   $arr = array("Radha","Riya","Aaysha","Yamini","Kedar","Radha","Riya");
   print_r($arr);
   echo "<br>";

   echo "<br>------------------------------------------<br>";

   echo "ARRAY COUNT VALUES : ";
   print_r(array_count_values($arr));

   echo "<br>------------------------------------------<br>";

   echo "<br>";
   echo "ARRAY COMBINE : ";
   $a = array("Tushar","Ansh","Sanika","Anuj");
   $b = array(11,12,13,14);
   $val = array_combine($a,$b);
   print_r($val);

   echo "<br>------------------------------------------<br>";

   echo "<br>";
   $c = array("Sanika","Anuj","Sahil","Tushar");
   print_r($a);
   echo "<br>";
   print_r($c);
   $result = array_intersect($a,$c);
   echo "<br> INTERSECT: ";
   print_r($result);

   echo "<br>------------------------------------------<br>";

   echo "<br> DIFFERENCE : ";
   $val1 = array_diff($a,$c);
   print_r($val1);

   echo "<br>------------------------------------------<br>";
   $a1 = array(1,2,3,4,5,6);
   $c1 = array(9,7,65,31);
   print_r($a1); 
   echo "<br>";
   print_r($c1); 
   echo "<br>";
   echo "<br> MERGE : ";
   $val2 = array_merge($a1,$c1);
   print_r($val2);

   echo "<br>------------------------------------------<br>";

   print_r($c);
   $val2 = array_search("Anuj",$c);
   echo "<br> SEARCH OF ANUJ : ";
   echo $val2;

   echo "<br>------------------------------------------<br>";
   
   echo $a1;
   echo "<br> ARRAY REVERSE : ";
   $reversed = array_reverse($a1);
   print_r($reversed);

   echo "<br>------------------------------------------<br>";

   echo $arr;
   echo "<br> ARRAY UNIQUE : ";
   $uniqueArr = array_unique($arr);
   print_r($uniqueArr);

   echo "<br>------------------------------------------<br>";

   echo $a1;
   echo "<br> ARRAY SUM : ";
   $sum = array_sum($a1);
   echo $sum;

   echo "<br>------------------------------------------<br>";

   echo $val;
   echo "<br> ARRAY KEYS (from combine array) : ";
   print_r(array_keys($val));

   echo "<br>------------------------------------------<br>";

   echo $val;
   echo "<br> ARRAY VALUES (from combine array) : ";
   print_r(array_values($val));

   echo "<br>------------------------------------------<br>";
?>
