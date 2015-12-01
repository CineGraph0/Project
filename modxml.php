<?php

/*
 * PHP SimpleXML
 * Loading a XML from a file, adding new elements and editing elements
 */
//get author from form
$type = $_POST["type"];
$name = $_POST["name"];
$ram = $_POST["ram"];
$price = $_POST["type"];


if (file_exists('product.xml')) {
    //loads the xml and returns a simplexml object
    $xml = simplexml_load_file('product.xml');

    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    echo '<u><b>This is the xml code from test2.xml:</b></u>
     <br /><br />
     <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre><br /><br />';

    //adding new child to the xml
    $newChild = $xml->addChild('secondhand');
    $newChild->addChild('type', $type);
    $newChild->addChild('name', $name);
    $newChild->addChild('ram', $ram);
    $newChild->addChild('price', $price);
  
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    echo '<u><b>This is the xml code from product.xml with new elements added:</b></u>
     <br /><br />
     <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';

    //changing the nodes values
    //in this case we are changing the value 
    //of all children called <name>
    foreach ($xml->children() as $child)
        $child->type = "CHANGED";
        $child->name = "CHANGED";
        $child->ram = "CHANGED";
        $child->price = "CHANGED";
    //displaying the element in proper format
   echo '<br /><u><b>This is the xml code from books.xml with all genre changed:</b></u>
    <br /><br />
    <pre>' . htmlentities($xml->asXML(), ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';
} else {
    exit('Failed to open product.xml.');
}
    file_put_contents('/ide.c9.io/x14503387/project/product.xml', $xml->asXML());
?>
