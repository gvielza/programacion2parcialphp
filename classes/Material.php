<?PHP

class Material
{
    protected $id;
    protected $nombre;
    protected $caracteristicas;

    /**
     * Devuelve los datos de los tipos de materiales
     * @return material[]
     */
    public function lista_completa(): array
    {
        $conexion = (new Conexion())->getConexion();
        $query = "SELECT * FROM material";

        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $result = $PDOStatement->fetchAll();


        return $result;
    }

    /**
     * Devuelve los datos de un material en particular
     * @param int $id El ID único de la serie 
     */
    public function get_x_id(int $id): ?Material
    {
        $conexion = (new Conexion())->getConexion();
        $query = "SELECT * FROM series WHERE id = $id";

        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $result = $PDOStatement->fetch();

        if (!$result) {
            return null;
        }
        return $result;
    }

    /**
     * Get the value of nombre
     */ 
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Get the value of historia
     */ 
    public function getCaraccteristicas()
    {
        return $this->caracteristicas;
    }

    

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

  
}
