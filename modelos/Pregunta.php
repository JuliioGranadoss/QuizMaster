<?php
class Pregunta {
    public int $CodPre;
    public string $TextoPre;
    public string $RespuestaCor;
    public int $ValorPuntos;
    public int $CodCat;
    public string $OpcionIncorrecta1;
    public string $OpcionIncorrecta2;    
    public string $OpcionIncorrecta3;        

    // Getter para CodPre
    public function getCodPre(): int {
        return $this->CodPre;
    }

    // Getter para TextoPre
    public function getTextoPre(): string {
        return $this->TextoPre;
    }

    // Getter para RespuestaCor
    public function getRespuestaCor(): string {
        return $this->RespuestaCor;
    }

    // Getter para ValorPuntos
    public function getValorPuntos(): int {
        return $this->ValorPuntos;
    }

    // Getter para CodCat
    public function getCodCat(): int {
        return $this->CodCat;
    }
    public function getOpcionIncorrecta1(): string {
        return $this->OpcionIncorrecta1;
    }

    // Getter para OpcionIncorrecta2
    public function getOpcionIncorrecta2(): string {
        return $this->OpcionIncorrecta2;
    }

    // Getter para OpcionIncorrecta3
    public function getOpcionIncorrecta3(): string {
        return $this->OpcionIncorrecta3;
    }
}
