<?php
// 1. Creating an indexed array
$fruits = array("Apple", "Banana", "Cherry", "Date");

// 2. Displaying the array
echo "Fruits in the array:<br>";
foreach ($fruits as $fruit) {
    echo $fruit . "<br>";
}

// 3. Adding an element to the array
$fruits[] = "Elderberry";
echo "<br>After adding an element:<br>";
foreach ($fruits as $fruit) {
    echo $fruit . "<br>";
}

// 4. Removing an element from the array
unset($fruits[1]); // Removes "Banana"
echo "<br>After removing an element:<br>";
foreach ($fruits as $fruit) {
    echo $fruit . "<br>";
}

// 5. Creating an associative array
$colors = array(
    "red" => "#FF0000",
    "green" => "#00FF00",
    "blue" => "#0000FF"
);

// 6. Displaying the associative array
echo "<br>Colors and their hex values:<br>";
foreach ($colors as $color => $hex) {
    echo "$color: $hex<br>";
}

// 7. Accessing a specific value
echo "<br>The hex value of green is: " . $colors["green"] . "<br>";
?>
