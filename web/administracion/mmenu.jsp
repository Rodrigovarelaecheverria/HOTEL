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
        <!-- start-smoth-scrolling -->




    </head>
    <body>
        <!-- banner -->
        <div class="banner page-head">
            <div class="container">
                <div class="header-nav">
                    <div class="logo">
                        <h1><a href="../index.jsp"  data-toggle="tooltip" data-placement="top" title="Hooray!"><img src="../images/sn_tiny.png" alt=""/></a></h1>
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

                    <div class="clearfix"><div style="float: right; width: 1140px;">
                    <a href="../ayudas/ayuda_index.jsp"><img src="../img/btn_ayuda.png" height="40" width="110" alt=""></a>
                    <a href="javascript:history.back()"><img src="../img/btn_atras.png" height="40" width="110" alt=""></a>  
                </div></div>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!--about-->
        <!--start-about-->
        


            <!--inicio de contenido-->
            <section id="main-content">
                
                <section class="wrapper">
                    <br>
                    <center><h4><i class="fa fa-refresh"></i>Modificando Registro</h4></center>
                    <div class="row mt">

                        <div class="col-lg-12">
                            <div class="form-panel">
                                <%rs = con.consulta("select * from menup where idmenu='" + id + "'");
                                    while (rs.next()) {
                                %>

                                <form  id="mmenu" name="mmenu" action="" method="POST">
                                    <div class="form-group">
                                        <input type="text" disabled="true" class="form-control" value="<%out.print(rs.getString("idmenu"));%>" id="codigomen" name="codigomen" placeholder="Ingrese el codigo unico del menu principal">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" required class="form-control" value="<%out.print(rs.getString("nombre"));%>" id="nombremen" name="nombremen" placeholder="Ingrese el nombre del menu principal">
                                    </div>
                                    <div class="form-group">
                                        <input type="text"  class="form-control" value="<%out.print(rs.getString("referencia"));%>" id="referencia" name="referencia" placeholder="Ingrese la url de referencia al menú">
                                    </div>
                                    <div class="form-group">
                                        <input name="clasemen" type="text" value="<%out.print(rs.getString("clase"));%>" class="form-control" id="clasemen" placeholder="Ingrese codigo de clase para generar un icono html5">
                                    </div>
                                    <div class="form-group">
                                        <select autofocus required class="form-control" name="relacion" id="relacion">

                                            <%if (rs.getString("relacion").equals("0")) {
                                                    out.print("<option value='0'>Menu Principal</option>");
                                                } else {
                                                    ResultSet rs1 = con.consulta("select * from menup where idmenu='" + rs.getString("relacion") + "'");
                                                    while (rs1.next()) {
                                                        out.print("<option value='" + rs1.getString("idmenu") + "'>" + rs1.getString("nombre") + "</option>");
                                                    }
                                                }
                                            %>
                                            <option value="0">Menu Principal</option>
                                            <%
                                                ResultSet rs1 = con.consulta("select * from menup where estado='true' and relacion='0'");
                                                while (rs1.next()) {
                                                    out.print("<option value='" + rs1.getString("idmenu") + "'>" + rs1.getString("nombre") + "</option>");
                                                }
                                            %>

                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <select autofocus required class="form-control" name="visible" id="visible">
                                            <%if (rs.getString("visible").equals("t")) {
                                            %><option value="true">Pagina siempre visible</option><%
                                            } else {
                                            %><option value="false">Pagina siempre oculta</option><%
                                                }
                                            %>
                                            <option value="true">Pagina siempre visible</option>
                                            <option value="false">Pagina siempre oculta</option>
                                        </select>
                                    </div>  
                                    <button type="submit" class="btn btn-default btn-green" id="enviar" name="enviar">Actualizar Registro</button>
                                </form>
                                <%}%>
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
                                            con.consulta("UPDATE menup SET clase='" + clase + "', referencia='" + referencia + "', nombre='" + nombre + "', relacion='" + relacion + "', visible='" + visible + "' WHERE idmenu='" + id + "';");
                                            out.print("<script>alert('Registro Actualizado');</script>");
                                            out.println("<script language='javascript'>window.location='../administracion/listarmen.jsp'</script>;");
                                        } else {
                                            out.print("<script>alert('Codigo ya registrado');</script>");
                                        }

                                    }


                                %>
                            </div>
                        </div>  
                    </div>     
                </section>
            </section>

        </section>
