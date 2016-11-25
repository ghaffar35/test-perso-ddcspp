<?php
    // connect to bdd
    //include('singleton.php');
    
    // prepare
    $themes = $bdd->query('SELECT color, image FROM theme');
    
    // affichage
    while ($theme = $themes->fetch()) {
        $color = $theme['color'];
        $image = $theme['image'];
    }

?>