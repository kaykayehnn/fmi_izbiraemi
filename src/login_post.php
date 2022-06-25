<?php include_once "session.php" ?>
<?php include "db.php" ?>
<?php
    $facultyNumber = $_POST['facultyNumber'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE facultyNumber = '$facultyNumber' AND password = '$password'";

    $result = $mysql->query($sql);

    if (!$result) {
        header('Location: login.php');
    } else {
        $row = $result->fetch_assoc();
        if (is_null($row)) {
            header('Location: login.php');
        } else {
            $_SESSION['facultyNumber'] = $row['facultyNumber'];

            header('Location: index.php');
        }
    }
?>
