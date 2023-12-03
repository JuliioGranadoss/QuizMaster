<?php

require_once "Controller.php";
require_once "./modelos/Categoria.php";
require_once "./database/conexion.php";

class CategoriaController extends Controller{
    public function mostrar(){
        $this -> render("Categoria/personajes.php.twig");
    }
}