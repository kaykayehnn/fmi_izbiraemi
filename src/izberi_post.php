<?php include_once "session.php" ?>
<?php include "db.php" ?>
<?php include "utils.php" ?>
<?php
    $discipline = $_POST['discipline'];
    $jelanie = $_POST['jelanie'];
    $facultyNumber = $_SESSION['facultyNumber'];

    $sql = "SELECT u.id
FROM jelaniq j
JOIN users u ON u.id = j.user_id
WHERE u.facultyNumber = '$facultyNumber' AND j.jelanie = $jelanie;";
    $result = $mysql->query($sql);
    if($result->num_rows >= 1) {
      $row = $result->fetch_assoc();
      $user_id = $row['id'];
      $sql = "UPDATE jelaniq
      SET izbiraema_id = $discipline
      WHERE user_id = $user_id";
      
      $result = $mysql->query($sql);
    } else {

      $user_id = $mysql->query("SELECT id FROM users WHERE facultyNumber = '$facultyNumber'")->fetch_assoc()['id'];

      $sql = "INSERT INTO jelaniq (user_id, izbiraema_id, jelanie) VALUES ($user_id, $discipline, $jelanie)";

      $result = $mysql->query($sql);
    }

    header('Location: index.php');
    
    // var_dump($result);
    // if (!$result) {
    //     header('Location: register.php');
    // } else {
    //     if($result == true) {
    //         $_SESSION['facultyNumber'] = $facultyNumber;

    //         header('Location: index.php');
    //     } else {
    //         $row = $result->fetch_assoc();
    //         if (is_null($row)) {
    //             header('Location: register.php');
    //         } else {
    //             $_SESSION['facultyNumber'] = $row['facultyNumber'];
    
    //             header('Location: index.php');
    //         }
    //     }
    // }
?>
