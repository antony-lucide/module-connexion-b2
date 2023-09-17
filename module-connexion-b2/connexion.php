<?php 
include 'inscription.php';
    class connexion extends Database {
        public string $userdb = "root";
        public string $password = ""; 

        //requete database
        
        public function login($login,$password)
        {
            session_start();
            $data = new PDO('mysql:host=localhost;dbname=moduleconnexionb2;charset=utf8','root','');
            $récup = $data->prepare('SELECT * FROM user WHERE login= :login');
            $récup->bindValue(':login', $login, PDO::PARAM_STR);
            $récup->execute();
            $ses = $récup->fetch(PDO::FETCH_ASSOC);
            //declaration de sessions
            if(!empty($ses)){
                $_SESSION["login"] = $ses["login"];
                echo  $ses["login"];
            }
        }
        // hasher le mdp 
        // mettre les classes et le html dans des fichiers différent 
    }

    if(isset($_POST["submit"])){
        $login = $_POST["login"];
        $password = password_hash($_POST["password"], PASSWORD_BCRYPT);
        $databaseInstances = new connexion();
        $databaseInstances->login($login,$password);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>
</head>
    <body>       
    </body>
</html>