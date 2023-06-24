<?php

/**
 * Clase para proveer la conexión de PDO al proyecto.
 */
class Conexion
{

    private const DB_HOST = 'localhost';
    //private const DB_HOST = '127.0.0.1';
    private const DB_USER = 'root';
    private const DB_PASS = '';
    private const DB_NAME = 'thomy_tienda';
    //private const DB_PORT = '8080'; // Nueva constante para el puerto

    private const DB_DSN = 'mysql:host=' . self::DB_HOST . ';dbname=' . self::DB_NAME . ';charset=utf8mb4';

    /** @var PDO */
    // A las propiedades podemos, de así quererlo, definirles el tipo de dato que deben tener.
    //protected PDO $db;
    private static ?PDO $db = null;
    public function __construct()
    {
        try {

            $this->db = new PDO(self::DB_DSN, self::DB_USER, self::DB_PASS);
        } catch(Exception $e) {

            echo "<pre>";
            print_r($e);
            echo "</pre>";


            //die('Error al conectar con MySQL.');
        }
    }

    /**
     * Función que devuelve una conexión PDO lista para usar
     * @return PDO
     */
    public static function getConexion(): PDO
    {
        return $self->db;
    }
}
