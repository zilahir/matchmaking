<?php

session_start();
//session_destroy();
$_SESSION['username'] = 'Ishmael Rivers ';
$username = $_SESSION['username'];

//echo $username2;

include_once("MySQL.php");

MySQL::connect();

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
    $haveIlikedAlreadySql = "SELECT * FROM `matches` WHERE `who`='Ishmael Rivers' AND `whom`='$id' ";
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