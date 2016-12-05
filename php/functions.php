<?php

session_start();
//session_destroy();
$username = 'Richard Zilahi';

include_once("MySQL.php");

MySQL::connect();

function checkBackLike ($me, $otherUser) {

    $otherUserName = getUserById($otherUser);
    $myId = getUserIdByName($me);
    $result = MySQL::countLikes('matches','who', $otherUserName, 'whom', $myId);

    return $result;

}

function getUserIdByName ($name) {
    $getUsersNameSql = "SELECT * FROM `users` WHERE `name`='$name' ";
    $rows = MySQL::getRows($getUsersNameSql);
    $firstRow = $rows[0];

    $userId = $firstRow->id;

    return $userId;
}

function likeUser ($me, $otherUser) {

    //$usersName = getUserById($userid);

    $array = array(
    "who" => $me,
    "whom" => $otherUser,
    );

    MySQL::insertWithKeys('matches', $array);
}

function getUserById ($id) {
    $getUsersNameSql = "SELECT * FROM `users` WHERE `id`='$id' ";
    $rows = MySQL::getRows($getUsersNameSql);
    $firstRow = $rows[0];

    $usersName = $firstRow->name;

    return $usersName;

}

function haveLiked ($id) {
    $haveIlikedAlreadySql = "SELECT * FROM `matches` WHERE `who`='Richard Zilahi' AND `whom`='$id' ";
    $rows = MySQL::getRows($haveIlikedAlreadySql);
    $firstRow = $rows[0];

    if (isset($firstRow)) {
        $result = array('status' => "i have liked", 'thumbs-up-class' => 'hidden', 'row-class' => 'bg-success' );
    } else {
        $result = "i have not";
    }

    return $result;
}

function getAllUsername ($username) {
    $getAllUsersSql = "SELECT * FROM `users` ORDER BY `id` ASC ";
    $rows = MySQL::getRows($getAllUsersSql);

    $counter = 0;

    foreach ($rows as $row ) {

        //echo $id;

        $counter = $counter+1;

        $id = $row->id;
        $name = $row->name;
        $city = $row->city;
        $email = $row->email;
        $phone = $row->phone;
        $haveIlikedAlready = haveLiked($id);

        echo '
        <tr class='.$haveIlikedAlready['row-class'].'>
            <td>'.$id.'</td>
            <td>'.$name.'</td>
            <td>'.$city.'</td>
            <td>'.$email.'</td>
            <td>'.$phone.'</td>
            <td>
                <i class="matchbutton fa fa-thumbs-up '.$haveIlikedAlready['thumbs-up-class'].'" data-id="'.$id.'" aria-hidden="true"></i>
            </td>
        </tr>
        ';

    }
}

?>
