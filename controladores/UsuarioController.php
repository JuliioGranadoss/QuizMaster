<?php
require_once "Controller.php";
require_once "./modelos/Usuario.php";
require_once "./database/conexion.php";
class UsuarioController extends Controller
{
    public function showlogin()
    {
        $this->render("Usuario/login.php.twig");
    }
    public function login()
    {
        $usuario = $_POST["usuario"];
        $password = $_POST["password"];

        $usr = Usuario::getUser($usuario, $password);

        if ($usr) {
            $_SESSION['usuario'] = $usr;
            $this->render("Categoria/personajes.php.twig");
        } else {
            header("Location: index.php?m=Usuario&f=showlogin");
        }

    }
    public function mostrarRegistro()
    {
        $this->render("Usuario/register.php.twig");
    }
    public function crearCuenta()
    {
        Usuario::registrarUsuario($_POST["email"], $_POST["usuario"], $_POST["password"]);
        header("Location: index.php?m=Usuario&f=showlogin");
    }
    public function mostrarPerfil()
    {
        // Verificar si el usuario está autenticado
        if (!isset($_SESSION['usuario'])) {
            // Redirigir a la página de inicio de sesión o mostrar un mensaje de error
            header("Location: index.php?m=Usuario&f=showlogin");
            exit;
        }

        // Obtener el usuario actual desde la sesión
        $usuario = $_SESSION['usuario'];

        // Renderizar la vista del perfil
        $this->render("Perfil/perfil.php.twig", ["usuario" => $usuario]);
    }

    public function mostrarOpcionesCuenta()
    {
        
        // Verificar si el usuario está autenticado
        if (!isset($_SESSION['usuario'])) {
            // Redirigir a la página de inicio de sesión o mostrar un mensaje de error
            header("Location: index.php?m=Usuario&f=showlogin");
            exit;
        }

        // Obtener el usuario actual desde la sesión
        $usuario = $_SESSION['usuario'];

        // Renderizar la vista de opciones de cuenta
        $this->render("Perfil/opcionesCuenta.php.twig", ["usuario" => $usuario]);
    }

    public function cerrarSesion(){

        if (!isset($_SESSION['usuario'])) {
            header("Location: index.php?m=Usuario&f=showlogin");
            exit;
        }

        $codUsu = $_SESSION['usuario']->getCodUsu();

        header("Location: index.php");
        exit;
    }
    public function borrarCuenta(){
        // Verificar si el usuario está autenticado
        if (!isset($_SESSION['usuario'])) {
            // Redirigir a la página de inicio de sesión o mostrar un mensaje de error
            header("Location: index.php?m=Usuario&f=showlogin");
            exit;
        }

        // Obtener el ID del usuario desde la sesión
        $codUsu = $_SESSION['usuario']->getCodUsu();

        // Realizar la lógica para borrar la cuenta (puedes implementarla según tus necesidades)
        Usuario::borrarCuenta();

        // Redirigir a la página de inicio después de borrar la cuenta
        header("Location: index.php");
        exit;
    }
    public function sumarPuntos(){
        $puntuacionActual = $_SESSION['usuario']->getPuntuacion();
        $nuevaPuntuacion = $puntuacionActual + 10;
        $_SESSION['usuario']->setPuntuacion($nuevaPuntuacion);
        header("Location: index.php?m=Pregunta&f=mostrarPregunta&categoria={$_POST['categoria']}");
    }

    public function restarPuntos(){
        $puntuacionActual = $_SESSION['usuario']->getPuntuacion();
        $nuevaPuntuacion = $puntuacionActual - 10;
        $_SESSION['usuario']->setPuntuacion($nuevaPuntuacion);
        header("Location: index.php?m=Pregunta&f=mostrarPregunta&categoria={$_POST['categoria']}");
    }
}