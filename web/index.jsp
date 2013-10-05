<%-- 
    Document   : index
    Created on : Sep 19, 2013, 10:51:17 AM
    Author     : JDD80794
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Los import -->
<%@ page language="java" %>
<%@ page import = "caisatest.Contacto"%> 
<%@ page import = "caisatest.ConsultaAgenda"%> 
<%@ page import = "java.util.LinkedList"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consulta</h1>
        
        <table border="1">
            <tr>
            <td>id</td>
            <td>nombre</td>
            <td>apellido</td>
            <td>telefono</td>
            </tr>
            <%
            LinkedList<Contacto> lista = ConsultaAgenda.getContactos();
            for (int i=0;i<lista.size();i++)
            {
               out.println("<tr>");
               out.println("<td>"+lista.get(i).getId()+"</td>");
               out.println("<td>"+lista.get(i).getNombre()+"</td>");
               out.println("<td>"+lista.get(i).getApellido()+"</td>");
               out.println("<td>"+lista.get(i).getTelefono()+"</td>");
               out.println("</tr>");
            }
            %>
</table>
        
    </body>
</html>
