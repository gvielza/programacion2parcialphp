<?php
require_once "classes/Tipos_juegos.php";

$tipos_juguetes = $_GET['jgo'] ?? FALSE;
$todos_juguetes = $_GET['juego'] ?? FALSE;

$tit = strtoupper(str_replace("_", " ", $tipos_juguetes));

$miObjetoJuguete = new Juguete();
$catalogo = $miObjetoJuguete->catalogo_tipo_juego($tipos_juguetes);

$miobjetoTipoJuguete = new Tipos_juegos();
//$obj = intval($miobjetoTipoJuguete->getTipo($tit));

 
?>

<div class=" d-flex justify-content-center p-5">
    <div>
    <?php
echo ($tit === '1' || $tit === '2' || $tit === '3' || $tit === '4') ? '<h1 class="text-center mb-4 fw-bold">Juguetes de ' . $tit . '</h1>' :
'<h1 class="text-center mb-4 fw-bold">Todos los Juguetes</h1>';

// Resto del código...
?>
        <div class="container">

            <?PHP if (!empty($catalogo)) { ?>
                <div class="row">

                    <?php foreach ($catalogo as $juguete) { ?>
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="card">
                                <img src="images/covers/<?= $juguete->getImagen() ?>" class="card-img-top" alt="<?= $tit ?>">
                                <div class="card-body">
                                    <h5 class="card-title"> <span class="fw-bold"><?= $juguete->getNombre()?></span></h5>
                                    <p class="card-text"><?= $juguete->bajada_reducida(20) ?></p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Tipo de juego: <?= $juguete->getTipo_juego_id()?></li>
                                    <li class="list-group-item">Tipo de material: <?= $juguete->getMaterial_id()?></li>
                                    <li class="list-group-item">Cant. piezas: <?= $juguete->getCantidad_piezas()?></li>
                                    <li class="list-group-item">Edad recomendada: <?= $juguete->getEdad_recomendada_id()?> año/s</li>
                                  
                                </ul>
                                <div class="card-body">
                                    <div class="fs-3 mb-3 fw-bold text-center text-danger">Precio: $<?= $juguete->precio_formateado()?></div>
                                    <a href="index.php?vis=producto&id=<?= $juguete->getId()?>" class="btn btn-custom w-100 fw-bold">ver +</a>
                                </div>

                            </div>
                        </div>
                    <?PHP } ?>
                </div>
            <?PHP }  if(!empty($todos_juguetes)) { ?>
                <div class="row">
                    
                    <?php
                    $miObjetoJuguete = new Juguete();
$catalogoCompleto = $miObjetoJuguete->catalogo_completo();

// Mostrar los juguetes en el catálogo

foreach ($catalogoCompleto as $juguete) { ?>
    <div class="col-12 col-md-6 col-lg-4">
        <div class="card">
            <img src="images/covers/<?= $juguete->getImagen() ?>" class="card-img-top" alt="<?= $tit ?>">
            <div class="card-body">
                <h5 class="card-title"> <span class="fw-bold"><?= $juguete->getNombre()?></span></h5>
                <p class="card-text"><?= $juguete->bajada_reducida(20) ?></p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Tipo de juego: <?= $juguete->getTipo_juego_id()?></li>
                <li class="list-group-item">Tipo de material: <?= $juguete->getMaterial_id()?></li>
                <li class="list-group-item">Cant. piezas: <?= $juguete->getCantidad_piezas()?></li>
                <li class="list-group-item">Edad recomendada: <?= $juguete->getEdad_recomendada_id()?> año/s</li>
              
            </ul>
            <div class="card-body">
                <div class="fs-3 mb-3 fw-bold text-center text-danger">Precio: $<?= $juguete->precio_formateado()?></div>
                <a href="index.php?vis=producto&id=<?= $juguete->getId()?>" class="btn btn-custom w-100 fw-bold">ver +</a>
            </div>

        </div>
    </div>
<?PHP } 
echo "</div>";
?>
                </div>
            <?PHP }  if(!empty($todos_juguetes)&&!empty($catalogo)) { ?>
                <div class="row">
                    <div class="col-12 text-danger text-center h1"> NO SE ENCONTRARON PRODUCTOS DE ESE PERSONAJE</div>
                </div>
            <?PHP } ?>
   
        </div>

    </div>
</div>

