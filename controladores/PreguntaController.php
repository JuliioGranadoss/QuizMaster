<?php

require_once "Controller.php";
require_once "./modelos/Pregunta.php";
require_once "./database/conexion.php";

class PreguntaController extends Controller{
    public function mostrarPregunta()
    {
        // Obtener la categoría seleccionada de la URL
        $categoria = $_GET['categoria'] ?? 'Ciencia';

        // Obtener o inicializar el índice de pregunta en la sesión
        $indicePregunta = $_SESSION['indicePregunta'] ?? 0;

        // Obtener la pregunta actual de la categoría
        $pregunta = $this->obtenerPreguntaPorCategoria($categoria, $indicePregunta);


        $respuestaCorrecta = "<button type=\"submit\" name=\"f\" value=\"sumarPuntos\"><div class=\"option\" id=\"correcta\">{$pregunta->getRespuestaCor()}</div></button>";
        $respuestaIncorrecta1 = "<button type=\"submit\" name=\"f\" value=\"restarPuntos\"><div class=\"option\" id=\"incorrecta\">{$pregunta->getOpcionIncorrecta1()}</div></button>";
        $respuestaIncorrecta2 = "<button type=\"submit\" name=\"f\" value=\"restarPuntos\"><div class=\"option\" id=\"incorrecta\">{$pregunta->getOpcionIncorrecta2()}</div></button>";
        $respuestaIncorrecta3 = "<button type=\"submit\" name=\"f\" value=\"restarPuntos\"><div class=\"option\" id=\"incorrecta\">{$pregunta->getOpcionIncorrecta3()}</div></button>";

        $respuestas = [$respuestaCorrecta, $respuestaIncorrecta1, $respuestaIncorrecta2, $respuestaIncorrecta3];
        shuffle($respuestas);

        // Incrementar el índice para la próxima pregunta
        $indicePregunta++;

        // Actualizar el índice en la sesión
        $_SESSION['indicePregunta'] = $indicePregunta;

        if($indicePregunta<5){
            // Renderizar la vista de preguntas con la pregunta actual
            $this->render("Preguntas/juego.php.twig", ["pregunta" => $pregunta, "respuestas" => $respuestas, "usuario" => $_SESSION['usuario'], "categoria" => $categoria]);
        }
        else{
            $_SESSION['indicePregunta'] = 0;
            $this->render("Categoria/personajes.php.twig");
        }       
    }
    private function obtenerPreguntaPorCategoria($categoria, $indice) {
        $resultado = pregunta::obtenerPreguntaPorCategoria($categoria, $indice);
        return $resultado;
    }
}