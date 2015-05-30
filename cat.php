#!/usr/bin/php
<?php
echo str_replace("\">", "", str_replace("<img src=\"", "", strip_tags(file_get_contents('http://thecatapi.com/api/images/get?format=html'), '<img></img>')));
?>
