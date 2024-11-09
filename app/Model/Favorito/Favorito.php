<?php

class Favorito {
    private $table = "favoritos";
    private $conn;

    public $id;
    public $usuario_id;
    public $filme_id;
    public $data_adicionado;

    public function __construct($conn = null) {
        $this->conn = $conn;
    }

    public function adicionarFavorito($usuario_id, $filme_id) {
        $query = "SELECT * FROM $this->table WHERE usuario_id = :usuario_id AND filme_id = :filme_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":usuario_id", $usuario_id, PDO::PARAM_INT);
        $stmt->bindParam(":filme_id", $filme_id, PDO::PARAM_INT);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            return false; // Filme já está nos favoritos
        }

        $query = "INSERT INTO $this->table (usuario_id, filme_id) VALUES (:usuario_id, :filme_id)";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":usuario_id", $usuario_id, PDO::PARAM_INT);
        $stmt->bindParam(":filme_id", $filme_id, PDO::PARAM_INT);

        return $stmt->execute();
    }

    public function buscarFavoritos($usuario_id) {
        $query = "SELECT f.* FROM filme f
                  JOIN $this->table fa ON fa.filme_id = f.id
                  WHERE fa.usuario_id = :usuario_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":usuario_id", $usuario_id, PDO::PARAM_INT);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, "Filme");
        return $stmt->fetchAll();
    }
}
?>
