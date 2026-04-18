<?php
session_start(); 
require 'connexion.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $req = $pdo->prepare("SELECT * FROM utilisateurs WHERE email = ?");
    $req->execute([$email]);
    $user = $req->fetch();

    
    if ($user && password_verify($password, $user['mot_de_passe'])) {
        $_SESSION['user'] = $user['id']; 
        echo "Connexion réussie !";
        
    } else {
        echo "Email ou mot de passe incorrect.";
    }
}
?>

<form method="POST">
    <h1>Connexion</h1>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Mot de passe" required>
    <button type="submit">Se connecter</button>
</form>