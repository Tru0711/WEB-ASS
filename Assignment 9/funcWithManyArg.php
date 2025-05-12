<?php
  function MulOfAllNumbers(...$x){
    $Mul = 1;
    for($i = 0;$i<count($x);$i++){
        $Mul = $Mul * $x[$i];
    }
    return $Mul;
  }
  $result = MulOfAllNumbers(2,3,4,1,2);
  echo "Multiplication of all numbners : ".$result;
?>