<?php include "session.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FMI Izbiraemi</title>
    <link rel="stylesheet" href="styles/wheel.css">
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
            $facultyNumber = $_SESSION['facultyNumber'];
            $sql = "
SELECT
    name,
    teacher
FROM izbiraemi i
LEFT OUTER JOIN jelaniq j ON j.izbiraema_id = i.id
LEFT OUTER JOIN users u ON u.id = j.user_id AND facultyNumber = '$facultyNumber'
WHERE facultyNumber IS NULL";

            $result = $mysql->query($sql);

            $myArray = array();
            while($row = $result->fetch_assoc()) {
              $myArray[] = $row;
            }
            echo "<script> window.izbiraemi = " . json_encode($myArray) . ";</script>";
    ?>
    <?php } else { ?>
        <a class="login-button" href="./login.php">Вход</a>
        <a class="login-button" href="./register.php">Регистрация</a>
        <?php } ?>
            <h1 style="text-align: center;">Подредба на желания по избираеми дисциплини</h1>
            <div class="flex flex-center">
                <form style="margin-right: 16px; text-align: center;" action="izberi_post.php" method="post">
                  <input id="discipline_field" type="hidden" name="discipline">
                  <button style="margin: 8px 0;" id="spin_button" type="button" onClick="startSpin();">Завърти</button>
                  <div id="information" style="margin: 8px auto;"></div>
                  <div>
                    <label for="jelanie">Запази изборът като </label>
                    <select name="jelanie">
                    <option value="1" selected>1 желание</option>
                    <option value="2">2 желание</option>
                    <option value="3">3 желание</option>
                    <option value="4">4 желание</option>
                    <option value="5">5 желание</option>
                    <option value="6">6 желание</option>
                    <option value="7">7 желание</option>
                    <option value="8">8 желание</option>
                    <option value="9">9 желание</option>
                    <option value="10">10 желание</option>
                    <option value="11">11 желание</option>
                    <option value="12">12 желание</option>
                    <option value="13">13 желание</option>
                    <option value="14">14 желание</option>
                    <option value="15">15 желание</option>
                    <option value="16">16 желание</option>
                    <option value="17">17 желание</option>
                    <option value="18">18 желание</option>
                    <option value="19">19 желание</option>
                    <option value="20">20 желание</option>
                    <option value="21">21 желание</option>
                    <option value="22">22 желание</option>
                    <option value="23">23 желание</option>
                    <option value="24">24 желание</option>
                    <option value="25">25 желание</option>
                    <option value="26">26 желание</option>
                    <option value="27">27 желание</option>
                    <option value="28">28 желание</option>
                    <option value="29">29 желание</option>
                    <option value="30">30 желание</option>
                    <option value="31">31 желание</option>
                    <option value="32">32 желание</option>
                  </select>
                  </div>
                  <div>
                    <button style="margin: 8px 0;" type="submit">Запази</button>
                  </div>
                </form>
              <table cellpadding="0" cellspacing="0" border="0">
                  <tr>
                      <td width="438" height="582" class="the_wheel" align="center" valign="center">
                          <canvas id="canvas" width="434" height="434">
                              <p style="{color: white}" align="center">Sorry, your browser doesn't support canvas. Please try another.</p>
                          </canvas>
                      </td>
                  </tr>
              </table>

            </div>
    <script src="scripts/Winwheel.min.js"></script>
    <script src="scripts/TweenMax.min.js"></script>
    <script src="scripts/izberi.js"></script>
    </main>
        <?php include "footer.php"; ?>
</body>
</html>