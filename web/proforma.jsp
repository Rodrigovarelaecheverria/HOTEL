<%@page import="java.text.DecimalFormat"%>
<%@page import="clases.MailSender"%>
<%@page import="clases.conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = (String) session.getAttribute("varUsuario");
    conexion con = new conexion();
    ResultSet rs = con.consulta("select * from personas where correo='" + user + "'");
    String iden = "", nom = "", apel = "", foto = "", entra = "", sale = "";
    String id_hab1 = "", id_hab2 = "", id_hab3 = "";
    String tip_hab1 = "", tip_hab2 = "", tip_hab3 = "";
    String precio_h1 = "", precio_h2 = "", precio_h3 = "";
    int v1 = 0, v2 = 0, v3 = 0, total = 0;
    int diasm = 0;
    entra = (request.getParameter("f_entrar"));
    sale = (request.getParameter("f_salir"));

    while (rs.next()) {
        iden = rs.getString("dni");
        nom = rs.getString("nombres");
        apel = rs.getString("apellidos");
        foto = rs.getString("foto");
    }

    if (request.getParameter("group1") != null) {
        id_hab1 = request.getParameter("group1");

        ResultSet rs1 = con.consulta("select t.tipo_hab as tipo, precio from habitaciones h, tipo_habitaciones t where h.tipo_hab= t.cod_hab and cod_habitacion='" + id_hab1 + "'");

        while (rs1.next()) {
            tip_hab1 = rs1.getString("tipo");
            precio_h1 = rs1.getString("precio");
            v1 = Integer.parseInt(precio_h1);
        }
    }

    if (request.getParameter("group2") != null) {
        id_hab2 = request.getParameter("group2");

        ResultSet rs2 = con.consulta("select t.tipo_hab as tipo, precio from habitaciones h, tipo_habitaciones t where h.tipo_hab= t.cod_hab and cod_habitacion='" + id_hab2 + "'");

        while (rs2.next()) {
            tip_hab2 = rs2.getString("tipo");
            precio_h2 = rs2.getString("precio");
            v2 = Integer.parseInt(precio_h2);
        }
    }

    if (request.getParameter("group3") != null) {
        id_hab3 = request.getParameter("group3");

        ResultSet rs3 = con.consulta("select t.tipo_hab as tipo, precio from habitaciones h, tipo_habitaciones t where h.tipo_hab= t.cod_hab and cod_habitacion='" + id_hab3 + "'");

        while (rs3.next()) {
            tip_hab3 = rs3.getString("tipo");
            precio_h3 = rs3.getString("precio");
            v3 = Integer.parseInt(precio_h3);
        }
    }
    String fentrada = request.getParameter("f_entrar");
    String fsalida = request.getParameter("f_salir");
    if (request.getParameter("enviar_proforma") != null) {

        fentrada = request.getParameter("f_entrada");
        fsalida = request.getParameter("f_salida");
        String h1 = request.getParameter("h1");
        String p1 = request.getParameter("p1");
        String h2 = request.getParameter("h2");
        String p2 = request.getParameter("p2");
        String h3 = request.getParameter("h3");
        String p3 = request.getParameter("p3");
        String tot = request.getParameter("tot");

        con.consulta("INSERT INTO reservasi( dni,  fentrada, fsale, total)VALUES ('" + iden + "',  '" + fentrada + "', '" + fsalida + "', '" + tot + "');");
        rs = con.consulta("select idreservai from reservasi order by idreservai desc limit 1");
        String codigos = "";
        while (rs.next()) {
            codigos = rs.getString("idreservai");
        }
        if (!h1.equals(null)) {
            con.consulta("INSERT INTO reservas( tipo_habitacion, precio, idreservai)VALUES ( '" + h1 + "', '" + p1 + "', (select idreservai from reservasi order by idreservai desc limit 1));");
        }
        if (!h2.equals(null)) {
            con.consulta("INSERT INTO reservas( tipo_habitacion, precio, idreservai)VALUES ( '" + h2 + "', '" + p2 + "', (select idreservai from reservasi order by idreservai desc limit 1));");
        }

        if (!h3.equals(null)) {
            con.consulta("INSERT INTO reservas( tipo_habitacion, precio, idreservai)VALUES ( '" + h3 + "', '" + p3 + "', (select idreservai from reservasi order by idreservai desc limit 1));");
        }
        ResultSet rs5 = con.consulta("select * from reservasi order by idreservai desc limit 1");
        String ultimo = "";
        while (rs5.next()) {
            ultimo = rs5.getString("idreservai");
        }
        con.consulta("update habitaciones set disponible='false' from reservas where habitaciones.cod_habitacion=reservas.tipo_habitacion and reservas.idreservai=" + ultimo + " ");
       
        MailSender ms = new MailSender();
        ms.mensaje("HOTEL SIERRA NORTE TE DA LA BIENVENIDA\n"
                + "\n"
                + "Cuenta con 30 habitaciones con banos privados.\n"
                + "Television por cable.\n"
                + "Servicio de WIFI.\n"
                + "Amplio parqueadero.\n"
                + "Piscinas temperadas y cubierta.\n"
                + "Turco e hidromasaje.\n"
                + "Servicio personalizado.\n"
                + "Personal de confianza y capacitado.\n"
                + "Tarifas especiales para grupos.\n"
                + "\n"
                + "Para visualizar o impirimir su proforma haga click en el siguiente enlace: \n"
                + " \n"
                + "http://localhost:8080/hotel/proformav.jsp?id=" + codigos + "");
        ms.para(user);
        ms.asunto("Proforma de la reservacion en el Hotel Sierra Norte");
        ms.SendMail();
        out.println("<script>alert('LA PROFORMA HA SIDO ENVIADA A SU CORREO, GRACIAS POR RESERVAR EN *HOTEL SIERRA NORTE*')</script>");
        out.println("<script language='javascript'>window.location='index.jsp'</script>;");

    }
    rs = con.consulta("SELECT EXTRACT(DAY FROM age('" + fsalida + "','" + fentrada + "' ) )as dias");
    while (rs.next()) {
        diasm = rs.getInt("dias");
    }
    v1 = v1 * diasm;
    v2 = v2 * diasm;
    v3 = v3 * diasm;
     
    out.print(v2);
    out.print(v3);
    total = v1 + v2 + v3;
    double sub = total / 1.12;
    double iva = total - sub;
    DecimalFormat decimales = new DecimalFormat("0.00");

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
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <script type="text/javascript">
            function print(muestra)
            {
                var ficha = document.getElementById(muestra);
                var ventimp = window.open(' ', 'popimpr');
                ventimp.document.write(ficha.innerHTML);
                ventimp.document.close();
                ventimp.print();
                ventimp.close();
            }
        </script>
        <!-- start-smoth-scrolling -->
    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">


                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="index.jsp"  data-toggle="tooltip" data-placement="top" title="Hotel Sierra Norte"><img src="images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                            <ul class="nav1">
                                <li><a href="index.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="INICIO"  >INICIO</a></li>

                                <li><a href="informativas/galeria.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="GALERIA">GALERÍA</a></li>

                                <li><a href="informativas/servicios.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="SERVICIOS">SERVICIOS</a></li>

                                <li><a href="informativas/ubicacion.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="LUGAR">LUGAR</a></li>

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
                         <link rel="icon" href="../images/snl.fw.png" />
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
                <div style="float: right; width: 1140px;">
                    <a href="ayudas/ayuda_factura.jsp"><img src="img/btn_ayuda.png" height="40" width="110" alt=""></a>
                    <a href="javascript:history.back()"><img src="img/btn_atras.png" height="40" width="110" alt=""></a>  
                </div>
                <div class="about-top heading">
                    <h2 class="tittle-one">Proforma Hotel Sierra Norte </h2>
                </div>
                <div align="left" id="reservar">
                    <br>
                    <h2 class="tittle-one">RESERVA AQUÍ</h2>


                    <a style="font-weight: bold;">HABITACIONES CON:</a>
                    <br>
                    <br>
                    <a>►Baños privados</a>
                    <br>
                    <br>
                    <a>►Televisión por cable</a>
                    <br>
                    <br>
                    <a>►Servicio de WIFI</a>
                    <br>
                    <br>
                    <a>►Amplio parqueadero</a>
                    <br>
                    <br>
                    <a>►Piscina temperada</a>
                    <br>
                    <br>
                    <a>►Turco e hidromasaje</a>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>

                    <div id="reser">
                        <a href="reservas.jsp">RESERVAR</a>
                    </div>

                </div>

                <div id="separar"></div>

                <div id="centro">

                    <!-- INICIO DE LA PROFORMA -->
                    <!-- INICIO DE LA PROFORMA -->
                    <form name="proform" action="proforma.jsp" method="POST">
                        <div id="proforma">
                            <div align="center">

                                <div id="profor">
                                    <table width="100%">
                                        <tr>
                                            <td align="center">
                                                <img src="images/sn_tiny.png" width="150" alt=""/>
                                            </td>
                                            <td align="center">
                                                <br><h1>HOTEL SIERRA NORTE</h1><br>
                                                AV. MARIANO ACOSTA Y MANUELA CAÑIZARES<br>
                                                (06)2630706
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <h3>PROFORMA</h3>
                                            </td>
                                            <td>

                                            </td>
                                        </tr>
                                    </table>  
                                </div>
                                <br>
                                <div id="profor" align="center"> 
                                    <br>
                                    <br>
                                    <table>

                                        <tr width='300'>
                                            Solicitante
                                        </tr>
                                        <tr>
                                            <td width='80'>DNI:</td>
                                            <td width='220'><input type="text" disabled value="<% out.print(iden);%>" class="form-control" id="dni" name="iden" onchange="evaluar(registro)" onkeydown="return numeros(event)"></td>

                                        </tr>
                                        <tr>
                                            <td width='80'>Nombre:</td>
                                            <td width='220'><input type="text" disabled value="<% out.print(nom);%>" class="form-control" id="dni" name="nombre" onchange="evaluar(registro)" onkeydown="return numeros(event)"></td>
                                            <td width='80'>Fecha entrada:</td>
                                            <td width='220'><input type="text" value="<% out.print(entra);%>" class="form-control" id="dni" name="f_entrada" placeholder="Apellido" onchange="evaluar(registro)" onkeydown="return numeros(event)" readonly="readonly" style="" color="#000099"></td>

                                        </tr>
                                        <tr>

                                            <td width='80'>Apellido:</td>
                                            <td width='220'><input type="text" disabled value="<% out.print(apel);%>" class="form-control" id="dni" name="apellido" placeholder="Apellido" onchange="evaluar(registro)" onkeydown="return numeros(event)"  readonly="readonly"></td>
                                            <td width='80'>Fecha salida:</td>
                                            <td width='220'><input type="text" value="<% out.print(sale);%>" class="form-control" id="dni" name="f_salida" placeholder="Apellido" onchange="evaluar(registro)" onkeydown="return numeros(event)" readonly="readonly"></td>

                                        </tr>
                                    </table>
                                    <br>

                                </div>
                                <br>
                                <div id="profor" align="center">
                                    <table>
                                        <tr align="center">
                                            <td width='129'>N° Habitación</td>
                                            <td width='129'>Tipo Habitación</td>
                                            <td width='129'>Precio</td>

                                        </tr>

                                        <tr>
                                            <td><input type="text" value="<% out.print(id_hab1);%>" class="form-control" id="dni" name="h1"></td>
                                            <td><input type="text" value="<% out.print(tip_hab1);%>" class="form-control" id="dni" name="nombre"></td>
                                            <td><input type="text" value="<% out.print(precio_h1);%>" class="form-control" id="dni" name="p1"></td>                                        
                                        </tr>
                                        <tr>
                                            <td><input type="text" value="<% out.print(id_hab2);%>" class="form-control" id="dni" name="h2"></td>
                                            <td><input type="text" value="<% out.print(tip_hab2);%>" class="form-control" id="dni" name="nombre"></td>
                                            <td><input type="text" value="<% out.print(precio_h2);%>" class="form-control" id="dni" name="p2"></td>                                        
                                        </tr>
                                        <tr>
                                            <td><input type="text" value="<% out.print(id_hab3);%>" class="form-control" id="dni" name="h3"></td>
                                            <td><input type="text" value="<% out.print(tip_hab3);%>" class="form-control" id="dni" name="nombre"></td>
                                            <td><input type="text" value="<% out.print(precio_h3);%>" class="form-control" id="dni" name="p3"></td>                                        
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td align="right">SubTotal:</td>
                                            <td><input type="text" value="<% out.print(decimales.format(sub));%>" class="form-control" id="dni" name="" readonly="readonly"></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td align="right">IVA 12%:</td>
                                            <td><input type="text" value="<% out.print(decimales.format(iva));%>" class="form-control" id="dni" name="" readonly="readonly"></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td align="right"><strong>TOTAL:</strong></td>
                                            <td><input type="text" value="<% out.print(total);%>" class="form-control" id="dni" name="tot" readonly="readonly"></td>
                                        </tr>
                                    </table>

                                </div>
                                <br>


                            </div>
                            <div style="float: right">
                                <br>
                                <br>
                                <input type="button" value="IMPRIMIR" onclick="javascript:window.print('proforma')" />
                                <button id="menu_con" name="enviar_proforma">ENVIAR</button>

                            </div>
                                        


                        </div>
                    </form>
                    <!-- FIN DE LA PROFORMA -->
                    <!-- FIN DE LA PROFORMA -->
                </div>

                <div id="separar"></div>                

                <div align="center" id="configurar">

                    <%
                        if (user
                                == null) {
                    %>
                    <div id="loggeo">

                        <h4 align="center"><strong>INGRESA AQUÍ</strong></h4>
                        <br>
                        <br>

                        <form  id="logina" name="logina" action="index.jsp" method="POST">

                            <div class="form-group">
                                <input type="text" style="opacity: 0.6;" required class="form-control" id="usuario" name="usuario" placeholder="Ingrese su Correo" tittle="dasadsasd">
                            </div>
                            <div class="form-group">
                                <input type="password" style="opacity: 0.6;" required class="form-control" id="clave" name="clave" placeholder="Ingrese su password">
                            </div>
                            <button type="submit" class="btn btn-default btn-green" id="buscar" name="buscar">LOGGIN</button>   

                        </form> 
                        <br>
                        No tienes cuenta?: <a href="ncliente.jsp"><strong>Registrate</strong></a>

                    </div>
                    <%
                        //CODIGO DE ACCESO
                        if (request.getParameter("buscar") != null) {
                            int b = 0;
                            String us = null; //para tomar el usuario de la base de datos
                            String pa = null;
                            String usuario = request.getParameter("usuario");
                            String clave = request.getParameter("clave");

                            rs = con.consulta("select count(*) from personas where   correo='" + usuario + "'  and clave=md5('" + clave + "')");
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
                                out.println("<script>"
                                        + "swal({title: 'Acceso Concedido',text: 'Hotel Sierra Norte',type: 'success',confirmButtonColor: '#3DF543',confirmButtonText: '¡OK!',closeOnConfirm: false},"
                                        + "function(isConfirm){if (isConfirm) {location.reload(true);} else {} });"
                                        + "</script>");

                            } else {

                                out.println("<script>swal('Correo o Contraseña Incorrecta', 'Hotel Sierra Norte', 'error');</script>");

                            }
                        }

                        //FIN DE CODIGO DE ACCESO
                    } else {%>  

                    <h3 class="tittle-one">CONFIGURACIÓN</h3>
                    <br>
                    <p class="centered"><img src=".<% out.print(foto); %>" class="img-circle" width="60"></p>
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
                        <a href="./administracion/panel.jsp" 
                           data-toggle="tooltip" data-placement="top" title="ADMINISTRACION">ADMINISTRACION</a>
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


                </div>
            </div>
        </div>






        <!--footer-->
        <div class="footer">
            <div class="container">				 	
                <div class="col-md-3 ftr_navi ftr">
                    <h3>ESPACIO DE NAVEGACIÓN</h3>
                    <ul>
                        <li><a href="index.jsp" >INICIO</a></li>
                        <li><a href="informativas/galeria.jsp" >GALERÍA</a></li>
                        <li><a href="informativas/servicios.jsp" >SERVICIOS</a></li>
                        <li><a href="informativas/ubicacion.jsp" >UBICACIÓN</a></li>

                        <li><a href="informativas/acercade.jsp">QUIENES SOMOS</a></li>
                        <li><a href="informativas/mision.jsp">MISIÓN Y VISIÓN</a></li>
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
                <p>Hotel Sierra Norte Derechos Reservados 2015 | Diseñado por: Rodrigo Varela, Alexis Márquez, Christian Suárez</a></p>
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