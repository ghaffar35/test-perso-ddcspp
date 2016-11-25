<?php include('head.php'); ?>
        
    <form action="post-theme.php" method="post">
    <p>Modifier le thème</p>
        <select name="color" id="color">
            <option value="blue">blue</option>
            <option value="red">red</option>
            <option value="grey">grey</option>
        </select>
    <input type="submit">

</form>
    
        <div class="flexbox">
            <aside>
                <div>
                    <h3>Users</h3>
                    <?php 
                        // préparation des users
                        $users = $bdd->query('SELECT pseudo, mail, id_role FROM user ORDER BY id');
                        // affichage des users
                        while ($user = $users->fetch()) {
                            echo '<div class="user"><p><bold>'.$user['pseudo'].'</bold></p></p><i>'.$user['mail'].'</i></p></div>';
                        }
                    ?>
                    
                    <form action="post.php" method="post"><h4>Register</h4>
                        <input type="text" placeholder="Pseudonyme" name="pseudo" id="pseudo">
                        <input type="mail" placeholder="example@mail.com" name="mail" id="mail">
                        <div>
                            <input type="radio" value="1" name="id_role" id="id_role"> Modo
                        </div>
                        <input type="password" name="pwd" id="pwd">
                        <input type="submit" value="OK">
                    </form>
                </div>
            </aside>
            
            <section>
                <!-- contenue du site ici - les test - tout ça, tout ça -->
                <h3>Posts</h3>
                <?php
                    // préparation des posts
                    $posts = $bdd->query('SELECT post.id, post.id_user, post.title, post.description, post.date, post.url, post.type, user.id, user.pseudo FROM post, user WHERE post.id_user = user.id ORDER BY post.id');
                    
                    // affichage des posts
                    while ($post = $posts->fetch()) {
                        echo '<div class="post"><h3>'.$post['title'].'</h3><p><i>By, '.$post['pseudo'].' - '.$post['date'].'</i></p>'.'<div class="content">'.($post['type'] == 0 ? '':'<img src='.$post['url'] .'>').'<p>'.$post['description'].'</p></div></div>';
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