<?php
/*
 * Loading a XML from a file, adding new elements and editing elements
 */
ini_set('display_errors', 'On');
error_reporting(E_ALL);
//get entry from form
$type = $_POST["type"];
$name = $_POST["name"];
$ram = $_POST["ram"];
$price = $_POST["price"];
echo $type;

if (file_exists('product.xml')) {
    //loads the xml and returns a simplexml object
    $xml = simplexml_load_file('product.xml');
    //print_r($xml);
    
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //echo htmlentities($xmlFormat);


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
    
    
    $title = $newChild;
    $description = $type+","+$ram+","+$price;
  
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
   // echo htmlentities($xmlFormat);

    //displaying the element in proper format
   echo '<u><b>This is the xml code from product.xml with new elements added:</b></u>
     <br /><br />
     <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';

file_put_contents('product.xml', $xml->saveXML());


} else {
    exit('Failed to open product.xml.'); 
}
file_put_contents('product.xml', $xml->asXML());
    writeRSS();
    function writeRSS(){
    if (file_exists('rss.xml')) {
    //loads the xml and returns a simplexml object
    $rssxml = simplexml_load_file('rss.xml');
    $newChild = $rssxml->channel->addChild('item');
    $newChild->addChild('title', $title);
    $newChild->addChild('link', 'product.xml');
    $newChild->addChild('description', $description);
    file_put_contents('rss.xml', $rssxml->asXML());
}
}
?>