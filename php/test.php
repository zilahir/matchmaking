<?php

function countLikes($table, $key, $value, $key2, $value2) {
    $query = "SELECT id FROM " . '`'.$table.'`' . " WHERE " . '`'.$key.'`' . "='" . $value . "' AND " . '`' . $key2 .'` ' . '= ' . "'" . $value2 . "'";

    return $query;
}

$result = countLikes('matches','who','Ishmael Rivers','whom','1');

echo $result;


?>
