<?php
    $host = getenv("MYSQL_HOST") ?: "localhost";
    $database = getenv("MYSQL_DATABASE") ?: "izbiraemi";
    $user = getenv("MYSQL_USER") ?: "root";
    $password = getenv("MYSQL_PASSWORD") ?: "";

    $mysql = new mysqli($host, $user, $password, $database);
    $mysql->set_charset("utf8");
?>