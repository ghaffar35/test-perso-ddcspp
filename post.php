<?php

// connect to bdd
include('singleton.php');

// add a user
$c_user = $bdd->prepare('INSERT INTO user (pseudo, mail, pwd, id_role) VALUES(?, ?, ?, ?)');
$c_user->execute(array($_POST['pseudo'], $_POST['mail'], $_POST['pwd'], $_POST['id_role']));

// add a post
$c_post = $bdd->prepare('INSERT INTO post (id_user, title, description, date, url, type) VALUES(?, ?, ?, ?, ?, ?)');
$c_post->execute(array($_POST['pseudo'], $_POST['mail'], $_POST['pwd'], $_POST['id_role']));

// redirection
header('Location: /bdd_ddcspp');

?>