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

    public static function borrarCuenta(){
        Conexion::getConnection()->query("DELETE FROM Usuario WHERE CodUsu = {$_SESSION['usuario']->getCodUsu()}");
    }

    public static function sumarPuntos(){
        $puntuacionActual = $_SESSION['usuario']->getPuntuacion();
        $nuevaPuntuacion = $puntuacionActual + 10;
        $_SESSION['usuario']->setPuntuacion($nuevaPuntuacion);
    }

    public static function restarPuntos(){
        $puntuacionActual = $_SESSION['usuario']->getPuntuacion();
        $nuevaPuntuacion = $puntuacionActual - 10;
        $_SESSION['usuario']->setPuntuacion($nuevaPuntuacion);
    }
    
    public function setPuntuacion($nuevaPuntuacion){
        $this->Puntuacion = $nuevaPuntuacion;
    }

    public static function getUser($usuario, $password){
        return Conexion::getConnection()->query("SELECT * FROM Usuario WHERE NomUsu='{$usuario}' AND Contraseña='{$password}'")->getRow("Usuario");
    }
}
