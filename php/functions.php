<?php

session_start();
$_SESSION['username'] = 'Richard Zailhi';

$username = $_SESSION['username'];

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

function getAllUsername () {
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

        echo '
        <tr>
            <td>'.$counter.'</td>
            <td>'.$name.'</td>
            <td>'.$city.'</td>
            <td>'.$email.'</td>
            <td>'.$phone.'</td>
            <td>
                <i class="matchbutton fa fa-thumbs-up" data-id="'.$id.'" aria-hidden="true"></i>
            </td>
        </tr>
        ';

    }
}

?>