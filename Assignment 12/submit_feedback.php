<?php
$name = $_GET['name'];
$email = $_GET['email'];
$rating = $_GET['rating'];
$comments = $_GET['comments'];

echo "Feedback Received<br>";
echo "************------------------------*************<br>";
echo "<strong> Name:</strong> " . htmlspecialchars($name) . "<br>";
echo "<strong>Email:</strong> " . htmlspecialchars($email) . "<br>";
echo "<strong>Rating:</strong> " . htmlspecialchars($rating) . "<br>";
echo "<strong>Comments:</strong><br>" . htmlspecialchars($comments) . "<br>";
echo "<br>Thank you for your feedback!<br>";
?>
