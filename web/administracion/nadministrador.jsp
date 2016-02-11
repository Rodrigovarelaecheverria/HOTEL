<%@page import="java.sql.ResultSet"%>
<%@page import="clases.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    conexion con = new conexion();
    ResultSet rs = null;
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
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
         <script type="text/javascript" src="./js/validar.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <link rel="icon" href="../images/snl.fw.png" />
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="./js/validar.js"></script>
        <script type="text/javascript">
            
            function numeros(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which; // 2
    if (tecla == 8)
        return true; // backspace
    if (tecla == 109)
        return true; // menos
    if (tecla == 110)
        return true; // punto
    if (tecla == 110)
        return true; // punto
    if (tecla == 110)
        return true; // punto
    if (tecla == 189)
        return true; // guion
    if (e.ctrlKey && tecla == 86) {
        return true
    }
    ; //Ctrl v
    if (e.ctrlKey && tecla == 67) {
        return true
    }
    ; //Ctrl c
    if (e.ctrlKey && tecla == 88) {
        return true
    }
    ; //Ctrl x
    if (tecla >= 96 && tecla <= 105) {
        return true;
    } //numpad

    patron = /[0-9]/; // patron

    te = String.fromCharCode(tecla);
    return patron.test(te); // prueba
}
        
  
  function letras(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which;
    if (tecla == 8)
        return true; // backspace
    if (tecla == 32)
        return true; // espacio
    if (e.ctrlKey && tecla == 86) {
        return true;
    } //Ctrl v
    if (e.ctrlKey && tecla == 67) {
        return true;
    } //Ctrl c
    if (e.ctrlKey && tecla == 88) {
        return true;
    } //Ctrl x

    patron = /[a-zA-Z]/; //patron

    te = String.fromCharCode(tecla);
    return patron.test(te); // prueba de patron
}
        
        
        
            </script>
        
        
        
        
    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">
                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="../index.jsp"><img src="../images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="../images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                        <ul class="nav1">
                                <li><a href="../index.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="INICIO"  >INICIO</a></li>

                                <li><a href="../informativas/galeria.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="GALERIA">GALERÍA</a></li>

                                <li><a href="../informativas/servicios.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="SERVICIOS">SERVICIOS</a></li>

                                <li><a href="../informativas/ubicacion.jsp" 
                                       data-toggle="tooltip" data-placement="top" title="LUGAR">LUGAR</a></li>

                             

                                <li><a href="#" 
                                       data-toggle="tooltip" data-placement="top" title="CONOCE">CONOCE</a>
                                    <ul>
                                        <li><a class="active" href="../informativas/acercade.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="QUIENES SOMOS">QUIENES SOMOS</a></li>

                                        <li><a class="active" href="../informativas/mision.jsp" 
                                               data-toggle="tooltip" data-placement="top" title="MISION Y VISION">MISIÓN Y VISIÓN</a></li>
                                        <li><a class="active" href="../informativas/nosotros.jsp" 
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
                    <div class="social-icons">
                     
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
                    <a href="../ayudas/ayuda_nadministrador.jsp"><img src="../img/btn_ayuda.png" height="40" width="110" alt=""></a>
                    <a href="javascript:history.back()"><img src="../img/btn_atras.png" height="40" width="110" alt=""></a>  
                </div>
                <div class="about-top heading">
                    <h2 class="tittle-one">ADMINISTRADOR</h2>
                </div>
                <div >


                    <section id="main-content">
                        <section class="wrapper">
                            <center><h4><i class="fa fa-plus"></i>Crear un Nuevo Registro</h4></center>
                            <div class="row mt">

                                <div class="col-lg-12">
                                    <div class="form-panel">
                                        <form  id="registro" name="registro" action="../administracion/nuevoa.jsp" method="POST">
                                            <div class="form-group">
                                                <select autofocus required class="form-control" name="tdocumento" id="tdocumento">
                                                    <option value="">Selecione de tipo de documento de DNI</option>
                                                    <option value="true">Nacional</option>
                                                    <option value="false">Extranjero</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" required class="form-control" id="dni" 
                                                       name="dni" placeholder="Ingrese su numero DNI de ciudadano" 
                                                       onkeydown="return numeros(event)" onchange="evaluar(registro)">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" required class="form-control" id="nombres" name="nombres" placeholder="Ingrese sus nombres" onkeydown="return letras(event)">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" required class="form-control" id="apellidos" name="apellidos" placeholder="Ingrese sus apellidos" onkeydown="return letras(event)">
                                            </div>
                                            <div class="form-group">
                                                <input type="email" required class="form-control" id="correo" name="correo" placeholder="Ingrese su correo electronico" onchange="validare(registro);">
                                            </div>
                                            <div class="form-group">
                                                <input name="telefono" type="text" class="form-control" id="telefono" placeholder="Ingrese su  numero de telefono" onkeydown="return numeros(event)" maxlength="15">
                                            </div>
                                            <div class="form-group">
                                                <input name="celular" type="text" class="form-control" id="celular" placeholder="Ingrese su numero de celular" onkeydown="return numeros(event)" maxlength="15">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" required class="form-control" id="direccion" name="direccion" placeholder="Ingrese su direccion donde vive actualmente">
                                            </div>
                                            <div class="form-group">
                                                <select name="perfil" required class="form-control" id="perfil">
                                                    <option value="">Seleccione un perfil</option>
                                                    <%
                                                        rs = con.consulta("select * from perfiles where estado='true'");
                                                        while (rs.next()) {
                                                            out.print("<option value='" + rs.getString("idperfil") + "'>" + rs.getString("nomperfil") + "</option>");
                                                        }
                                                    %>

                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" required class="form-control" id="contraseña" name="clave" placeholder="clave" onchange="valida_pass(this.value, registro)">
                                            </div>
                                            <button type="submit" class="btn btn-default btn-green" name="enviar" id="enviar">Guardar Registro</button>
                                        </form>
                                    </div>
                                </div>             
                            </div>  
                        </section>
                    </section>

                    </section>

                    </section>
                </div>
            </div>
        </div>
        <!--end-vision-->
        <!--start-vision-->
      
        <!--footer-->
        <div class="footer">
            <div class="container">				 	
                <div class="col-md-3 ftr_navi ftr">
                    <h3>ESPACIO DE NAVEGACIÒN</h3>
                    <ul>
                            <li><a href="../index.jsp" >INICIO</a></li>
                            <li><a href="../informativas/galeria.jsp" >GALERÍA</a></li>
                            <li><a href="../informativas/servicios.jsp" >SERVICIOS</a></li>
                            <li><a href="../informativas/ubicacion.jsp" >UBICACIÓN</a></li>
                        
                            <li><a href="../informativas/acercade.jsp">QUIENES SOMOS</a></li>
                            <li><a href="../informativas/mision.jsp">MISIÓN Y VISIÓN</a></li>
                        </ul>
                </div>
                <div class="col-md-3 ftr_navi ftr">
                    <h3>HABITACIONES</h3>
                    <ul>
                        <li>HABITACIONES TRIPLES</li>
                        <li>HABITACIONES PARA 4 PERSONAS</li>
                        <li>HABITACIONES DOBLES</li>						
                        <li>HABITACIONES SIMPLES</li>
                    </ul>
                </div>
                <div class="col-md-3 ftr_navi ftr">
                    <h3>DIRECCIÒN</h3>
                    <ul>
                        <li>AV. MARIANO ACOSTA Y MANUELA CAÑIZARES</li>
                        <li>TELÈFONO:(06)2630706</li>
                        <li>EMAIL:edisonlopezsa@gmail.com</li>
                    </ul>
                </div>
                <div class="col-md-3 ftr-logo">
                    <a href="../index.jsp"><img src="../images/iconsn.fw.png" alt=""/></a>
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
                <p>2015 Hotel Sierra Norte. Derechos Reservados | Diseñado por:Rodrigo Varela,Alexis Marquez,Christian Suarez.</a></p>
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
