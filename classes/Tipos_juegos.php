<?PHP

class Tipos_juegos
{
    protected $id;
    protected $tipos;
    protected $pedagogia_id;
    protected $edad_recomendada_id;

    /**
     * Devuelve los datos todos los tipos de juego
     * @return tipos_juegos[]
     */
    public function lista_completa(): array
    {
        $conexion = (new Conexion())->getConexion();
        $query = "SELECT * FROM tipos_juegos";

        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $result = $PDOStatement->fetchAll();


        return $result;
    }

    /**
     * Devuelve los datos de un tipo de pedagogia en particular
     * @param string $pedagogia_id 
     */
    public function juego_x_pedagogia(string $id): ?Tipos_juegos
    {
        $conexion = (new Conexion())->getConexion();
        $query = "SELECT * FROM tipos_juegos WHERE id = $id";

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
     * Devuelve los datos de un tipo de juego en particular
     * @param int $id El ID único de la serie 
     */
    public function get_x_id(int $id): ?Serie
    {
        $conexion = (new Conexion())->getConexion();
        $query = "SELECT * FROM tipos_juegos WHERE id = $id";

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
    public function getHistoria()
    {
        return $this->historia;
    }

    

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

  
}
