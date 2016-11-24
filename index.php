<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test BDD DDSCPP</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- connect to bdd -->   
    <?php include('singleton.php'); ?>
    <div class="container">
        <header>
            <h1>Test BDD DDCSPP</h1>
            <h2>1er test de base de donnée pour le projet DDCSPP de la Code Académie de Rennes (FACE - SIMPLON)</h2>
        </header>
        
        <div class="flexbox">
            <aside>
                <div>
                    <h3>Users</h3>
                    <?php 
                        // préparation des users
                        $users = $bdd->query('SELECT pseudo, mail, id_role FROM user ORDER BY ID');
                        // affichage des users
                        while ($user = $users->fetch()) {
                            echo '<div class="user"><p><bold>'.$user['pseudo'].'</bold></p></p><i>'.$user['mail'].'</i></p></div>';
                        }
                    ?>
                </div>
            </aside>
            
            <section>
                <!-- contenue du site ici - les test - tout ça, tout ça -->
                <h3>Posts</h3>
                <?php
                    // préparation des posts
                    $posts = $bdd->query('SELECT author, title, description, date, url, type FROM post ORDER BY ID');
                    //$author = $bdd->query('SELECT pseudo')
                    // affichage des posts
                    while ($post = $posts->fetch()) {
                        echo '<div class="post"><h3>'.$post['title'].'</h3><p><i>By, '.$post['author'].' - '.$post['date'].'</i></p>'.'<div class="content">'.($post[type]==0?'':'<img src='.$post['url'] .'>').'<p>'.$post['description'].'</p></div></div>';
                    }
                ?>
            </section>
        </div>
        
        <footer>
            <p>Julien Malle, 2016. Projet de la Code Académie de Rennes (FACE - SIMPLON). Images of <a href="https://visualhunt.com" target="_blank">Visual Hunt</a>.</p>
        </footer>
    </div>
</body>
</html>