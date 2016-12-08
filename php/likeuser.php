<?php

include_once ("functions.php");
$userId = $_POST['id'];
/* likeuser ajax call */

session_start();

#1 check back if the user has been already back liked
$checkBackLike = checkBackLike ($username, $userId);

if ($checkBackLike == 0) {
  /*inserts the like into database */
  likeUser($myUserId, $userId);
  $likedUsersName = getUserById($userId);
  // result, if the user has not been liked back
  $result = array('status' => 'liked', 'username' => $username, 'likedusersname' => $likedUsersName );
} else {
  $likedUsersName = getUserById($userId);
  $result = array('status' => 'a match with', 'username' => $username, 'likedusersname' => $likedUsersName );
}

//result if the user has been liked back

//$result = array('status' => 'success', 'username' => $username, 'likedyouback' => true);

echo json_encode($result);

?>
