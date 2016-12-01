<?php

include_once ("functions.php");
$userId = $_POST['id'];
/* likeuser ajax call */

session_start();

#1 check back if the user has been already back liked

likeUser($username, $userId);

$likedUsersName = getUserById($userId);

$result = array('status' => 'success', 'username' => $username, 'likedusersname' => $likedUsersName );

echo json_encode($result);

?>
