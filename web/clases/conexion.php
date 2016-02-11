<?php

class conexion {

    private $base = "reservas";
    private $usuario = "postgres";
    private $contraseña = "root";
    private $servidor = "";
    private $puerto = "5432";
	private $lista = array("localhost", "192.168.4.82","192.168.4.83","192.168.4.84");

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

    function contraseñaget() {
        return $this->contraseña;
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

    function contraseñaset($contraseña) {
        $this->contraseña = $contraseña;
    }

    function conectar() {
       for ($i = 0; $i < count($this->lista); $i++) {
            $ips = $this->lista[$i];
            $cadenaConexion = "host=$ips port=$this->puerto dbname=$this->base user=$this->usuario password=$this->contraseña";
            $conex = pg_connect($cadenaConexion);
            if ($conex != "") {
                break;
            }
        }

        return $conex;
    }

    function consulta($aux) {
        $conex = $this->conectar();
        $query = $aux;
        $resultado = pg_query($conex, $query);
        return $resultado;
    }

}
