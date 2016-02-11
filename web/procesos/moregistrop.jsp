<%@page import="clases.conexion"%>
<%
    conexion con = new conexion();
    String id=request.getParameter("id");
    String nombre = request.getParameter("nombres");
    String apellido = request.getParameter("apellidos");
    String correo = request.getParameter("correo");
    String telefono = request.getParameter("telefono");
    String celular = request.getParameter("celular");
    String direccion = request.getParameter("direccion");    
    con.consulta("UPDATE personas SET nombres='"+nombre+"', apellidos='"+apellido+"', correo='"+correo+"', telefono='"+telefono+"',celular='"+celular+"', direccion='"+direccion+"' WHERE dni='"+id+"';");
    response.sendRedirect("../registros/mregistrop.jsp");
%>