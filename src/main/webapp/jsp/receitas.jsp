<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receitas</title>
        <style>
            span{
                color:red;
            }
        </style>
    </head>
    <body>
        Seu nome é: 
            <span>
            <%=request.getAttribute("nomeCompleto")%>
            <span>
    </body>
</html>