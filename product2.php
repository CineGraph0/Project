
<?php

// Load the XML source
$xml = new DOMDocument;
$xml->load('product.xml');
$xsl = new DOMDocument;
$xsl->substituteEntities = true; 
$xsl->load('product.xsl');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);

/*$(document).ready(function(){
	//browser check
	if(window.XMLHttpRequest){
		var xmlReq = new XMLHttpRequest();
	}else{
		xmlReq = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlReq.onreadystatechange = function(){
		if(xmlReq.readyState==4 && xmlReq.status==200){
			document.getElementById("rssfeed").innerHTML=xmlReq.responseText;
		}
	}
	
	xmlReq.open("GET","../getProduct.php", true);
	xmlReq.send();
	});*/
	//http://www.w3schools.com/php/php_ajax_rss_reader.aspSS
?>


