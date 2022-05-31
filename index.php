<?php
// auto load
spl_autoload_extensions('.php');
function classLoader($class)
{
  $pastas = array(
    "shared/controller",
    "shared/model",
    "public/controller",
    "public/model",
);
  foreach ($pastas as $pasta) {
    $arquivo = "{$pasta}/{$class}.php";
    if (file_exists($arquivo)) {
      require_once($arquivo);
    }
  }
}
spl_autoload_register("classLoader");

//front controller

class Aplicacao{
    public static $app = "/LilianeFalcao";
    public static function run(){
        $layout = new Template("view/layout.html");
        if(isset($_GET["class"])){
          $class = $_GET["class"];
        }else{
          $class = "Inicio";
        }
        if (isset($_GET["method"])) {
          $method = $_GET["method"];
        } else {
          $method = "";
        }
        if(class_exists($class)){
            $pagina = new $class();
            if(method_exists($pagina, $method)) {
              $pagina->$method();
            } else {
              $pagina->controller();
            }
            $layout->set("uri", self::$app);
            $layout->set('conteudo', $pagina->getMessage());
          }
          echo $layout->saida();
        }
      }
      Aplicacao::run();