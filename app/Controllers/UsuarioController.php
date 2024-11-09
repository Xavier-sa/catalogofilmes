<?php
require_once 'app/Model/Usuario/Usuario.php';

class UsuarioController {
    private $usuario;

    public function __construct($conn) {
        $this->usuario = new Usuario($conn);
    }

    public function listarUsuarios() {
        $usuarios = $this->usuario->findAll();
        include 'app/View/Usuario/ListarUsuario.php';
    }

    public function visualizarUsuario($id) {
        $usuario = $this->usuario->findById($id);
        include 'app/View/Usuario/VisualizarUsuario.php';
    }
}
?>
