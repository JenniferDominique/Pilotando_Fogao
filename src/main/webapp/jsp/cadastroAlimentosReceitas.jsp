<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Kelly+Slab">
        <!--Fonte de letra Kelly Slab-->
        <title> Pilotando Fogão - Manual para pilotos de fogão</title>
    </head>

    <style>
        h1{
            font-family: 'Kelly Slab'; 
            background-color: #BF7665;
            font-size: 20px; 
        }

        body{
            font-family: 'Kelly Slab';
            background-color: #F2ECEB; 
        }

        input, select{
            background-color: #C4C4C4; 
            border-color: #C4C4C4;
        }

        a{
            color: black;
            text-decoration: none;
        }

        a:hover{
            text-decoration: underline;
        }
    </style>

    <body>

        <table 
            class="header" 
            border="none" 
            rules="none" 
            frame="box" 
            align="left" 
            style="
                width: 100%; 
                background-color:#A6212C; 
                border-color: #A6212C;
                font-family: 'Kelly Slab';"
        >
            <thead>
                <tr align="left">
                    <td>
                        <img alt="Pilotando Fogão - O manual para todos os pilotos de fogões"
                            src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/Logo.png"
                            width="30%">
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
                        <a 
                            arial-label="Crie uma nova receita" 
                            class="nova-receita" 
                            href="/cadastro"
                        >
                            <img 
                                alt="Nova receita - ícone" 
                                class="nova-receita-icone"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/NovaReceita.png"
                                style="width: 35px;"
                            >

                            <div class="txt">Nova Receita</div>
                        </a>
                    </td>

                    <td style="text-align: center;">
                        <a 
                            arial-label="Livro de receitas"
                            class="nova-receita" 
                            href="/receitas.jsp" 
                        >
                            <img 
                                alt="Livro de Receitas - ícone" 
                                class="livro-receita-icone"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/LivroReceitas.png"
                                style="width: 35px;"
                            >

                            <div class="txt">Livro de Receitas</div>
                        </a>
                    </td>
                </tr>
            </thead>
        </table>

        <br/>

        <form
            id="alimentos"
            method="get" 
            action="escrevernome.action"
        >
            <tr></tr><br/>
            <h1>Cadastro de Alimentos</h1>
            Alimento:
            <input name="alimento"/><br />

            Categoria:
            <select name="categoria_alimento" id="categoria_alimento" form="carform">
                <option value="fruta">Fruta</option>
                <option value="legumes">Legume</option>
                <option value="levedura">Levedura</option>
                <option value="carne">Carne</option>
                <option value="grao">Grão</option>
                <option value="outro">Outro</option>
            </select><br />

            <input type="submit">
        </form>


        <form method="get" action="escrevernome.action" id="receitas">
            <h1>Cadastro de Receita</h1>

            Título:
            <input name="titulo_receita" /><br />

            Tempo de preparo (min.):
            <input name="tempo" type="time"/><br />

            Porções:
            <input type="number" id="quantidade" name="quantidade" min="1" max="50"><br />

            Categoria:
            <select name="categoria_receita" id="ctegoria_receita" form="receitas">
                <option value="bebida">Bebida</option>
                <option value="carne">Carne</option>
                <option value="doce">Doce</option>
                <option value="petisco">Petisco</option>
                <option value="outo">Outro</option>
            </select><br />

            Ingrediente:
            <input name="ingrediente" /><br />

            Quantidade:
            <input name="quantidade" /><br />

            Medida:
            <select name="medida" id="medida" form="receitas">
                <option value="unidade" title="unidade">Unidade</option>
                <option value="grama" title="gramas">g</option>
                <option value="ml" title="mililitros">ml</option>
                <option value="kilo" title="quilogramas">Kg</option>
                <option value="litro" title="litro">L</option>
            </select><br />

            Modo de Preparo:
            <input id="preparo" name="preparo" type="text">
            <br />

            <input type="submit">
        </form>
    </body>

    </html>