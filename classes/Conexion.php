<?PHP

class Conexion
{

    private const DB_SERVER = 'localhost';
    //private const DB_SERVER = '127.0.0.1';
    private const DB_USER = 'root';
    private const DB_PASS = '';
    private const DB_NAME = 'thomy_tienda';
    

    private const DB_DSN = 'mysql:host=' . self::DB_SERVER . ';dbname=' . self::DB_NAME . ';charset=utf8mb4';

    /**
     * Esta propiedad es te tipo PDO
     */
    private static ?PDO $db = null;

    private static function conectar()
    {

        try {
            self::$db = new PDO(self::DB_DSN, self::DB_USER, self::DB_PASS, array(
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
              ));
            // echo "<p>Acabo de crear una conexion para poder traer datos! =D</p>";
        } catch (PDOException $e) {
            die('Error al conectar con MySQL: ' . $e->getMessage());
        }
        
    }

    /**
     * Método que devuelve una conexión PDO lista para usar
     * @return PDO
     */
    public static function getConexion(): PDO
    {

        if(self::$db === null){
            self::conectar();
        }
        return self::$db;
    }
}
