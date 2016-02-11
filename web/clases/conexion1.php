<?php

class conexion {

    private $base = "reservas";
    private $usuario = "postgres";
    private $contrasena = "root";
    private $servidor = "localhost";
    private $puerto = "5432";

    function proteger($v) {
        $v = htmlentities($v, ENT_QUOTES);
        $v = trim($v);
        return $v;
    }

    function baseget() {
        return $this->base;
    }

    function servidorget() {
        return $this->servidor;
    }

    function usuarioget() {
        return $this->usuario;
    }

    function contrasenaget() {
        return $this->contrasena;
    }

    function baseset($base) {
        $this->base = $base;
    }

    function servidorset($servidor) {
        $this->servidor = $servidor;
    }

    function usuarioset($usuario) {
        $this->usuario = $usuario;
    }

    function contrasenaset($contrasena) {
        $this->contrasena = $contrasena;
    }

    function conectar() {
        $cadenaConexion = "host=$this->servidor port=$this->puerto dbname=$this->base user=$this->usuario password=$this->contrasena";
        $conex = pg_connect($cadenaConexion) or die("Error en la Conexión: " . pg_last_error());
        return $conex;
    }

    function consulta($aux) {
        $conex = $this->conectar();
        $query = $aux;
        $resultado = pg_query($conex, $query) or die("Error en la Consulta SQL");
        return $resultado;
    }

}
