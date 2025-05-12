<?php
  class ProductInventory{
    public $ProductName;
    public $Price;
    public $Quantity;

    function __construct($ProductName,$Price,$Quantity){
        $this->ProductName = $ProductName;
        $this->Price = $Price;
        $this->Quantity = $Quantity;
        echo "product `$this->ProductName` added to inventory <br>";
    }
    function display(){
        echo "<br>---CONSTRUCTOR CALLED---<br>";
        echo "Product Name: " . $this->ProductName . "<br>";
        echo "Price: " . $this->Price . "<br>";
        echo "Quantity in Stock: " . $this->Quantity . "<br>";
    }
    function __destruct(){
        echo "<br>---DESTRUCTOR CALLED---<br>";
        echo "product `$this->ProductName` removed successfully from inventory";
    }
  }
  $pro = new ProductInventory("Charger", 999 , 15);
  $pro->display();
  
  
?>