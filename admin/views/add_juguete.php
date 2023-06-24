<div class="row my-5">
    <div class="col">
        <h1 class="text-center mb-5 fw-bold">Agregar un nuevo Juguete</h1>
        <div class="row mb-5 d-flex align-items-center">
            <form class="row g-3" action="actions/add_personaje_acc.php" method="POST" enctype="multipart/form-data">

                <div class="col-md-6 mb-3">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="alias" class="form-label">Descripcion</label>
                    <input type="text" class="form-control" id="alias" name="alias" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="imagen" class="form-label">Tipo de juego id</label>
                    <input class="form-control" type="file" id="imagen" name="imagen" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="imagen" class="form-label">Material id</label>
                    <input class="form-control" type="file" id="imagen" name="imagen" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="imagen" class="form-label">Cantidad de piezas</label>
                    <input class="form-control" type="file" id="imagen" name="imagen" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="imagen" class="form-label">edad recomendada</label>
                    <input class="form-control" type="file" id="imagen" name="imagen" required>
                </div>

               

                <button type="submit" class="btn btn-primary">Cargar</button>

            </form>
        </div>
    </div>
</div>