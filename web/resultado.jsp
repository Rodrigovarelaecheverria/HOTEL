<%@page import="clases.email"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESULTADO CORREO ELECTRONICO</title>
    </head>
    <body>
        
        <%
            
            email Email = new email();
            
            String de = request.getParameter("de");
            String clave = request.getParameter("clave");
            String para = request.getParameter("para");
            String mensaje = request.getParameter("mensaje");
            String asunto = request.getParameter("asunto");
            String nombre = request.getParameter("nombre");
            /* 
                
                String[] direcciones = {"correo numero 1","correo numero 2","correo numero 3","correo ..."}
                boolean resultado = email.enviarCorreo(de, clave, direcciones, mensaje, asunto);
            
            */
            
            boolean resultado = Email.enviarCorreo(de, clave, para, mensaje, asunto,nombre);
            
                
            if(resultado){
                out.print("CORREO ELECTRONICO CORRECTAMENTE ENVIADO....."+"\n\n"+"<a href='informativas/contactos.jsp'>VOLVER AL INDEX</a>");
            }else{
                out.print("CORREO ELECTRONICO NO ENVIADO....."+"\n\n"+"<a href='informativas/contactos.jsp'>VOLVER AL INDEX</a>"); 
            }
            
        %>
        
    </body>
</html>
    
