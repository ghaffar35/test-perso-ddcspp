<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test BDD DDSCPP</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<?php include('singleton.php'); ?>
<?php include('test-theme.php'); ?>

<body class="<?php echo $color; ?>">
    <div class="back-img" style="<?php echo 'background-image: url(images/'.$image.')'; ?>"></div>
    
    <!-- connect to bdd -->   
    <div class="container">
        <header>
            <h1>Test BDD DDCSPP</h1>
            <h2>1er test de base de donnée pour le projet DDCSPP de la Code Académie de Rennes (FACE - SIMPLON)</h2>
        </header>
        
        <nav>
            <ul>
                <li><a href="index.php">home</a></li>
                <li><a href="dashboard.php">dashboard</a></li>
                <li><a href="about.php">about</a></li>
                <li><a href="login.php">connection</a></li>
            </ul>
        </nav>