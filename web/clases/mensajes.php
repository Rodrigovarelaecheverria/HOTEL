<?php

class mensaje {

    function guardado() {
        echo " <script type='text/javascript'>
       alert('Se Ha Guardado Exitosamente');
        </script>";
    }

    function existe() {
        echo " <script type='text/javascript'>
       alert('Este registro ya Existe en la Base de Datos');
        </script>";
    }

    function existeu() {
        echo " <script type='text/javascript'>
       alert('Usuario Exisente en la base Cambie');
        </script>";
    }

    function noexisteu() {
        echo " <script type='text/javascript'>
       alert('Usuario no Existente');
       location.href='acceso.php';
        </script>";
    }

    function borrado() {
        echo " <script type='text/javascript'>
       alert('El Registro se ha desactivado');
        </script>";
    }

    function eliminado() {
        echo " <script type='text/javascript'>
       alert('El Registro se ha Elimnado definitivamente');
        </script>";
    }

    function activado() {
        echo " <script type='text/javascript'>
       alert('El registro se vuelto a activar');
        </script>";
    }

    function actualizado() {
        echo " <script type='text/javascript'>
       alert('El registro se actualizo exitosamente');
        </script>";
    }

    function panel() {
        echo "<script>
	location.href='administracion.php';
    </script> ";
    }

    function temporal() {
        echo "<script>
            alert('Temporalmente desactivado esta siendo configurado');
	location.href='administracion.php';
    </script> ";
    }

}
