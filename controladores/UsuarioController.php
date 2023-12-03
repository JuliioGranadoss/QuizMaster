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

        $usr = Conexion::getConnection()->query("SELECT * FROM Usuario WHERE NomUsu='{$usuario}' AND Contraseña='{$password}'")->getRow("Usuario");

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
        $this->render("Usuario/perfil.php.twig", ["usuario" => $usuario]);
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
        $this->render("Usuario/opcionesCuenta.php.twig", ["usuario" => $usuario]);
    }

    public function borrarCuenta()
    {
        // Verificar si el usuario está autenticado
        if (!isset($_SESSION['usuario'])) {
            // Redirigir a la página de inicio de sesión o mostrar un mensaje de error
            header("Location: index.php?m=Usuario&f=showlogin");
            exit;
        }

        // Obtener el ID del usuario desde la sesión
        $codUsu = $_SESSION['usuario']->getCodUsu();

        // Realizar la lógica para borrar la cuenta (puedes implementarla según tus necesidades)
        // ...

        // Redirigir a la página de inicio después de borrar la cuenta
        header("Location: index.php");
        exit;
    }
}