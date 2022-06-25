<?php
    if (isset($_SESSION['facultyNumber'])) {
        $isLoggedIn = true;
    } else {
        $isLoggedIn = false;
    }
?>