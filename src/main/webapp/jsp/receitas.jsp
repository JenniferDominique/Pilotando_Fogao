<%@page contentType="text/html" pageEncoding="UTF-8" %>
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

        span {
            color: red;
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

            $("#show2").click(function () {
                $("#receita2>tbody>tr:nth-child(even)").toggle();
                // Show - Mostra a receita
                //$("tfoot").show();
            });
            $("#titulo2").click(function () {
                $("#receita2>tbody>tr:nth-child(even)").toggle();
                // Toggle - Mostra a receita OU encolhe a receita
                //$("tfoot").toggle();
            });

            $("#show3").click(function () {
                $("#receita3>tbody>tr:nth-child(even)").toggle();
                // Show - Mostra a receita
                //$("tfoot").show();
            });
            $("#titulo3").click(function () {
                $("#receita3>tbody>tr:nth-child(even)").toggle();
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

                    <!--
                    <td>
                        <form action="/busca" id="search" method="get">
                            <input 
                                arial-lable="Pesquisar receitas" 
                                class="txt" id="search-query" 
                                name="q"
                                placeholder="Encontre uma receita..." 
                                type="text"
                                style="background-color: #F2ECEB; border-color: #F2ECEB;"
                            >

                            <input 
                                class="ico search" 
                                type="submit" 
                                value="Pesquisar"
                            >
                        </form>
                    </td>
                    -->

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
                            SMOOTHIE DE MARACUJÁ
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

        <!--
        O último alimento cadastrado foi:
        <span>
            <%=request.getAttribute("nomeAlimento")%>
        <span>
        -->
        
        <table id="receita2" border="none" rules="none" frame="box" align="left" style="
                width: 100%; 
                background-color: #F2C4B3; 
                border-color: #F2C4B3;
                margin-bottom: 20px;
            ">
            <thead>
                <tr>
                    <th colspan="5" style="text-align:left;">
                        <a id="titulo2" style="font-size: 22px;">
                            KIBE
                        </a>

                    <td style="text-align:right;" rowspan="2">
                        <img id="show2" alt="Ver Mais/ Ver Menos"
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
                    <td>Tempo de Preparo: 0h90min</td>
                    <td>Rendimento (Porções): 25</td>
                    <td>Categoria: Pestisco</td>
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
                                        <li>1 Kg - Carne Moída</li>
                                        <li>300 g - Trigo para Kibe</li>
                                        <li>2 Colher(es) - Salsinha</li>
                                        <li>1 Colher(es) - Hortelã</li>
                                        <li>2 Unidade(s) - Alho</li>
                                        <li>A gosto - Sal</li>
                                        <li>A gosto - Pimenta</li>
                                        <li>1 L - Óleo</li>
                                    </td>
                                </tr>

                                <tr>
                                    <th>Modo de Preparo</th>
                                </tr>
                                <tr></tr>
                                <tr>
                                    <td rowspan="3">
                                        Deixe o trigo para kibe de molho por 30 min.
                                        Tempere a carne moída com o alho, sal, pimenta, hortelã.
                                        Em uma vazilha misture o trigo para kibe e a carne moída temperada.
                                        Coloque o óleo em uma panela e ponha no fogo para ir aquecendo.
                                        Após amassar bem e a massa já possuir liga. 
                                        Forme bolinhos e coloque para fritar no óleo.
                                        Quando o bolinho estiver escurinho, tire-o do óleo e sirva-se.
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>

        <table id="receita3" border="none" rules="none" frame="box" align="left" style="
                width: 100%; 
                background-color: #F2C4B3; 
                border-color: #F2C4B3;
                margin-bottom: 20px;
            ">
            <thead>
                <tr>
                    <th colspan="5" style="text-align:left;">
                        <a id="titulo3" style="font-size: 22px;">
                            COOKIE COM GOTAS DE CHOCOLATE
                        </a>

                    <td style="text-align:right;" rowspan="2">
                        <img id="show3" alt="Ver Mais/ Ver Menos"
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
                    <td>Tempo de Preparo: 0h40min</td>
                    <td>Rendimento (Porções): 22</td>
                    <td>Categoria: Doces</td>
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
                                        <li>125 g - Manteiga</li>
                                        <li>3/4 Xícara(s) - Açúcar</li>
                                        <li>1/2 Xícara(s) - Açúcar Mascavo</li>
                                        <li>1 Unidade - Ovo</li>
                                        <li>1 e 3/4 Xícara(s) - Farinha de Trigo</li>
                                        <li>1 Colher(s) - Fermento em Pó</li>
                                        <li>300 g - Chocolate Meio Amargo Picado</li>
                                        <li>1 Colher(es) - Essência de Baunilha</li>
                                    </td>
                                </tr>

                                <tr>
                                    <th>Modo de Preparo</th>
                                </tr>
                                <tr></tr>
                                <tr>
                                    <td rowspan="3">
                                        Misture a manteiga, açúcar mascavo, açúcar, essência de baunilha.
                                        Adicione o ovo batido aos poucos e misture bem.
                                        Acrescente a farinha aos poucos e misture bem.
                                        Por último, adicione o fermento e misture só para incorporá-lo à massa.
                                        Depois da massa bem misturada, adicione o chocolate picado.
                                        Forme bolinhas pequenas e asse em forno preaquecido, sobre papel manteiga, por aproximadamente 15 a 20 minutos (250° C).
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>

    </html>