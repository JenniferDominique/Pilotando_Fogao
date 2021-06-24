<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.Alimentos" %>
<%@page import="model.Receitas" %>

    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Kelly+Slab">
        <!--Fonte de letra Kelly Slab-->

        <title>Pilotando Fogão - Manual para pilotos de fogão</title>
    </head>

    <style>
        body {
            background-color: #F2ECEB;
            font-family: 'Kelly Slab';
        }

        #receita>tbody>tr:nth-child(even) {
            display: none;
        }

        #receita2>tbody>tr:nth-child(even) {
            display: none;
        }

        #receita3>tbody>tr:nth-child(even) {
            display: none;
        }

        th {
            text-align: left;
        }

        a {
            color: black;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#show").click(function () {
                $("#receita>tbody>tr:nth-child(even)").toggle();
                // Show - Mostra a receita
                //$("tfoot").show();
            });
            $("#titulo").click(function () {
                $("#receita>tbody>tr:nth-child(even)").toggle();
                // Toggle - Mostra a receita OU encolhe a receita
                //$("tfoot").toggle();
            });
            
        });
    </script>


    <body>

        <div style="color: #F2ECEB; font-size: 1px; background-color: #A6212C;">-</div>

        <table class="header" border="none" rules="none" frame="box" align="left" style="
                width: 100%; 
                background-color:#A6212C; 
                border-color: #A6212C;
                font-family: 'Kelly Slab';
                margin-bottom: 20px;">
            <thead>
                <tr align="left">
                    <td>
                        <a arial-label="Home" href="./">
                            <img alt="Pilotando Fogão - O manual para todos os pilotos de fogões"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/Logo.png"
                                width="110px">

                        </a>
                    </td>

                    <td style="text-align: center;">
                        <a arial-label="Crie uma nova receita" href="./cadastro">
                            <img alt="Nova receita - ícone" class="nova-receita-icone"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/NovaReceita.png"
                                style="width: 35px;">

                            <div class="txt">Nova Receita</div>
                        </a>
                    </td>

                    <td style="text-align: center;">
                        <a arial-label="Livro de receitas" href="./" style="font-weight: bold;">
                            <img alt="Livro de Receitas - ícone" class="livro-receita-icone"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/LivroReceitas.png"
                                style="width: 35px;">

                            <div class="txt">Livro de Receitas</div>
                        </a>
                    </td>
                </tr>
            </thead>
        </table>

        <!--

        <table id="receita" border="none" rules="none" frame="box" align="left" style="
                width: 100%; 
                background-color: #F2C4B3; 
                border-color: #F2C4B3;
                margin-bottom: 20px;
            ">
            <thead>
                <tr>
                    <th colspan="5" style="text-align:left;">
                        <a id="titulo" style="font-size: 22px;">
                            Smoothie de Maracujá
                        </a>

                    <td style="text-align:right;" rowspan="2">
                        <img id="show" alt="Ver Mais/ Ver Menos"
                            src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/Cozinhar.png"
                            width="40" height="40">
                    </td>
                    <td></td>
                    <td></td>
                    </th>
                </tr>
            </thead>

            <tbody>
                <tr style="color: #787373">
                    <td>Tempo de Preparo: 1h30min</td>
                    <td>Rendimento (Porções): 10</td>
                    <td>Categoria: Bebidas</td>
                </tr>

                <tr>
                    <td id="verMais">
                        <table>
                            <tbody colspan="3">
                                <tr></tr>
                                <tr>
                                    <th>Ingredientes</th>
                                </tr>
                                <tr>
                                    <td>
                                        <li>2 Unidade(s) - Bananas Congeladas</li>
                                        <li>1 Unidade(s) - Maracujá (Suco)</li>
                                        <li>6 Unidade(s) - Pedras de Gelo</li>
                                        <li>3 Colher(es) - Água Gelada</li>
                                        <li>2 Colher(es) - Mel</li>
                                    </td>
                                </tr>

                                <tr>
                                    <th>Modo de Preparo</th>
                                </tr>
                                <tr></tr>
                                <tr>
                                    <td rowspan="3">
                                        Bata todos os ingrdientes no liquidificador.
                                        Sirva-se Gelado.
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table> 
    -->         

        <%
            List<Receitas> receitas = (List<Receitas>) request.getAttribute("receitas");
            for(Receitas receita: receitas){
                out.print(
                    "<table id=\"receita\" style= \"background-color: #F2C4B3; width: 100%;\" >" +
                        "<thead>" +
                            "<tr>" +
                                "<th colspan=\'2\' style=\'text-align:left;\'>"+
                                    "<a style=\'font-size: 22px;\'>" +
                                        receita.getNome() +
                                    "</a>" +
                         
                                "</th>"+
                            "</tr>" +
                        "</thead>" +
                        
                        "<tbody>" +
                            "<tr colspan=\"3\" style=\"color: #787373; font-size: 14px; text-align:center\">" +
                                "<td>Tempo de Preparo: " + 
                                    receita.getTempo() + 
                                "</td>" +

                                "<td>Rendimento (Porções): " + 
                                    receita.getPorcao() + 
                                "</td>" +

                                "<td>Categoria: " + 
                                    receita.getCategoria() + 
                                "</td>" +
                            "</tr>" + 

                            "<tbody>" +
                                "<tr>" +
                                    "<th>Ingredientes: </th>" +
                                    "<td>" + 
                                        receita.getIngredientes() + 
                                    "</td>" +
                                "</tr>" +
                            "</tbody>" +

                            "<tbody>" +
                                "<tr>" +
                                    "<th>Modo de Preparo: </th>" +
                                    "<td>" + 
                                        receita.getPreparo() + 
                                    "</td>" +
                                "</tr>" +
                        "</tbody>" +
                    "</table></br>"
                );
                
            } 		
        %>
        

        <hr/> 
        <h3 style='color: #BF7665'>Lista de alimentos cadastrados:</h3>  
        <%
            List<Alimentos> alimentos = (List<Alimentos>) request.getAttribute("alimentos");
            for(Alimentos alimento: alimentos){
                out.print("<li>" + alimento.getNome() + "</li>");                
            } 		
        %>

        
    </body>

    </html>