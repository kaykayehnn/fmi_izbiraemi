<?php include "session.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FMI Izbiraemi</title>
    <?php include "head.php"; ?>
    <?php include_once "utils.php"; ?>
</head>
<body>
    <?php include "top.php"; ?>
    <?php include "cta_image.php"; ?>
    <main class="main">
    <?php 
        if ($isLoggedIn) {
            include "db.php";
            $sql = "
SELECT
  j.id,
	facultyNumber,
	jelanie,
  name,
  teacher
FROM users u
JOIN jelaniq j ON j.user_id = u.id
JOIN izbiraemi i ON i.id = j.izbiraema_id
ORDER BY facultyNumber, jelanie";

            $result = $mysql->query($sql);
            if($result->num_rows == 0) {
    ?>
    <h1>Няма записани желания</h1>
    <a class="login-button" href="izberi.php">Изберете желания</a>
    <?php
            } else {
    ?>
    <h1>Всички желания:</h1>
    <?php
            $previousFaculty = null;
            while($row = $result->fetch_assoc()) {
                $id = $row['id'];
                $jelanie = $row['jelanie'];
                $name = $row['name'];
                $facultyNumber = $row['facultyNumber'];
                if($previousFaculty != $facultyNumber) {
                  if(!is_null($previousFaculty)) {
                    echo "</ul>";
                  }
                  echo "<h3>\tЖеланията на $facultyNumber</h3>
                  <ul>";
                  $previousFaculty = $facultyNumber;
                }
                // var_dump($row);
                echo "<li> $jelanie. $name<form style='display: inline-block;' action='delete.php?id=$id   ' method='POST'><button style='margin-left: 8px' type='submit'>Изтрий</button></li>";
            }
    ?>
    <?php } } else { ?>
        <a class="login-button" href="./login.php">Вход</a>
        <a class="login-button" href="./register.php">Регистрация</a>
        <?php } ?>
    </main>
        <?php include "footer.php"; ?>
</body>
</html>