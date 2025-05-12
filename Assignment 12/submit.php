<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fullname = $_POST['fullname'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $gender = $_POST['gender'];
    $mobile = $_POST['mobile'];
    $dob = $_POST['dob'];
    $country = $_POST['country'];
    $address = $_POST['address'];
    $terms = isset($_POST['terms']) ? "Agreed" : "Not Agreed";

    echo "<h2>Form Submission Received</h2>";
    echo "Full Name: $fullname<br>";
    echo "Username: $username<br>";
    echo "Email: $email<br>";
    echo "Gender: $gender<br>";
    echo "Mobile: $mobile<br>";
    echo "Date of Birth: $dob<br>";
    echo "Country: $country<br>";
    echo "Address: $address<br>";
    echo "Terms: $terms<br>";
} else {
    echo "Invalid Request";
}
?>
