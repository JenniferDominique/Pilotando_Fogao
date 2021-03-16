<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receitas</title>

        <style>
            span {
                color: red;
            }

            #receita>tbody>tr:nth-child(even) {
                display: none;
            }

            tfoot {
                //display: none;
            }

            #hide {
                align: right;
            }

            th {
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
                    $("#receita>tbody>tr:nth-child(even)").show();
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

        <table id="receita" border="none" rules="none" frame="box" align="left"
            style="width: 100%; background-color: #F2C4B3;">
            <thead>
                <tr>
                    <th colspan="3" style="background-color: brown;">
                        <a id="titulo">Titulo Receita</a>
                    </th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>Tempo de Preparo: </td>
                    <td>Rendimento (Porções): </td>
                    <td style="text-align:right;">
                        <img alt="Ver Mais/ Ver Menos"
                            src="">
                        <button id="show">Ver Mais</button>
                    </td>
                </tr>

                <tr>
                    <td id="verMais">
                        <table>
                            <tbody>
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
                                        <li>Amasse a banananananananananana</li>
                                        <li>Pique a maçã</li>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>

            <tfoot style="background-color:yellow">
                <tr>
                    <th colspan="3" style="text-align:right;">
                        <button id="hide">Ver Menos</button>
                    </th>
                </tr>
            </tfoot>
        </table>


        Seu nome é:
        <span>
            <%=request.getAttribute("nomeCompleto")%>
                <span>
    </body>

    </html>