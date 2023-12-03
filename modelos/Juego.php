<?php
class Juego {
    public int $CodJue;
    public int $Puntos;
    public string $FechaInicio;
    public string $FechaFin;

    // Getter para CodJue
    public function getCodJue(): int {
        return $this->CodJue;
    }

    // Getter para Puntos
    public function getPuntos(): int {
        return $this->Puntos;
    }

    // Getter para FechaInicio
    public function getFechaInicio(): string {
        return $this->FechaInicio;
    }

    // Getter para FechaFin
    public function getFechaFin(): string {
        return $this->FechaFin;
    }
}
?>
