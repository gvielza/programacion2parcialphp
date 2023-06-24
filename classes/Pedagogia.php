<?PHP

class Pedagogia
{

    protected $id;
    protected $nombre;
    protected $foto_perfil;
    protected $caracteristicas;


        /**
     * Devuelve todas las pedagogias en base
     * @return Pedagogia[]
     */
    public function lista_pedagogias(): array
    {
        $conexion = (new Conexion())->getConexion();
        $query = "SELECT * FROM pedagogias";

        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $result = $PDOStatement->fetchAll();

        return $result;
    }

    /**
     * Devuelve los datos de una corriente pedagogica en particular
     * @param int $id El ID único de la corriente pedagógica
     */
    public function get_x_id(int $id): ?Pedagogia
    {
        $conexion = (new Conexion())->getConexion();
        $query = "SELECT * FROM pedagogias WHERE id = $id";

        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $result = $PDOStatement->fetch();

     
        return $result ?? null;
    }

    /**
     * Get the value of nombre
     */ 
    public function getNombre()
    {
        return $this->nombre;
    }


    /**
     * Get the value of caracteristicas
     */
    public function getCaracteristicas()
    {
        return $this->caracteristicas;
    }

    /**
     * Get the value of foto_perfil
     */
    public function getImagen()
    {
        return $this->foto_perfil;
    }

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }
}
