<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire">
        <!--Fonte de letra Sofia da Google-->
        
        <title>Receitas</title>

        <style>
            body{
                background-color: #F2ECEB;
            }
            
            span {
                color: red;
            }

            #receita>tbody>tr:nth-child(even) {
                display: none;
            }

            #hide {
                align: right;
            }

            th{
                font-family: Sofia, sans-serif;
                text-align: left;
            }
        </style>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#hide").click(function () {
                    $("#receita>tbody>tr:nth-child(even)").hide();
                    // Hide - Esconde a receita
                    //$("tfoot").hide();
                });
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
                border-color: #F2C4B3;
                font-family: 'Trebuchet MS', sans-serif; ">
            <thead>
                <tr>
                    <th colspan="5" style="text-align:left;">
                        <a 
                            id="titulo" 
                            style="
                                font-family: Sofia, sans-serif; 
                                color: #8C0303;
                                font-size: 25px;"
                            class="font-effect-neon"
                        >
                            Titulo Receita
                        </a>
                        <td style="text-align:right;" rowspan="2">
                            <img id="show"
                                alt="Ver Mais/ Ver Menos"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/imagens/cozinhar.png"
                                width="40"
                                height="40"
                            >
                        </td>
                        <td></td>
                        <td></td>
                    </th>
                </tr>
            </thead>

            <tbody colspan="5">
                <tr style="color: #787373">
                    <td>Tempo de Preparo: </td>
                    <td>Rendimento (Porções): </td>
                    <td>Categoria: </td>
                </tr>

                <tr>
                    <td id="verMais">
                        <table>
                            <tbody colspan="5">
                                <tr></tr>
                                <tr>
                                    <th>Ingredientes:</th>
                                </tr>

                                <tr>
                                    <td>
                                        <li>1 Banana</li>
                                        <li>2 Maçãs</li>
                                    </td>
                                </tr>

                                <tr>
                                    <th>Modo de Preparo:</th>
                                </tr>

                                <tr>
                                    <td>
                                        Amasse a banana
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