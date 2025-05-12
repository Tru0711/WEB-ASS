<?php
session_start();

?>

<!DOCTYPE html>
<html>
<head>
    <title>Session Example</title>
</head>
<body>
<?php
      echo "Session User: " . $_SESSION['user'];
      echo "<br>";
      echo "Session Department: " . $_SESSION['department'];
      echo "<br>";
      echo "Session ID: " . $_SESSION['ID'];
?>
</body>
</html>
