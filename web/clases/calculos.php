<?php
include './clases/conexion.php';

class procesos {

    private $codi = "";

    function conteo($consulta) {
        $estado = new conexion();
        $resultado = $estado->consulta($consulta);
        $fila = pg_fetch_array($resultado);
        $tam = strlen($fila['codigosform']);
        $v = array();
        $con = 0;
        for ($i = 0; $i < $tam; $i++) {
            if (substr($fila['codigosform'], $i, 1) != '.') {
                $this->codi = $this->codi . substr($fila['codigosform'], $i, 1);
            } else {
                $v[$con] = $this->codi;
                $con++;
                $this->codi = "";
            }
        }
        return $_SESSION['a'] = $v;
    }

    function formulas($consulta,$id) {
        $estado = new conexion();
        $resultado = $estado->consulta($consulta);
        $total = pg_num_rows($resultado);
        $v = array();
        $t = array();

        if ($total > 0) {
            $con = 0;
            while ($fila = pg_fetch_array($resultado)) {

                $tam = strlen($fila['calculo_formula']);
                $t[$con] = $fila['cod_formula'];
                $codigo = "";
                $opte = "0";
                $optener = "";
                for ($i = 0; $i < $tam; $i++) {
                    $sim = substr($fila['calculo_formula'], $i, 1);
                    if ($sim != '0' && $sim != '1' && $sim != '2' && $sim != '3' && $sim != '4' && $sim != '5' && $sim != '6' && $sim != '7' && $sim != '8' && $sim != '9') {
                        if ($codigo != "") {
                            $optener = $estado->consulta("select valor,codbal from balances where codcuenta='" . $codigo . "' and codper='$id'");
                            if (pg_num_rows($optener) > 0) {
                                $opte = pg_fetch_array($optener);
                                $this->codi = $this->codi . $opte['valor'];
                                $codigo = "";
                            } else {
                                $this->codi = $this->codi . $codigo;
                                $codigo = "";
                            }
                        }
                        $this->codi = $this->codi . $sim;
                    } else {

                        $codigo = $codigo . $sim;
                    }
                }
               $taman = strlen($this->codi);
                $final="";
                for ($t = 1; $t < $taman-1; $t++) {
                    $final=$final.substr($this->codi, $t, 1);
                }
                $v[$con] = $final;
                $con++;
                $this->codi = "";
            }
        } else {
            echo 'NO EXISTEN REGISTROS';
        }
		
        return $_SESSION['b'] = $v;
		
    }

    function codigo($consulta) {
        $estado = new conexion();
        $resultado = $estado->consulta($consulta);
        $total = pg_num_rows($resultado);
        $t = array();

        if ($total > 0) {
            $con = 0;
            while ($fila = pg_fetch_array($resultado)) {
                $t[$con] = $fila['cod_formula'];
                $con++;
            }
        } else {
            echo 'NO EXISTEN REGISTROS';
        }
        return $_SESSION['c'] = $t;
    }

    function enunciado($tabla, $codigo, $campo, $condicion) {
        $consulta = "select $campo from $tabla where $condicion='$codigo'";
        $estado = new conexion();
        $resultado = $estado->consulta($consulta);
        $total = pg_num_rows($resultado);
        $q = "";

        if ($total > 0) {
            $fila = pg_fetch_array($resultado);
            $q = $fila[$campo];
        } else {
            echo 'NO EXISTEN REGISTROS';
        }
        return $_SESSION['d'] = $q;
    }

    function valor($formula) {
        $consulta = "select $formula ::float as valor";
        $estado = new conexion();
        $resultado = $estado->consulta($consulta);
        $total = pg_num_rows($resultado);
        $q = "";
        if ($total > 0) {
            $fila = pg_fetch_array($resultado);
            $q = round($fila['valor'],2);
        } else {
            $q= 'VALORES INCOMPATIBLES PARA ESTA FÓRMULA=> NO EXISTE RESULTADO';
        }
        return $_SESSION['e'] = $q;
    }

    function condicionante($formula, $valor) {
        $consulta = "select * from indices where  cod_formula='$formula'";
        $estado = new conexion();
        $resultado = $estado->consulta($consulta);
        $total = pg_num_rows($resultado);
        $w = "";
        if ($total > 0) {
            while ($fila = pg_fetch_array($resultado)) {
                $contruye = $estado->consulta("select " . $valor . $fila['rango'] . " as condi");
                $y = pg_fetch_array($contruye);
                if ($y['condi'] == 't') {
                    $rem = str_replace("&","(".$valor.")", $fila['descripcion']);
                    $w = $rem;
                    break;
                } else {
                    $w = 'POR ESTE INSTANTE NO EXISTEN ÍNDICES PARA REALIZAR ESTA ACCIÓN';
                }
            }
        } else {
            $w= 'POR ESTE INSTANTE NO EXISTEN ÍNDICES PARA REALIZAR ESTA ACCIÓN';
        }
        return $_SESSION['f'] = $w;
    }

}
