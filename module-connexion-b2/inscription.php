<?php 
    class Database {
        public string $userdb = "root";
        public string $password = ""; 

        //Connection à la database
        public function register($login,$password){
            $pdo = new PDO('mysql:host=localhost;dbname=moduleconnexionb2;charset=utf8','root','');

            $stm = $pdo->prepare("INSERT INTO user (login,password) VALUES (:login,:password)");
            $stm->bindValue(':login', $login, PDO::PARAM_STR);
            $stm->bindValue(':password', $password, PDO::PARAM_STR);
            $stm->execute();
        }
        // hasher le mdp 
        // mettre les classes et le html dans des fichiers différent 
        
            // private function passwordverify($login,$password){
            //     if(strlen($email) > 8){
            //         return true;
            //     }
            //     elseif(strlen($password) > 8){
            //         return true;
            //     }
            //     else{
            //         return false;
            //     }
            // }
    }
//envoie du formulaire
    if(isset($_POST["submit"])){
        $login = $_POST["login"];
        $password = password_hash($_POST["password"], PASSWORD_BCRYPT);
        echo "Succès";
        $databaseInstances = new Database();
        $databaseInstances->register($login,$password);
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
        <form method="post">
            <label for="login">Email</label>
            <input type="login" name="login">
            <label for="password">Password</label>
            <input type="password" name="password">
            <input type="submit" name="submit">
        </form> 
    </body>
</html>