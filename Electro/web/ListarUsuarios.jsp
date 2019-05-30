<%-- 
    Document   : ListarUsuarios
    Created on : 04/04/2019, 10:17:35
    Author     : internet
--%>

<%@page import="java.lang.Object"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="br.com.electro.model.Usuario" %>
<% List<Object> lstUsuarios = (List<Object>)request.getAttribute("lstUsuarios"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(lstUsuarios != null){
                for(Object obj: lstUsuarios){
                    if(obj instanceof Usuario){
                        out.println(((Usuario)obj).getNome());
                    }
                }
            }
        %>
    </body>
</html>
