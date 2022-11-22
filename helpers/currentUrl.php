<?php
function current_url()
{
    $url = "http://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    $replace = str_replace("?", "&", $url);
    $count = strpos($replace, "&");
    $validURL =  str_replace("&", "?", $replace, $count);
    return $validURL;
}