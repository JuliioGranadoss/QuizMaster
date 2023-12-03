<?php

require_once "Controller.php";
require_once "./modelos/Pregunta.php";
require_once "./database/conexion.php";

class PreguntaController extends Controller
{
    public function mostrarPregunta()
    {
        // Obtener la categoría seleccionada de la URL
        $categoria = $_GET['categoria'] ?? 'Ciencia';


        // Obtener o inicializar el índice de pregunta en la sesión
        $indicePregunta = $_SESSION['indicePregunta'] ?? 0;

        // Obtener la pregunta actual de la categoría
        $pregunta = $this->obtenerPreguntaPorCategoria($categoria, $indicePregunta);

        // Incrementar el índice para la próxima pregunta
        $indicePregunta++;

        // Actualizar el índice en la sesión
        $_SESSION['indicePregunta'] = $indicePregunta;

        // Renderizar la vista de preguntas con la pregunta actual
        $this->render("Preguntas/juego.php.twig", ["datos" => $pregunta, $_SESSION['usuario']]);

    }
    private function obtenerPreguntaPorCategoria($categoria, $indice) {
        $sql = "SELECT * FROM Pregunta WHERE CodCat IN (SELECT CodCat FROM Categoria WHERE NomCat = '$categoria') LIMIT 1";
        $resultado = Conexion::getConnection()->query($sql)->getRow('Pregunta');
    
        return $resultado;
    }
}