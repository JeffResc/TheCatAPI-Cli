#!/usr/bin/php
<?php
$page = file_get_contents("http://thecatapi.com/api/images/get?format=src&results_per_page=1&type=jpg,gif,png&category=none&size=full&sub_id=none");
echo $page;
?>
