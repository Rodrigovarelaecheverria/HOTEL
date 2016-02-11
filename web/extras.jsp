<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="clases.conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = (String) session.getAttribute("varUsuario");
    conexion con = new conexion();
    ResultSet rs = con.consulta("select * from personas where correo='" + user + "'");
    String nom = "", apel = "", foto = "", nivel = "";
    while (rs.next()) {
        nom = rs.getString("nombres");
        apel = rs.getString("apellidos");
        foto = rs.getString("foto");
        nivel = rs.getString("tpersona");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <title>HOTEL SIERRA NORTE</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Classic Hotel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->

        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css"/>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <script src="jquery.ui.datepicker-es.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            $(function () {

                $("#from").datepicker({
                    onClose: function (selectedDate) {
                        $("#to").datepicker("option", "minDate", selectedDate);

                    }
                });

                $("#to").datepicker({
                    onClose: function (selectedDate) {
                        $("#from").datepicker("option", "maxDate", selectedDate);
                    }
                });
            });

            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>

        <script language='JavaScript'>

            var cont = 1;
            var suma = 0.0;

            function addRowX()  //Esta la funcion que agrega las filas :
            {
                cont++;
                var indiceFila = 1;
                myNewRow = document.getElementById('tabla2').insertRow(-1);
                myNewRow.id = indiceFila;
                myNewCell = myNewRow.insertCell(-1);
                myNewCell.innerHTML = '<td><input type="text" onkeydown="return numeros(event)" value="0"  size="10"  name="cantidad_' + cont + '"onChange="mul(' + cont + ');" /></td>';
                myNewCell = myNewRow.insertCell(-1);
                myNewCell.innerHTML = '<input type="text" size="10"  name="producto_' + cont + '" onClick="javascript:mypopup1(' + cont + ')"/>';
                myNewCell = myNewRow.insertCell(-1);
                myNewCell.innerHTML = '<input type="text" value="0" size="10"  name="preu_' + cont + '"/>';

                myNewCell = myNewRow.insertCell(-1);
                myNewCell.innerHTML = '<input type="text" size="10" name="pret_' + cont + '">';


                //myNewCell.innerHTML='<input type="text" size="8" name="cant" id="cant">';

                //   myNewCell = myNewRow.insertCell(-1);
                //  myNewCell.innerHTML = '<input type="button" name="b' + cont + '" value=".." onClick="javascript:mul(' + cont + ');" >';
                indiceFila++;
            }
            //////////////Borrar() ///////////
            function borrar() {
                var table = document.getElementById('tabla2');
                if (table.rows.length > 1)
                {
                    table.deleteRow(table.rows.length - 1);
                    cont = form.var_cont.value;

                    cont--;
                    form.var_cont.value = cont;
                }
            }

            ////////////FUNCION ASIGNA VALOR DE CONT PARA EL FOR DE MOSTRAR DATOS MP-MOD-TT////////

            function mul(p)
            {

                var c = 0;
                var s = "";
                var t = 0;

                //s=p.toString();
                //alert(s);
                //alert(document.form.code_p.value);
                var contador = document.forms['form'].elements['preu_' + p];
                // alert(contador.value);
                var can = document.forms['form'].elements['cantidad_' + p];

                var t = parseInt(contador.value);
                var t1 = parseInt(can.value);
                var t3 = t * t1;

                suma = suma + t3;
                iva = (suma * 12) / 100;
                des = 0;
                tot = (suma + iva) - des;
                document.forms['form'].elements['pret_' + p].value = t3;
                //document.forms['form'].elements['id_' + p].value = document.form.txtIdfactura.value;
                //  document.forms['form'].elements['txtsubtotal'].value = suma;
                // document.forms['form'].elements['txtiva'].value = iva;
                document.forms['form'].elements['txt_total'].value = suma;
                //document.forms['form'].elements['var_cont'].value = cont;

            }

            function asigna()
            {
                valor = document.form.var_cont.value = cont;
                document.form.total.value = suma;

            }


            function mypopup()
            {

                mywindow = window.open("busuario.jsp", "mywindow", "location=1,status=1,scrollbars=1,  width=800,height=600");
                mywindow.moveTo(100, 300);

            }

            function mypopup1(c)
            {

                var f = "buscar_prod.jsp?f=" + c.toString();
                mywindow = window.open(f, "mywindow", "location=1,status=1,scrollbars=1,  width=800, height=1100");
                mywindow.moveTo(300, 0);

            }
        </script>
        <link rel="icon" href="./images/snl.fw.png" />
        <!-- start-smoth-scrolling -->
    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">
                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="index.html"><img src="images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="../images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                            <ul class="nav1">
                                <li><a href="index.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="INICIO"  >INICIO</a></li>

                                <li><a href="informativas/galeria.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="GALERIA">GALERÍA</a></li>

                                <li><a href="informativas/servicios.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="SERVICIOS">SERVICIOS</a></li>

                                <li><a href="informativas/ubicacion.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="LUGAR">ENCUENTRANOS</a></li>

                                <li><a href="#" 
                                       data-toggle="tooltip" data-placement="top" title="CONOCE">CONOCE</a>
                                    <ul>
                                        <li><a class="active" href="informativas/acercade.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="QUIENES SOMOS">QUIENES SOMOS</a></li>
                                        <li><a class="active" href="informativas/mision.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="MISION Y VISION">MISIÓN Y VISIÓN</a></li>
                                        <li><a class="active" href="informativas/nosotros.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="ACERCA DE">ACERCA DE</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </nav>
                        <!-- script for menu -->
                        <script>
                            $("span.menu").click(function () {
                                $("ul.nav1").slideToggle(300, function () {
                                    // Animation complete.
                                });
                            });
                        </script>
                        <!-- //script for menu -->

                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!--about-->
        <!--start-about-->
        <div class="about">
            <div class="container">
                <div class="about-top heading">
                    <h2 class="tittle-one"><strong>ADMINISTRACIÓN DE RESERVAS</strong></h2>
                </div>

                <div id="separar"></div>-->
                <%                    String id = request.getParameter("id");
                    String consulta = "select r.idreservai,p.dni,p.nombres,p.apellidos,r.fentrada,r.fsale,r.estado,r.foto,r.total,r.chest from reservasi r, personas p  where  p.dni=r.dni and r.idreservai=" + id + " order by r.idreservai desc";
                    ResultSet rs1 = con.consulta(consulta);
                    String codigo = "", dni = "", nombre = "", apellido = "";
                    while (rs1.next()) {
                        codigo = rs1.getString("idreservai");
                        dni = rs1.getString("dni");
                        nombre = rs1.getString("nombres");
                        apellido = rs1.getString("apellidos");
                    }
                %>

                <div id="centro_admin" align="center">
                    <div id="tarjeta" style="display:inline-block;">
                        <form name="form" id="form" method="post" action="">
                            <table align="center">
                                <tr>
                                    <td align="center" colspan="3" style='background-color: #3253bf; color: white;'> 
                                        <h4><strong>AÑADIR PRODUCTOS EXTRA</strong></h4>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="center" colspan="1" style='background-color: #3253bf; color: white;'> 
                                        <h4><strong>Código de reserva</strong></h4>
                                    </td>
                                    <td align="center" colspan="2"> 

                                        <%out.print(codigo);%>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="1" style='background-color: #3253bf; color: white;'> 
                                        <h4><strong>Cédula:</strong></h4>
                                    </td>
                                    <td align="center" colspan="2"> 

                                        <%out.print(dni);%>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="1" style='background-color: #3253bf; color: white;'> 
                                        <h4><strong>Código de reserva</strong></h4>
                                    </td>
                                    <td align="center" colspan="2"> 

                                        <%out.print(nombre + " " + apellido);%>
                                    </td>
                                </tr>
                                <tr>
                                <table onClick="" id="tabla2">

                                    <tr >
                                        <td align="center" style='background-color: #3253bf; color: white;'>Cantidad</td>
                                        <td align="center" style='background-color: #3253bf; color: white;'>Producto</td>
                                        <td align="center" style='background-color: #3253bf; color: white;'>P. Unitario</td>
                                        <td align="center" style='background-color: #3253bf; color: white;'>P.Total</td>

                                    </tr>

                                </table>
                                <table>

                                    <tr> 
                                        <td align="center" colspan="2" style='background-color: #3253bf; color: white;'>Total</td>
                                        <td align="center" >
                                            <input type="text" name="txt_total">
                                        </td>
                                    </tr>

                                    <tr>
                                        <td align="center" style='background-color: #3253bf;'><input type="button" onClick="addRowX()" value=" + " style="width:100%;"/></td>
                                        <td align="center" style='background-color: #3253bf;'><input type="button" onClick="borrar()" value=" - " style="width:100%;"/></td>
                                        <td align="center" style='background-color: #3253bf;'>
                                            <strong><input type="submit" name="btn_extra" value="AGREGAR EXTRAS" style="width:100%;"/></strong>
                                        </td>
                                    </tr>

                                    <tr>
                                </table>
                        </form>
                        <%
                            if (request.getParameter("btn_extra") != null) {
                                String tot1 = request.getParameter("txt_total");
                                con.consulta("UPDATE reservasi SET extras='" + tot1 +"' WHERE idreservai=" + id + "");
                                response.sendRedirect("./reservas_admin.jsp");
                            }
                        %>


                    </div>

                    <div id="separar"></div>                

                    <!--<div align="center" id="configurar">
    
                    <%   if (user == null) {
                    %>
                    <br>
    
                    <h4 align="center">Inicia sesión en tu cuenta</h4>
                    <br>
    
                    <form  id="logina" name="logina" action="reservas_admin.jsp" method="GET">
                        <div class="form-group">
                            <input type="text" required class="form-control" id="usuario" name="usuario" placeholder="Ingrese su Correo">
                        </div>
                        <div class="form-group">
                            <input type="password" required class="form-control" id="clave" name="clave" placeholder="Ingrese su password">
                        </div>
    
                        <button type="submit" class="btn btn-default btn-green" id="buscar" name="buscar">LOGGIN</button>
                    </form> 
                    <br>
                    No tienes cuenta?: <a href="ncliente.jsp">Registrate</a>
                    <%
                        //CODIGO DE ACCESO
                        if (request.getParameter("buscar") != null) {
                            int b = 0;
                            String us = null; //para tomar el usuario de la base de datos
                            String pa = null;
                            String usuario = request.getParameter("usuario");
                            String clave = request.getParameter("clave");
                            String tipo = "C1";

                            rs = con.consulta("select count(*) from personas where tpersona='" + tipo + "'  and  correo='" + usuario + "'  and clave=md5('" + clave + "')");
                            while (rs.next()) {
                                us = rs.getString("count");
                                if (us.equals("1")) {
                                    b = 1;
                                } else {
                                    b = 0;
                                }
                            }
                            if (b == 1) {
                                String ja = new String(usuario);
                                HttpSession op = request.getSession();
                                op.putValue("varUsuario", ja);
                                out.println("<script>alert('ACCESO CONCEDIDO')</script>");
                                out.println("<script>location.reload(true);</script>");

                            } else {

                                out.println("<script>alert('USUARIO O PASSWORD INCORRECTOS')</script>");

                            }
                        }
                        //FIN DE CODIGO DE ACCESO

                    } else {%>
    
                    <h3 class="tittle-one">CONFIGURACIÓN</h3>
                    <br>
                    <p class="centered"><img src=".<% out.print(foto); %>" class="img-circle" width="60" ></p>
                    <br>
                    <h5 class="centered"><% out.print(nom + " " + apel);%></h5>
                    <br>
    
                    <div id="menu_conf">
                        <a href="perfil.jsp">PERFIL</a>
                    </div>
                    <div id="menu_conf">
                        <a href="foto.jsp">FOTO</a>
                    </div>
                       <div id="menu_conf">
                        <a href="./administracion/panel.jsp">ADMINISTRACION</a>
                    </div>
                    <div id="menu_conf">
                        <a href="clave.jsp">CONTRASEÑA</a>
                    </div>
                    <form  name="logina" action="index.jsp" method="GET">
                        <button id="menu_conf" name="cerrar">CERRAR SESIÓN</button>
                    </form>
                    <%
                            if (request.getParameter("cerrar") != null) {
                                session.invalidate();
                                out.println("<script>location.reload(true);</script>");
                            }
                        }
                    %>
    
    
                </div>-->
                </div>
            </div>
            <!--footer-->
            <div class="footer">
                <div class="container">				 	
                    <div class="col-md-3 ftr_navi ftr">
                        <h3>ESPACIO DE NAVEGACIÓN</h3>
                        <ul>
                            <li><a href="index.jsp" >INICIO</a></li>
                            <li><a href="galeria.jsp" >GALERÍA</a></li>
                            <li><a href="servicios.jsp" >SERVICIOS</a></li>
                            <li><a href="ubicacion.jsp" >UBICACIÓN</a></li>
                            <li><a href="contactos.jsp" >CONTACTOS</a></li>
                            <li><a href="acercade.jsp">QUIENES SOMOS</a></li>
                            <li><a href="mision.jsp">MISIÓN Y VISIÓN</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 ftr_navi ftr">
                        <h3>HABITACIONES</h3>
                        <ul>
                            <li>HABITACIONES SIMPLES</li>
                            <li>HABITACIONES DOBLES</li>
                            <li>HABITACIONES TRIPLES</li>						
                            <li>HABITACIONES MULTIPLES</li>
                        </ul>
                    </div>
                    <div class="col-md-3 ftr_navi ftr">
                        <h3>DIRECCIÓN</h3>
                        <ul>
                            <li>AV. MARIANO ACOSTA Y MANUELA CAÑIZARES</li>
                            <li>TELÉFONO:(06)2630706</li>
                            <li>EMAIL:edisonlopezsa@gmail.com</li>
                        </ul>
                    </div>
                    <div class="col-md-3 ftr-logo">
                        <a href="index.html"><img src="images/iconsn.fw.png" alt=""/></a>
                        <ul>
                            <li><a href="#" class="f1"> </a></li>
                            <li><a href="#" class="f2"> </a></li>
                            <li><a href="#" class="f3"> </a></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <!--footer-->
            <!-- copy -->
            <div class="copy-right">
                <div class="container">
                    <p>Hotel Sierra Norte Derechos Reservados 2015 | Diseñado por: Rodrigo Varela, Alexis Márquez, Christian Suárez</p>
                </div>
            </div>
            <!-- //copy -->
            <!-- for bootstrap working -->
            <script src="js/bootstrap.js"></script>
            <!-- //for bootstrap working -->
            <!-- smooth scrolling -->
            <script type="text/javascript">
                                                $(document).ready(function () {
                                                    /*
                                                     var defaults = {
                                                     containerID: 'toTop', // fading element id
                                                     containerHoverID: 'toTopHover', // fading element hover id
                                                     scrollSpeed: 1200,
                                                     easingType: 'linear' 
                                                     };
                                                     */
                                                    $().UItoTop({easingType: 'easeOutQuart'});
                                                });
            </script>
            <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
            <!-- //smooth scrolling -->
    </body>
</html>