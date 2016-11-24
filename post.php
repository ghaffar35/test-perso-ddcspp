<?php

// connect to bdd
include('singleton.php');

// add a user
$req = $bdd->prepare('INSERT INTO user (pseudo, mail, pwd, id_role) VALUES(?, ?, ?, ?)');
$req->execute(array($_POST['pseudo'], $_POST['mail'], $_POST['pwd'], $_POST['id_role']));

// redirection
header('Location: /bdd_ddcspp');

?>