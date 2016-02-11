<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
 <%
   
   
            %>
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
        <link rel="stylesheet" href="css/jquery-ui.css" />
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
            
             $(function() {

                $("#from").datepicker({
                    onClose: function(selectedDate) {
                        $("#to").datepicker("option", "minDate", selectedDate);

                    }
                });

                $("#to").datepicker({
                    onClose: function(selectedDate) {
                        $("#from").datepicker("option", "maxDate", selectedDate);
                    }
                });
            });
                
            
            
            
jQuery(document).ready(function($) {
    $(".scroll").click(function(event) {
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
                        <h1><a href="index.jsp"><img src="images/sn_tiny.png" alt=""/></a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu"><img src="images/menu.png" alt=""/></span>
                        <nav class="cl-effect-11" id="cl-effect-11">
                            <ul class="nav1">
                                <li><a class="active" href="index.jsp" >PRINCIPAL</a></li>
                                <li><a href="#">HOTEL</a>
                                    <ul>
                                        <li><a href="acercade.jsp">QUIENES SOMOS</a></li>
                                        <li><a href="mision.jsp">MISIÓN Y VISIÓN</a></li>
                                        <li><a href="galeria.jsp" >GALERÍA</a></li>
                                        <li><a href="servicios.jsp" >SERVICIOS</a></li>
                                        <li><a href="ubicacion.jsp" >UBICACIÓN</a></li>
                                        <li><a href="contactos.jsp" >CONTACTOS</a></li>
                                    </ul>
                                </li>
                                <li><a href="nreservaciones.jsp" >RESERVACIONES</a></li>

                                <li><a href="#" >REGISTRO</a>
                                    <ul>
                                        <li><a href="rnuevop.jsp">CLIENTES</a></li>
                                        <li><a href="./registros/mregistrop.jsp">BUSCAR CLIENTES</a></li>
                                        <li><a href="rnuevoad.jsp">ADMINISTRADOR</a></li>                                                        
                                    </ul> 
                                </li>
                                <li><a href="#" >ACCESO</a>
                                    <ul>
                                        <li><a href="./administracion/loginc.jsp">CLIENTES</a></li>
                                        <li><a href="./administracion/logina.jsp">ADMINISTRADOR</a></li>                                                        
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
                        <ul>
                            <li><a href="#" class="f1"></a></li>
                            <li><a href="#" class="f2"></a></li>
                            <li><a href="#" class="f3"></a></li>
                            <li><a href="#" class="f4"></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!--search-->
        <div class="search-page">
            <div class="container">	
                <div class="search-grids">
                    <div class="col-md-3 search-grid-left">
                        <!--<div class="search-hotel">
                                <h3 class="sear-head">Name contains</h3>
                                <form>
                                        <input type="text" value="Hotel name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Hotel name...';}" required="">
                                        <input type="submit" value=" ">
                                </form>
                        </div>-->

                        <div class="range">
                            <h3 class="sear-head">Disfruta de tu estancia</h3>
                            <ul class="dropdown-menu6">
                                <li>

                                    <!--<div id="slider-range"></div>-->							
                                    <!--<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />-->
                                </li>			
                            </ul>
                            <!---->
                            <script type='text/javascript'>//<![CDATA[ 
                                $(window).load(function() {
                                    $("#slider-range").slider({
                                        range: true,
                                        min: 0,
                                        max: 9000,
                                        values: [50, 6000],
                                        slide: function(event, ui) {
                                            $("#amount").val("$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ]);
                                        }
                                    });
                                    $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

                                });//]]>  

                            </script>

                        </div>

                        <div class="range-two">
                     

                            <ul class="dropdown-menu5">
                                <li>

                                    <!--<div id="slider-range1"></div>-->							
                                    <!--<input type="text" id="amount1" style="border: 0; color: #ffffff; font-weight: normal;" />-->
                                </li>			
                            </ul>
                            <!---->
                            <script type="text/javascript" src="js/jquery-ui.js"></script>

                            <script type='text/javascript'>//<![CDATA[ 
                                $(window).load(function() {
                                    $("#slider-range1").slider({
                                        range: true,
                                        min: 0,
                                        max: 6000,
                                        values: [50, 5000],
                                        slide: function(event, ui) {
                                            $("#amount1").val("KM-" + ui.values[ 0 ] + " - KM-" + ui.values[ 1 ]);
                                        }
                                    });
                                    $("#amount1").val("KM-" + $("#slider-range1").slider("values", 0) + " - KM-" + $("#slider-range1").slider("values", 1));

                                });//]]>  

                            </script>
                        </div>
                        <div class="single-star-bottom">
                            <h3 class="sear-head">Habitaciones Cuatro estrellas</h3>

                            <label for="nike1"><span></span> <b><img src="images/st3.png" alt="" /></b></label> 
                        </div>

                        <div class="menu-grid">
                            <ul class="menu_drop">
                                <li class="item1"><a href="#"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>Comodidades</a>
                                    <ul>
                                        <li class="subitem1"><a href="#">Agua Caliente </a></li>
                                        <li class="subitem2"><a href="#">Baños Confortables</a></li>
                                        <li class="subitem3"><a href="#">WI-FI</a></li>
                                    </ul>
                                </li>
                                <li class="item2"><a href="#"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>Instalaciones</a>
                                    <ul>
                                        <li class="subitem1"><a href="#">Juegos para niños </a></li>
                                        <li class="subitem2"><a href="#">Garage privado</a></li>
                                        <li class="subitem3"><a href="#">Servicio de Bar-Restaurante</a></li>
                                        <li class="subitem4"><a href="#">Piscina</a></li>
                                    </ul>
                                </li>
                                <li class="item3"><a href="#"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>Servicios</a>
                                    <ul>
                                        <li class="subitem1"><a href="#">Teléfono en la habitación</a></li>
                                        <li class="subitem2"><a href="#">Atención las 24 horas</a></li>
                                        <li class="subitem3"><a href="#">Servicio a la habitación</a></li>
                                    </ul>
                                </li>
                                <li class="item4"><a href="#"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>Referencias</a>
                                    <ul>
                                        <li class="subitem1"><a href="#">Gasolinera los Olivos</a></li>
                                        <li class="subitem2"><a href="#">Parriladas del tio Jessy</a></li>

                                    </ul>
                                </li>
                                <li class="item5"><a href="#"><span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>Lugares Cercanos</a>
                                    <ul>
                                        <li class="subitem1"><a href="#">Parque de el Olivo</a></li>
                                        <li class="subitem2"><a href="#">Terminal Terrestre</a></li>
                                        <li class="subitem3"><a href="#">Boulevard de la Ciudad</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <!-- script for tabs -->
                            <script type="text/javascript">
                                $(function() {

                                    var menu_ul = $('.menu_drop > li > ul'),
                                            menu_a = $('.menu_drop > li > a');

                                    menu_ul.hide();

                                    menu_a.click(function(e) {
                                        e.preventDefault();
                                        if (!$(this).hasClass('active')) {
                                            menu_a.removeClass('active');
                                            menu_ul.filter(':visible').slideUp('normal');
                                            $(this).addClass('active').next().stop(true, true).slideDown('normal');
                                        } else {
                                            $(this).removeClass('active');
                                            $(this).next().stop(true, true).slideUp('normal');
                                        }
                                    });

                                });
                            </script>
                            <!-- script for tabs -->

                        </div>
                    </div>
                    <div class="col-md-9 search-grid-right">
                        
                     
                            
                            
                        <div class="hotel-rooms">
                            <div class="hotel-left">
                                <a href="doble.jsp"><span class="glyphicon glyphicon-bed" aria-hidden="true"></span>Habitaciones Dobles</a>
                                <p>Sientete como en casa</p>     
                                
                                <div class="hotel-left-grids">
                                    <div class="hotel-left-one">
                                        <a href="doble.jsp"><img src="images/hab/doble.jpg" alt="" /></a>
                                    </div>
                                    <div class="hotel-left-two">
                                        <div class="rating text-left">

                                        </div>

                                        <p>Ducha con agua Caliente<span> Televisión por cable y Red WIFI</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="hotel-right text-right">
                                <h4 id="precio_doble">30</h4>  
                                <p>El mejor precio,en el mejor lugar</p>
                                 <!--<a href="doble.jsp">Continuar</a>--> 
                                 
                                 <select id="doble">                                     
                                     <option value="0">00</option>
                                      <option value="1">01</option>
                                    
                                 </select>
                               
                                
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="hotel-rooms">
                            <div class="hotel-left">
                                <a href="triple.jsp"><span class="glyphicon glyphicon-bed" aria-hidden="true"></span>Habitaciones triples</a>
                                <p>Sientete como en casa</p>
                                <div class="hotel-left-grids">
                                    <div class="hotel-left-one">
                                        <a href="triple.jsp"><img src="images/hab/triple.jpg" alt="" /></a>
                                    </div>
                                    <div class="hotel-left-two">
                                        <div class="rating text-left">

                                        </div>

                                        <p>Ducha con agua Caliente<span>  Televisión por cable y Red WIFI</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="hotel-right text-right">
                               <h4 id="precio_triple">40</h4> 
                                <p>El mejor precio,en el mejor lugar</p>
                               <!-- <a href="triple.jsp">Continuar</a>-->
                              <select id="triple">                                     
                                        <option value="0">00</option>
                                      <option value="1">01</option>
                                         <option value="2">02</option>
                                      <option value="3">03</option>
                                         <option value="4">04</option>
                                      <option value="5">05</option>
                                         <option value="6">06</option>
                                      <option value="7">07</option>
                                         <option value="8">08</option>
                                      
                                 </select>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="hotel-rooms">
                            <div class="hotel-left">
                                <a href="matrimonial.jsp"><span class="glyphicon glyphicon-bed" aria-hidden="true"></span>Habitación matrimonial</a>
                                <p>Sientete como en casa</p>
                                <div class="hotel-left-grids">
                                    <div class="hotel-left-one">
                                        <a href="matrimonial.jsp"><img src="images/hab/matrimo.jpg" alt="" /></a>
                                    </div>
                                    <div class="hotel-left-two">
                                        <div class="rating text-left">

                                        </div>

                                        <p>Ducha con agua Caliente<span>  Televisión por cable y Red WIFI</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="hotel-right text-right">
                                <h4 id="precio_matrimonial">50</h4> 
                                <p>El mejor precio,en el mejor lugar</p>
                               <!-- <a href="matrimonial.jsp">Continuar</a>-->
                              <select id="matrimonial">                                     
                                    <option value="0">00</option>
                                      <option value="1">01</option>  
                                      <option value="2">02</option>
                                      <option value="3">03</option> 
                                         <option value="4">04</option>
                                      <option value="5">05</option>
                                         <option value="6">06</option>
                                      <option value="7">07</option>
                                 </select>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="hotel-rooms">
                            <div class="hotel-left">
                                <a href="cuatro.jsp"><span class="glyphicon glyphicon-bed" aria-hidden="true"></span>Habitación para 4 personas</a>
                                <p>Sientete como en casa</p>
                                <div class="hotel-left-grids">
                                    <div class="hotel-left-one">
                                        <a href="cuatro.jsp"><img src="images/hab/cuatro.jpg" alt="" /></a>
                                    </div>
                                    <div class="hotel-left-two">
                                        <div class="rating text-left">

                                        </div>

                                        <p>Ducha con agua Caliente<span>  Televisión por cable y Red WIFI</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="hotel-right text-right">
                                 <h4 id="precio_cuatro">60</h4> 
                                <p>Best price</p>
                                <!--<a href="cuatro.jsp">Continuar</a>-->
                            <select id="cuatro">                                     
                                        <option value="0">00</option>
                                      <option value="1">01</option>   
                                      <option value="2">002</option>
                                      <option value="3">03</option> 
                                         <option value="4">04</option>
                                      <option value="5">05</option>
                                         <option value="6">06</option>
                                       
                                 </select>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="hotel-rooms">
                            <div class="hotel-left">
                                <a href="cinco.jsp"><span class="glyphicon glyphicon-bed" aria-hidden="true"></span>Habitación para 5 personas</a>
                                <p>Sientete como en casa</p>
                                <div class="hotel-left-grids">
                                    <div class="hotel-left-one">
                                        <a href="cinco.jsp"><img src="images/hab/cinco.jpg" alt="" /></a>
                                    </div>
                                    <div class="hotel-left-two">
                                        <div class="rating text-left">

                                        </div>

                                        <p>Ducha con agua Caliente<span>  Televisión por cable y Red WIFI</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="hotel-right text-right">
                                <h4 id="precio_cinco">70</h4> 
                                <p>El mejor precio,en el mejor lugar</p>
                                <!--<a href="cinco.jsp">Continuar</a>-->
                              <select id="cinco">                                     
                                        <option value="0">00</option>
                                      <option value="1">01</option>
                                 </select>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                   
                    
                    
                    <div class="hotel-rooms">
                            <div class="hotel-left">
                              
                              <div class="hotel-left-grids">
                                    
                                    <div class="hotel-left-two">
                                        <div class="rating text-left">

                                        </div>

                         <form method="POST" id="form_reservas" name="form_reservas">
                            <h4 id="titulo1">Que dia va a visitarnos?</h4>
                            <div class="book-pag">
                               
                                <div class="book-pag-frm">
                                   Desde:
                               <input type="text" id="from" name="from" />
                                </div> 
                                <br>
                                <br>
                                <br>
                                
                                <div class="book-pag-frm">
                                     Hasta:                                      
                                    <input type="text" id="to" name="to" />
                                                                       
                                </div>  
                            
                            <div class="clearfix">
                                
                            </div>
                        </div>
                            </form>                                         
                                   </div>                                   
                                </div>
                            </div>                             
                            <div class="clearfix"></div>
                        </div>
                        
                        
                         <div class="hotel-rooms">
                            <div class="hotel-left">
                                <span class="glyphicons glyphicons-bed-alt" aria-hidden="true">asdfghjkl</span>  
                                <p>Sientete como en casa</p>
                                <div class="hotel-left-grids">
                                    <div class="hotel-left-one">
                                        <a href="cinco.jsp"><img src="images/hab/cinco.jpg" alt="" /></a>
                                    </div>
                                    <div class="hotel-left-two">
                                        <div class="rating text-left">

                                        </div>

                                        <p>Ducha con agua Caliente<span>  Televisión por cable y Red WIFI</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="hotel-right text-right">
                                <h4 id="precio_cinco">70</h4> 
                                <p>El mejor precio,en el mejor lugar</p>
                                <!--<a href="cinco.jsp">Continuar</a>-->
                              <select id="cinco">                                     
                                        <option value="0">00</option>
                                      <option value="1">01</option>
                                 </select>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        
                    </div>
                     </div>
                  </div>
            </div> 
        <div id="continuar">           
           
            
            
            
            
            
            
            
            
            
            
            
            <div id="continuar1">  <input type="button" id="ver" name="ver" value="CALCULAR"> </div> 
           <input type="text" id="total" value="" disabled="" > 
            <br><br>
            <input type="button" name="ver" value="RESERVAR" onclick="window.open('proforma.jsp?total='+$('#total').val())" />  
            
        </div>
        
        
        
        
          
        <!--//search-->
        <!--footer-->
        <div class="footer">
            <div class="container">				 	
                <div class="col-md-3 ftr_navi ftr">
                    <h3>ESPACIO DE NAVEGACIÒN</h3>
                    <ul>
                        <li><a href="index.jsp">PRINCIPAL</a></li>
                        <li><a href="about.jsp">ACERCA DE</a></li>
                        <!--<li><a href="typography.html">SERVICIOS</a></li>-->						
                        <li><a href="nreservaciones.jsp">RESERVACIONES</a></li>
                        <li><a href="contact.jsp">UBICACIÓN</a></li>
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
                    <a href="index.jsp"><img src="images/iconsn.fw.png" alt=""/></a>
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
                <p>2015 Hotel Sierra Norte. Derechos Reservados | Diseñado por:Rodrigo Varela,Alexis Marquez,Christian Suarez.</p>
            </div>
        </div>
        <!-- //copy -->
        <!-- for bootstrap working -->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
        <!-- smooth scrolling -->
        <script type="text/javascript">
                                $(document).ready(function() {
                                    /*
                                     var defaults = {
                                     containerID: 'toTop', // fading element id
                                     containerHoverID: 'toTopHover', // fading element hover id
                                     scrollSpeed: 1200,
                                     easingType: 'linear' 
                                     };
                                     */
                                   // $().UItoTop({easingType: 'easeOutQuart'});
                                    
                                    $("#ver").on("click",function(){
                                        
                                        var var_1 = $("#doble").val() * $("#precio_doble").text()
                                        var var_2 = $("#triple").val() * $("#precio_triple").text()
                                        var var_3 = $("#cuatro").val() * $("#precio_cuatro").text()
                                        var var_4 = $("#cinco").val() * $("#precio_cinco").text()                                                                               
                                        var var_5 = $("#matrimonial").val() * $("#precio_matrimonial").text()
                                        var var_6 = var_1 + var_2 + var_3 + var_4 + var_5;
                                        $.ajax({
                                            url: "resultado_reservacion.jsp",
                                            type: 'post',
                                            data: 'from=' + $("#from").val()+ '&to='+$("#to").val()+'&total='+var_6,
                                                    
                                            success: function(data) {
                                                var resp = data.trim();
                                             $("#total").val(resp)
                                               
                                            }
                                        });
                                    })
                                });
        </script>
        <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        <!-- //smooth scrolling -->

    </body>
</html>