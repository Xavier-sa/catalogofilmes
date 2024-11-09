<?php
require_once 'app/Model/Favorito/Favorito.php';

class FavoritoController {
    private $favorito;

    public function __construct($conn) {
        $this->favorito = new Favorito($conn);
    }

    public function adicionarFavorito($usuario_id, $filme_id) {
        return $this->favorito->adicionarFavorito($usuario_id, $filme_id);
    }

    public function listarFavoritos($usuario_id) {
        return $this->favorito->buscarFavoritos($usuario_id);
    }
}
?>
