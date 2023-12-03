<?php
require_once "./database/conexion.php";

class Usuario {
    public int $CodUsu;
    public string $NomUsu;
    public string $Contraseña;
    public string $CorreoUsu;
    public int $Puntuacion;

    // Getter para CodUsu
    public function getCodUsu(): int {
        return $this->CodUsu;
    }

    // Getter para NomUsu
    public function getNomUsu(): string {
        return $this->NomUsu;
    }

    // Getter para Contraseña
    public function getContraseña(): string {
        return $this->Contraseña;
    }

    // Getter para CorreoUsu
    public function getCorreoUsu(): string {
        return $this->CorreoUsu;
    }

    // Getter para Puntuacion
    public function getPuntuacion(): int {
        return $this->Puntuacion;
    }

    public static function registrarUsuario(string $email,string $usuario ,string $password ){
        Conexion::getConnection()->query("INSERT INTO Usuario (NomUsu, Contraseña, CorreoUsu, Puntuacion) VALUES ('$usuario', '$password', '$email', 0)");
    }
}
