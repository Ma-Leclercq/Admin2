<?php
$mysqli = new mysqli("172.17.0.5:3306",'web','Frimouche123','woodytoys_db');

// Check connection
if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}

?>

<html>

<head>
<title>WoodyToys - B2B</title>
</head>

<body>
    <h1>Bienvenue sur le site B2B de WoodyToys!</h1>
    <h2>Veuillez trouver ci-dessous la liste de nos produits :</h2>
    <?php
        $query = "SELECT * FROM toys;";
        mysqli_query($mysqli, $query) or die('Error querying database.');
        $result = mysqli_query($mysqli, $query);

        while ($row = mysqli_fetch_array($result)) {
            echo '<li>' . $row['toyName'] . ' - ' . $row['toyPrice'] . ' € </li>';
        }
    ?>
    <!--echo $row['id_toys'] . ': ' . $row['toyName'] . ' - ' . $row['toyPrice'] . ' € <br />' -->
    <p>N'hésitez-pas à nous contacter par mail pour plus d'informations - he201974@students.ephec.be</p>
    <p>© WoodyToys 2023 - Tous droits réservés.</p>
</body>

</html>
