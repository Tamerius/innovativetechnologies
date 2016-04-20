<?php
	// New data
    $newTheme = isset($_GET["theme"]) ? $_GET["theme"] : 1;
    $newColor = isset($_GET["color"]) ? $_GET["color"] : "255, 0, 0";

    // Fetch the file
    $filename = "mySensorData.txt";
    $handle = fopen($filename, "r");
    $content = fread($handle, filesize($filename) > 0 ? filesize($filename) : 1);
    
    // Read the current values
    $variables = explode(",", $content); // Comma separated array of variables

    // Update the text file
    file_put_contents($filename, $newTheme);
    