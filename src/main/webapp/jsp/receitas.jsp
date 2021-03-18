<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Kelly+Slab">
        <!--Fonte de letra Kelly Slab-->
        
        <title>Receitas</title>

        <style>
            body{
                background-color: #F2ECEB;
                font-family: 'Kelly Slab';
            }

            span {
                color: red;
            }

            #receita>tbody>tr:nth-child(even) {
                display: none;
            }

            th{
                text-align: left;
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
    </head>

    <body>

        <table 
            id="receita" 
            border="none" 
            rules="none" 
            frame="box" 
            align="left"
            style="
                width: 100%; 
                background-color: #F2C4B3; 
                border-color: #F2C4B3;">
            <thead>
                <tr>
                    <th colspan="5" style="text-align:left;">
                        <a 
                            id="titulo" 
                            style="font-size: 20px;"
                        >
                            SMOOTHIE DE MARACUJÁ
                        </a>
                        
                        <td style="text-align:right;" rowspan="2">
                            <img id="show"
                                alt="Ver Mais/ Ver Menos"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/Cozinhar.png"
                                width="40"
                                height="40"
                            >
                        </td>
                        <td></td>
                        <td></td>
                    </th>
                </tr>
            </thead>

            <tbody>
                <tr style="color: #787373">
                    <td>Tempo de Preparo: 1h30</td>
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
                                        <li>2 Bananas Congeladas</li>
                                        <li>1 Maracujá (Suco)</li>
                                        <li>6 Pedras de Gelo</li>
                                        <li>3 Colheres (Sopa) De Água Gelada</li>
                                        <li>2 Colheres (Sopa) de Mel</li>
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


        Seu nome é:
        <span>
            <%=request.getAttribute("nomeAlimento")%>
                <span>
    </body>

    </html>