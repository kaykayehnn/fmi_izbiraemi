<?php include "session.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FMI Izbiraemi - Register</title>
    <?php include "head.php"; ?>
</head>
<body>
    <?php include "top.php"; ?>
    <?php include "cta_image.php" ?>
    <main class="main">
        <h1>Регистрация</h1>
        <form action="register_post.php" method="POST">
            <div class="input-group">
                <label class="input-label" for="facultyNumber">Факултетен номер:</label>
                <input type="password" id="facultyNumber" name="facultyNumber">
            </div>
            <div class="input-group">
                <label class="input-label" for="password">Парола:</label>
                <input type="text" id="password" name="password">
            </div>
            <input type="submit" value="Submit">
        </form>
    </main>

    <?php include "footer.php"; ?>
</body>
</html>