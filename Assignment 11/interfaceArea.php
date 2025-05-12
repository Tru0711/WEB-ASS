<?php
interface Shape {
    public function calculateArea();
    public function calculatePerimeter();
}

class Circle implements Shape {
    public $radius;

    public function __construct($radius) {
        $this->radius = $radius;
    }

    public function calculateArea() {
        return 3.14 * $this->radius * $this->radius;
    }

    public function calculatePerimeter() {
        return 2 * 3.14 * $this->radius;
    }
}

$circle = new Circle(5);

echo "Circle Area: " . $circle->calculateArea() . "<br><br>";
echo "Circle Perimeter: " . $circle->calculatePerimeter() . "<br>";
?>
