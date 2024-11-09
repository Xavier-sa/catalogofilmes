<?php


require_once 'app/Controllers/FilmeController.php';
require_once 'app/Controllers/FavoritoController.php';
require_once 'app/Controllers/UsuarioController.php';

// Pega o caminho da URL sem os parâmetros (query string)
$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

// Remove o prefixo "/catalogo-filmes" da URL (caso necessário)
$uri = str_replace('/catalogo-filmes', '', $uri);

// Exibe a URL para depuração (remova isso em produção)
// var_dump($uri);
// die();

// Compara o caminho da URL e decide qual controlador e ação chamar
switch ($uri) {
    case '/filmes/listar':
        $controller = new FilmeController($conn);
        $controller->listar();
        break;

    case '/filmes/visualizar':
        // Verifica se o parâmetro 'id' foi passado na URL
        if (isset($_GET['id'])) {
            $controller = new FilmeController($conn);
            $controller->visualizar($_GET['id']);
        } else {
            echo "ID do filme não fornecido!";
        }
        break;

    case '/favoritos/listar':
        // Verifica se o parâmetro 'usuario_id' foi passado na URL
        if (isset($_GET['usuario_id'])) {
            $controller = new FavoritoController($conn);
            $controller->listarFavoritos($_GET['usuario_id']);
        } else {
            echo "ID do usuário não fornecido!";
        }
        break;

    case '/usuarios/listar':
        $controller = new UsuarioController($conn);
        $controller->listarUsuarios();
        break;

    case '/usuarios/visualizar':
        // Verifica se o parâmetro 'id' foi passado na URL
        if (isset($_GET['id'])) {
            $controller = new UsuarioController($conn);
            $controller->visualizarUsuario($_GET['id']);
        } else {
            echo "ID do usuário não fornecido!";
        }
        break;

    default:
        echo "Página não encontrada!";
        break;
}
?>
