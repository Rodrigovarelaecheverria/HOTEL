<%@page import="clases.conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String user = (String) session.getAttribute("varUsuario");
    conexion con = new conexion();
    ResultSet rs = con.consulta("select * from personas where correo='" + user + "'");
    String nom = "", apel = "", foto = "";
    while (rs.next()) {
        nom = rs.getString("nombres");
        apel = rs.getString("apellidos");
        foto = rs.getString("foto");
    }
    String id = request.getParameter("id");
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
        <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="../css/demo.css" />
        <link rel="stylesheet" type="text/css" href="../css/component.css" />
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
        <link rel="icon" href="../images/snl.fw.png" />
        <!-- start-smoth-scrolling -->




    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">
                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="../index.jsp"  data-toggle="tooltip" data-placement="top" title="Inicio"><img src="../images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="images/menu.png" alt=""/></span>
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

                    <div class="clearfix">
                         <div style="float: right; width: 1140px;">
                    <a href="../ayudas/ayuda_perfiles.jsp"><img src="../img/btn_ayuda.png" height="40" width="110" alt=""></a>
                    <a href="javascript:history.back()"><img src="../img/btn_atras.png" height="40" width="110" alt=""></a>  
                </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!--about-->
        <!--start-about-->
       

<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="clases.conexion"%>
 
<!DOCTYPE html>
 
<html> 
            <!--inicio de contenido-->
            <section id="main-content">
                <section class="wrapper">
                    <br>
                    <center><h4><i class="fa fa-plus"></i>Crear un Nuevo Registro</h4></center>
                    <div class="row mt">

                        <div class="col-lg-12">
                            <div class="form-panel">
                                <form  id="listarmen" name="listarmen" action="listarmen.jsp" method="POST">
                                    <div class="form-group">
                                        <input type="text" required class="form-control" id="codigomen" name="codigomen" placeholder="Ingrese el codigo unico del menu principal">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" required class="form-control" id="nombremen" name="nombremen" placeholder="Ingrese el nombre del menu principal">
                                    </div>
                                    <div class="form-group">
                                        <input name="referencia" type="text"  class="form-control" id="referencia" placeholder="Ingrese la url de referencia al menú">
                                    </div>
                                    <div class="form-group">
                                        <input name="clasemen" type="text"  class="form-control" id="clasemen" placeholder="Ingrese codigo de clase para generar un icono html5">
                                    </div>
                                    <div class="form-group">
                                        <select autofocus required class="form-control" name="relacion" id="relacion">
                                            <option value="0">Menu Principal</option>
                                            <%rs = con.consulta("select * from menup where estado='true' and relacion='0'");
                                                while (rs.next()) {
                                                    out.print("<option value='" + rs.getString("idmenu") + "'>" + rs.getString("nombre") + "</option>");
                                                }
                                            %>

                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <select autofocus required class="form-control" name="visible" id="visible">
                                            <option value="true">Pagina siempre visible</option>
                                            <option value="false">Pagina siempre oculta</option>
                                        </select>
                                    </div>

                                    <button type="submit" class="btn btn-default btn-green" id="enviar" name="enviar">Guardar Registro</button>
                                </form>
                                <%
                                    if (request.getParameter("enviar") != null) {
                                        String codigo = request.getParameter("codigomen");
                                        String nombre = request.getParameter("nombremen");
                                        String referencia = request.getParameter("referencia");
                                        String relacion = request.getParameter("relacion");
                                        String visible = request.getParameter("visible");
                                        if (referencia.equals("")) {
                                            referencia = "javascript:;";
                                        }
                                        String clase = request.getParameter("clasemen");
                                        if (clase.equals("")) {
                                            clase = "fa fa-bars";
                                        }
                                        int contador = 0;
                                        rs = con.consulta("select count(*) from menup where idmenu='" + codigo + "'");
                                        while (rs.next()) {
                                            contador = rs.getInt("count");
                                        }
                                        if (contador == 0) {
                                            con.consulta("INSERT INTO menup(idmenu,nombre,referencia,clase,relacion,visible)VALUES ('" + codigo + "','" + nombre + "', '" + referencia + "', '" + clase + "', '" + relacion + "', '" + visible + "');");
                                            out.print("<script>alert('Registro Guardado');</script>");
                                        } else {
                                            out.print("<script>alert('Codigo ya registrado');</script>");
                                        }

                                    }


                                %>
                                <br> 
                                <center> <h4><i class='fa fa-list'></i> Listado de registros </h4></center>
                                <br>

                                <form  id="listamen" name="listarmen" action="listarmen.jsp" method="POST">
                                    <div class="form-group">
                                        <select autofocus required class="form-control" name="tbuscar" id="tbuscar">
                                            <option value="0">Busqueda por código</option>
                                            <option value="1">Busqueda por nombre</option>
                                            <option value="2">Mostrar solo menus principal</option>
                                            <option value="3">Mostrar solo submenus</option>
                                            <option value="4">Mostrar submenus de menu principal</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="busqueda" name="busqueda" placeholder="Ingrese lo que desea buscar">
                                    </div>

                                    <button type="submit" class="btn btn-default btn-green" id="buscar" name="buscar">Buscar Registro</button>
                                </form>
                                <br>
                                <div class="form-group">

                                    <%                                        String consulta = "select * from menup order by idmenu desc";

                                        if (request.getParameter("buscar") != null) {
                                            String valor = request.getParameter("tbuscar");
                                            String buscar = request.getParameter("busqueda");
                                            if (valor.equals("0")) {
                                                consulta = "select * from menup where idmenu like'%" + buscar + "%' order by idmenu desc";
                                            } else if (valor.equals("1")) {
                                                consulta = "select * from menup where idmenu like'%" + buscar + "%' order by idmenu desc";
                                            } else if (valor.equals("2")) {
                                                consulta = "select * from menup where relacion='0' order by idmenu desc";
                                            } else if (valor.equals("3")) {
                                                consulta = "select * from menup where relacion!='0' order by idmenu desc";
                                            } else if (valor.equals("4")) {
                                                consulta = "select * from menup where relacion like'%" + buscar + "%' order by idmenu desc";
                                            }
                                        }
                                        rs = con.consulta(consulta);
                                        out.print("<table class='table table-striped table-advance table-hover'>");
                                        out.print("  <hr>");
                                        out.print(" <thead>");
                                        out.print("  <tr>");
                                        out.print("    <th class='hidden-phone'><i class='fa fa-barcode'></i> Codigo</th>");
                                        out.print("    <th><i class='fa fa-list-alt'></i> Nombre</th>");
                                        out.print("    <th><i class='fa fa-list'></i>Dependen</th>");
                                        out.print(" <th><i class='fa fa-check-square-o'></i> Estado</th>");
                                        out.print("    <th><i class='fa fa-cog'></i>Acciones</th>");
                                        out.print("</tr>");
                                        out.print(" </thead>");
                                        out.print("  <tbody>");
                                        while (rs.next()) {
                                            out.print("   <tr>");
                                            out.print("  <td class='hidden-phone'>" + rs.getString("idmenu") + "</td>");
                                            out.print("    <td>" + rs.getString("nombre") + "</td>");
                                            if (rs.getString("relacion").equals("0")) {
                                                out.print("   <td>Principal</span></td>");

                                            } else {
                                                out.print("   <td>" + rs.getString("relacion") + "</span></td>");

                                            }
                                            if (rs.getString("estado").equals("t")) {
                                                out.print("   <td><span class='label label-info label-mini'>Activo</span></td>");

                                            } else {
                                                out.print("   <td><span class='label label-info label-mini'>Desactivado</span></td>");

                                            }
                                            out.print("    <td>");
                                            out.print("  <a href = '../administracion/mmenu.jsp?id=" + rs.getString("idmenu") + "' <button class='btn btn-primary btn-xs'><i class='fa fa-pencil'></i></button> </a>");
                                            out.print("  <a href = '../procesos/amenu.jsp?id=" + rs.getString("idmenu") + "' <button class='btn btn-success btn-xs'><i class='fa fa-play'></i></button></a>");
                                            out.print("   <a href = '../procesos/dmenu.jsp?id=" + rs.getString("idmenu") + "' <button class='btn btn-warning btn-xs'><i class='fa fa-stop'></i></button></a>");
                                            out.print("   <a href = '../procesos/emenu.jsp?id=" + rs.getString("idmenu") + "' <button class='btn btn-danger btn-xs'><i class='fa fa-eraser'></i></button></a>");
                                            out.print("   </td>");
                                            out.print(" </tr>");
                                        }
                                        out.print("  </tbody>");
                                        out.print(" </table>");
                                    %>

                                </div>
                            </div>
                        </div>  
                </section>
            </section>

        </section>

        <!-- Plugin utilizados a iniciar -->

    </body>
</html>
