<?php include_once "session.php" ?>
<?php include "db.php" ?>
<?php
    $facultyNumber = $_POST['facultyNumber'];
    $password = $_POST['password'];

    $result = $mysql->query("INSERT INTO users (facultyNumber, password) VALUES ('$facultyNumber', '$password')");
    
    if (!$result) {
        header('Location: register.php');
    } else {
        if($result == true) {
            $_SESSION['facultyNumber'] = $facultyNumber;

            header('Location: index.php');
        } else {
            $row = $result->fetch_assoc();
            if (is_null($row)) {
                header('Location: register.php');
            } else {
                $_SESSION['facultyNumber'] = $row['facultyNumber'];
    
                header('Location: index.php');
            }
        }
    }
?>
