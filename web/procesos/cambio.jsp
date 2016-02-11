<%@page import="java.sql.ResultSet"%>
<%@page import="clases.conexion"%>
<%

        String user = (String) session.getAttribute("varUsuario");
        conexion con = new conexion();
        ResultSet rs = con.consulta("select * from personas where correo='" + user + "'");
        String pass_base = "";
        String ide = "";
        rs = con.consulta("select * from personas where correo='" + user + "'");
        while (rs.next()) {
            pass_base = rs.getString("clave");
            ide = rs.getString("dni");
        }
        String anterior = request.getParameter("anterior");
        String nueva1 = request.getParameter("nueva1");
        String nueva2 = request.getParameter("nueva2");
        out.print("base " + pass_base);
        out.print("anterior " + anterior);
        out.print("1 " + nueva1);
        out.print("2 " + nueva2);
        if (pass_base.equals(anterior)) {
            if (nueva1.equals(nueva2)) {
                con.consulta("UPDATE personas SET clave='" + nueva1 + "' WHERE dni='" + ide + "';");
                out.print("<script>alert('CONTRASEÑA ACTUALIZADA')</script>");
                response.sendRedirect("clave.jsp");
            } else {
                out.print("<script>alert('Contraseña anterior incorrecta')</script>");
                response.sendRedirect("clave.jsp");
            }
        } else {
            out.print("<script>alert('Contraseña anterior incorrecta')</script>");
            response.sendRedirect("clave.jsp");
        }

    }


%>