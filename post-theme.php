<?php

// connect to bdd
include('singleton.php');

// add a color
$color = $bdd->prepare("UPDATE theme SET color=? WHERE id=1");
$color->execute(array($_POST['color']));

// redirection
header('Location: /test-perso-ddcspp');

?>