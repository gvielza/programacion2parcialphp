<?PHP

class Edad_recomendada
{
    protected $id;
    protected $estadio;
    protected $caracteristicas;

    /**
     * Devuelve los datos sobre las edades reomendadas para los diferentes juguetes
     * @return edad_recomendada[]
     */
    public function lista_completa(): array
    {
        $conexion = (new Conexion())->getConexion();
        $query = "SELECT * FROM edad_recomendada";

        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $result = $PDOStatement->fetchAll();


        return $result;
    }

    /**
     * Devuelve las caracteristicas de una edad en particular
     * @param int $id El ID único de la serie 
     */
    public function get_x_id(int $id): ?Edad_recomendada
    {
        $conexion = (new Conexion())->getConexion();
        $query = "SELECT * FROM edad_recomendad WHERE id = $id";

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
     * Get the value of estadio
     */ 
    public function getEstadio()
    {
        return $this->estadio;
    }

    /**
     * Get the value of caracteristicas
     */ 
    public function getCaracteristicas()
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
