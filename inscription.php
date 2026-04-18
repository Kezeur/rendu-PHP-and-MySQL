<?php
require 'connexion.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $ins = $pdo->prepare("INSERT INTO utilisateurs (email, mot_de_passe) VALUES (?, ?)");
    $ins->execute([$email, $password]);
    echo "Utilisateur créé avec succès ! <a href='login.php'>Se connecter</a>";
}
?>

<form method="POST">
    <h1>Inscription</h1>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Mot de passe" required>
    <button type="submit">Créer mon compte</button>
</form>