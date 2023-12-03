<?php

    // importamos la librería TWIG
    require_once "./vendor/autoload.php" ;

    abstract class Controller {

        private $twig ;
        

        public function __construct() {

            // Configuramos la librería Twig indicándole la ruta hasta la
            // carpeta donde tenemos todas las vistas.
            $loader = new \Twig\Loader\FilesystemLoader("./vistas") ;
        
            // Instanciamos la librería Twig
            $this->twig = new \Twig\Environment($loader) ;

            $this->twig->addFilter(new \Twig\TwigFilter('acortar', function($string) {
                return substr($string,0,80)."..." ;
        
            }));
        }

        /**
         * Renderizamos la plantilla indicada.
         * @param $vista
         * @param $datos
         * @return
         */
        public function render(string $vista, array $datos = []) {
            echo $this->twig->render($vista, $datos) ;
        }
    }