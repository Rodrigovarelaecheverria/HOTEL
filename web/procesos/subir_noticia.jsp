
<%@page import="clases.conexion"%>
<%
        conexion con = new conexion();
        String user = (String) session.getAttribute("varUsuario");

        String titulo1 = request.getParameter("titulo");
        String fecha_noti1 = request.getParameter("fecha_noti");
        String encabezado1 = request.getParameter("encabezado");
        String cuerpo1 = request.getParameter("cuerpo");
        String autor1 = request.getParameter("autor");
        String fuente1 = request.getParameter("fuente");

        con.consulta("INSERT INTO noticias(titulo, fecha, encabezado, cuerpo, autor, fuente) VALUES( '" + titulo1 + "',  '" + fecha_noti1 + "', '" + encabezado1 + "',  '" + cuerpo1 + "',  '" + autor1 + "',  '" + fuente1 + "')");

        out.println("<script>alert('Noticia Guardada');</script>");
        out.println("<script language='javascript'>window.location='../noticias_img.jsp'</script>;");
    

%>
