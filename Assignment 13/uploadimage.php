<?php
if (isset($_FILES["uploadfile"])) {
    $fileName = $_FILES["uploadfile"]["name"];
    $tmpName  = $_FILES["uploadfile"]["tmp_name"];
    

    $uploadDir = "uploads/";
  
    if (file_exists($uploadDir . $fileName)) {
        echo "<h3>The file already exists</h3>";
    } else {
        // Move the uploaded file to the desired directory
        if (move_uploaded_file($tmpName, $uploadDir . $fileName)) {
            echo "<h3>File Successfully Uploaded</h3>";
            echo "<img src='" . $uploadDir . $fileName . "' alt='Uploaded Image' style='max-width:300px; border:1px solid #ccc; padding:5px;'><br>";
        } else {
            echo "<h3>Failed to Upload File</h3>";
        }
    }
}

?>
