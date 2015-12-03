<?php
/*
* PHP SimpleXML
* Loading a XML from a file, adding new elements and editing elements
*/
//get author from form
$author = $_POST["author"];
$title = $_POST["title"];
if (file_exists('books.xml')) {
//loads the xml and returns a simplexml object
$xml = simplexml_load_file('books.xml');
//adding new child to the xml
$newChild = $xml->addChild('book');
$newChild->addChild('author', $author);
$newChild->addChild('title', $title);
$newChild->addChild('genre', $genre);
$newChild->addChild('price', $price);
$ItemString = $title+","+$description;
} else {
exit('Failed to open books.xml.');
}
file_put_contents('/home/ubuntu/workspace/books.xml', $xml->asXML());
writeRSS();
function writeRSS(){
if (file_exists('rss.xml')) {
//loads the xml and returns a simplexml object
$rssxml = simplexml_load_file('rss.xml');
$newChild = $rssxml->channel->addChild('item');
$newChild->addChild('title', 'New Recipe Added');
$newChild->addChild('link', '/home/ubuntu/workspace/books.xml');
$newChild->addChild('description', $ItemString);
file_put_contents('/home/ubuntu/workspace/rss.xml', $rssxml->asXML());
}
?>