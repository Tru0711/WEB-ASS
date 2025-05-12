<?php
class Fruit {
  public $name;
  public $color;
  
  public function __construct($name, $color) {
    $this->name = $name;
    $this->color = $color;
  }

  public function intro() {
    echo "The fruit is {$this->name} and the color is {$this->color}.<br><br>";
  }
}

class Strawberry extends Fruit {
  public function message() {
    echo "Strawberries are delicious, but are they really a berry? Let's find out!<br>";
  }
}

class Apple extends Fruit {
  public function message() {
    echo "Apples are one of the most popular fruits in the world.<br>";
  }
}

$strawberry = new Strawberry("Strawberry", "red");
$apple = new Apple("Apple", "green");


$strawberry->message();
$strawberry->intro();

$apple->message();
$apple->intro();


?>
