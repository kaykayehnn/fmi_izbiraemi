<header class="header">
    <div class="flex">
        <a href="index.php"><img src="./images/fmi.png" alt="Logo"></a>
        <a href="index.php"><h1 class="header-title">ФМИ Пловдив</h1></a>
        <?php include_once "utils.php"; ?>
        <nav>
            <ul>
                <?php
                    if ($isLoggedIn) {
                ?>
                <li>
                    <a href="index.php"><button type="button">Начало</button></a>
                </li>
                <li>
                    <a href="izberi.php"><button type="button">Желания</button></a>
                </li>
                <li>
                    <form action="logout.php" method="post">
                        <input type="submit" value="Изход">
                    </form>
                </li>
                <li style="opacity: 0.02;">
                    <a href="all.php"><button type="button">Виж конкуренцията</button></a>
                </li>
                <?php } else { ?>
                <!-- <li>
                    <a class="nav-link" href="register.php">Register</a>
                </li> -->
                <?php } ?>
            </ul>
        </nav>
    </div>
</header>