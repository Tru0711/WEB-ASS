<?php
  class student{
    protected $StudentID;
    public $Name;
    public $Div;
    public $RollNo;
    private $PhoneNo;
    public $Gender;

    function stuInfo($StudentID,$Name,$Div,$RollNo,$PhoneNo,$Gender){
     echo "<br> -------- Students Information ------- <br>";
     echo "STUDENT ID : ".$this->StudentID = $StudentID;
     echo "<br>NAME : ".$this->Name = $Name;
     echo "<br>DIVISION : ".$this->Div = $Div;
     echo "<br>ROLL NO : ".$this->RollNo = $RollNo;
     echo "<br>PHONE NO : ".$this->PhoneNo = $PhoneNo;
     echo "<br>GENDER : ".$this->Gender = $Gender;
    }
  }

  $stu = new student();
  $stu->stuInfo("EN222457","Trupti Kandalkar","C",47,7038973992,"female");
?>