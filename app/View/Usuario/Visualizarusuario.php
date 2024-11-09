<?php

require __DIR__ . "\..\..\Config\Database.php";
require __DIR__ . "\..\..\Model\Usuario.php";

$usuarioModel = new Usuario($conn);

$id = $_GET["id"];

$usuario = $usuarioModel->findById($id);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
</head>
<body>
    <h1>Usuario</h1>

    <h3>ID: <?php echo $usuario->$id ?></h3>
    <p>Nome: <?php echo $usuario->$nome ?></p>
   
</body>
</html>