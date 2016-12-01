<?php

include_once ("functions.php");
$userId = $_POST['id'];
/* likeuser ajax call */

#1 check back if the user has been already back liked

likeUser($username, $userId);

echo json_encode("success");

?>
