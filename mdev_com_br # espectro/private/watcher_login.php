<?php

session_start();
if (!$_SESSION['user_email']) {


    header('Location: ../index.php');
    exit();
}


?>