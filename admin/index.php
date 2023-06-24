<?PHP

require_once "../functions/autoload.php";



$secciones_validas = [
    "login" => [
        "titulo" => "Inicio de Sesión",
        "restringido" => FALSE
    ],
    "dashboard" => [
        "titulo" => "Panel de administración",
        "restringido" => TRUE
    ],
    "admin_comics" => [
        "titulo" => "Administrar encastre",
        "restringido" => TRUE
    ],
    "admin_personajes" => [
        "titulo" => "Administrar pizarras",
        "restringido" => TRUE
    ],
    "admin_series" => [
        "titulo" => "Administrar rompecabezas",
        "restringido" => TRUE
    ],
    "admin_artistas" => [
        "titulo" => "Administrar linea sensorial",
        "restringido" => TRUE
    ],
    "admin_guionistas" => [
        "titulo" => "Administrar pedagogias",
        "restringido" => TRUE
    ],
    
];
$seccion = $_GET['sec'] ?? "dashboard";

if (!array_key_exists($seccion, $secciones_validas)) {
    $vista = "404";
    $titulo = "404 - Página no encontrada";
} else {
    $vista = $seccion;

    /*VERIFICAMOS SI SE REQUIERE AUTENTICACIÓN */
    if($secciones_validas[$seccion]['restringido']){
        (new Autenticacion())->verify();        
    }

    $titulo = $secciones_validas[$seccion]['titulo'];
}


$userData = $_SESSION['loggedIn'] ?? FALSE;
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La Tienda de Juguetes :: <?= $titulo ?></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <link href="css/styles.css" rel="stylesheet">
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-info">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">La Tienda de Juguetes</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                        <a class="nav-link  <?= $userData ? "" : "d-none" ?>" href="index.php?sec=dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item <?= $userData ? "" : "d-none" ?>">
                        <a class="nav-link" href="index.php?sec=admin_encastre">Administrar Encastre</a>
                    </li>
                    <li class="nav-item <?= $userData ? "" : "d-none" ?>">
                        <a class="nav-link" href="index.php?sec=admin_pizarras">Administrar Pizarras</a>
                    </li>
                    <li class="nav-item <?= $userData ? "" : "d-none" ?>">
                        <a class="nav-link" href="index.php?sec=admin_rompecabezas">Administrar Rompecabezas</a>
                    </li>
                    <li class="nav-item <?= $userData ? "" : "d-none" ?>">
                        <a class="nav-link " href="index.php?sec=admin_linea_sensorial">Administrar Linea Sensorial</a>
                    </li>
                    <li class="nav-item <?= $userData ? "" : "d-none" ?>">
                        <a class="nav-link " href="index.php?sec=admin_pedagogias">Administrar Pedagogias</a>
                    </li>

                    <li class="nav-item <?= $userData ? "d-none" : "" ?>">
                        <a class="nav-link fw-bold bg-secondary text-light rounded me-2" href="index.php?sec=login">Login</a>
                    </li>

                    <li class="nav-item <?= $userData ? "" : "d-none" ?>">
                        <a class="nav-link fw-bold bg-secondary text-light rounded" href="actions/auth_logout.php">Logout</a>
                    </li>


                </ul>
            </div>
        </div>
    </nav>

    <main>

        <div class="container">
            <?PHP

            //Verifiquemos que el archivo exista.
            require_once file_exists("views/$vista.php") ? "views/$vista.php" : "views/404.php";

            ?>
        </div>
    </main>

    <footer class="bg-info text-light text-center">
        Jorge Perez 2023
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

</body>

</html>