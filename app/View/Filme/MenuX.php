<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Filmes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
    <div class="menu">
        <a href="index.php?action=listar">Listar Filmes</a>
        <a href="index.php?action=visualizar&id=1">Visualizar Filme</a> <!-- Exemplo: visualizar o filme com id 1 -->
        <a href="index.php?action=adicionar">Adicionar Filme</a>
        <a href="index.php?action=editar&id=1">Editar Filme</a> <!-- Exemplo: editar o filme com id 1 -->
        <a href="index.php?action=remover&id=1">Remover Filme</a> <!-- Exemplo: remover o filme com id 1 -->
    </div>
   
</body>
</html>
