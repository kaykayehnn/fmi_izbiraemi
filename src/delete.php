<?php include_once "session.php" ?>
<?php include "db.php" ?>
<?php include "utils.php" ?>
<?php
    $jelanie = $_REQUEST['id'];
    $facultyNumber = $_SESSION['facultyNumber'];

    $sql = "DELETE
FROM jelaniq
WHERE id = $jelanie";
    $result = $mysql->query($sql);
    
    header('Location: index.php');
?>
