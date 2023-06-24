<?php
class Juguete 
{
    private $id;
    private $nombre;
    private $descripcion;
    private $tipo_juego_id;
    private $material_id;
    private $cantidad_piezas;
    private $edad_recomendada_id;
    private $imagen;
    private $pedagogia_id;
    private $coleccion;
    private $precio;  


/**
 * Devuelve el catalogo completo
 */
public function catalogo_completo(): array
    {
       $conexion = (new Conexion())->getConexion();
       $query = "SELECT * FROM juguetes";

       $PDOStatement = $conexion-> prepare ($query);
       $PDOStatement -> setFetchMode(PDO::FETCH_CLASS, self::class);
       $PDOStatement->execute();

       $catalogo= $PDOStatement->fetchAll();

        return $catalogo;
    }

    /**
     * Devuelve el catalogo del producto con una clasificacion de juego en particular
     * @param int $tipo_juego_id Un string con el nombre del tipo de juego a buscar
     * @return Juguete[] Un array con todos los productos de esa clasificacion de juego
     */
    public function catalogo_tipo_juego(int $tipo_juego_id): array
    {
       $conexion = (new Conexion())->getConexion();
       $query = "SELECT * FROM juguetes WHERE 
       tipo_juego_id = $tipo_juego_id";

       $PDOStatement = $conexion-> prepare ($query);
       $PDOStatement -> setFetchMode(PDO::FETCH_CLASS, self::class);
       $PDOStatement->execute();
       $catalogo= $PDOStatement->fetchAll();
        return $catalogo;
       
    }
    public function tipo_material(int $material_id): string
    {
       $conexion = (new Conexion())->getConexion();
       $query = "SELECT nombre FROM material INNER JOIN  juguetes on material.id=juguetes.material_id
       WHERE material.material_id=$material_id";
       

       $PDOStatement = $conexion-> prepare ($query);
       $PDOStatement -> setFetchMode(PDO::FETCH_CLASS, self::class);
       $PDOStatement->execute();

       $mat= $PDOStatement->fetch();

        return $mat;
       
    }



    /**
     * Devuelve los datos de un producto en particular
     * @param int $idProducto El ID único del producto a mostrar 
     */
    public function producto_x_id(int $idProducto): Juguete
    {
        $conexion = (new Conexion())->getConexion();
       $query = "SELECT * FROM juguetes WHERE 
       id = $idProducto";

       $PDOStatement = $conexion-> prepare ($query);
       $PDOStatement -> setFetchMode(PDO::FETCH_CLASS, self::class);
       $PDOStatement->execute();

       $result=$PDOStatement -> fetch();

       return $result ?? null;
    }


    /**
     * Devuelve el precio de la unidad, formateado correctamente
     */
    public function precio_formateado(): string
    {
        return number_format($this->precio, 2, ",", ".");
    }

 /**
     * Esta función devuelve las primeras x palabras de un párrafo 
     * @param int $cantidad Esta es la cantidad de palabras a extraer (Opcional)
     */
    public function bajada_reducida(int $cantidad = 10): string
    {
        $texto = $this->descripcion;

        $array = explode(" ", $texto);
        if (count($array) <= $cantidad) {
            $resultado = $texto;
        } else {
            array_splice($array, $cantidad);
            $resultado = implode(" ", $array) . "...";
        }

        return $resultado;
    }

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Get the value of nombre
     */ 
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Get the value of descripcion
     */ 
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Get the value of tipo_juego
     */ 
    public function getTipo_juego_id()
    {
        return $this->tipo_juego_id;
    }

    /**
     * Get the value of Material
     */ 
    public function getMaterial_id()
    {
        return $this->material_id;
    }


    /**
     * Get the value of cantidad_piezas
     */ 
    public function getCantidad_piezas()
    {
        return $this->cantidad_piezas;
    }

    /**
     * Get the value of edad_recomendada
     */ 
    public function getEdad_recomendada_id()
    {
        return $this->edad_recomendada_id;
    }

    /**
     * Get the value of imagen
     */ 
    public function getImagen()
    {
        return $this->imagen;
    }
/**
     * Get the value of pedagogia
     */ 
    public function pedagogia_id()
    {
        return $this->pedagogia_id;
    }

    
    /**
     * Get the value of coleccion
     */ 
    public function getColeccion()
    {
        return $this->coleccion;
    }

    /**
     * Get the value of precio
     */ 
    public function getPrecio()
    {
        return $this->precio;
    }
}