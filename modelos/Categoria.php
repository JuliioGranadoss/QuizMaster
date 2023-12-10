<?php
class Categoria {
    public int $CodCat;
    public string $NomCat;

    // Getter para CodCat
    public function getCodCat(): int {
        return $this->CodCat;
    }

    // Getter para NomCat
    public function getNomCat(): string {
        return $this->NomCat;
    }
}