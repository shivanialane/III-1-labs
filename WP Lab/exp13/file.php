<html>
<head>
    <title> File Operations in PHP </title>
</head>
<body>
<?php    
    $filename = "myfile.txt"; 
    echo "<br>";
    $fp = fopen($filename, "w");//open file in write mode    
    fwrite($fp,'PHP is a Scripting Language');
    echo "Data written successfully..";
    //close file
    fclose($fp);

    echo "<br>";
    $fp = fopen($filename, "a");//open file in write mode    
    fwrite($fp,' at server side');
    echo "Data appended successfully..";
    //close file
    fclose($fp);
    
    echo "<br>";
    //open file in read mode
    $fp = fopen($filename, "r");  
    //read content from the file
    $content = fread($fp, filesize($filename));
    //printing data of file
    echo "<strong>Content in the file :</strong> <br> $content";
    //close file
    fclose($fp);
?>
</body>
</html> 
Footer

