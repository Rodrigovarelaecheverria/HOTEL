<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="clases.conexion"%>
<%
    ResultSet rs = null;
    int b = 0;
    String us = null; //para tomar el usuario de la base de datos
    String pa = null;
    String usuario = request.getParameter("usuario");
    String clave = request.getParameter("clave");
    String tipo = "A1";
    conexion con = new conexion();
    
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
        out.println("<script language='javascript'>window.location='../index.jsp'</script>");
    } else {

        out.println("<script>alert('USUARIO O PASSWORD INCORRECTOS')</script>");
        out.println("<script language='javascript'>window.location='../administracion/logina.jsp'</script>");
    }
%>
