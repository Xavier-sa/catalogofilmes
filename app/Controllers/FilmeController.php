<?php
require_once 'app/Model/Filme/Filme.php';

class FilmeController {
    private $filme;

    public function __construct($conn) {
        $this->filme = new Filme($conn);
    }

    public function listar() {
        $filmes = $this->filme->findAll();
        include 'app/View/Filme/Listar.php';  // Exibe a lista de filmes
    }

    public function visualizar($id) {
        $filme = $this->filme->findById($id);
        include 'app/View/Filme/Visualizar.php'; // Exibe o filme detalhado
    }
}
?>
