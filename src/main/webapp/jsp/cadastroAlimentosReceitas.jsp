<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Kelly+Slab">
        <!--Fonte de letra Kelly Slab-->
        <title>Pilotando Fogão - Manual para pilotos de fogão</title>
    </head>

    <style>
        body {
            font-family: 'Kelly Slab';
            background-color: #F2ECEB;
        }
        
        h1 {
            background-color: #BF7665;
            font-size: 20px;
        }

        input,
        select {
            background-color: #C4C4C4;
            border-color: #C4C4C4;
            margin: 3px;
        }

        a {
            color: black;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>

    <body>

        <div style="margin-bottom: 120px;">
            <div style="color: #F2ECEB; font-size: 1px; background-color: #A6212C;">-</div>

            <table class="header" border="none" rules="none" frame="box" align="left" style="
                width: 100%; 
                background-color:#A6212C; 
                border-color: #A6212C;
                font-family: 'Kelly Slab';">
                <tr align="left">
                    <td>
                        <a arial-label="Home" href="./">
                            <img alt="Pilotando Fogão - O manual para todos os pilotos de fogões"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/Logo.png"
                                width="110px">

                        </a>
                    </td>

                    <td style="text-align: center;">
                        <a arial-label="Crie uma nova receita" href="./cadastro" style="font-weight: bold;">
                            <img alt="Nova receita - ícone" class="nova-receita-icone"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/NovaReceita.png"
                                style="width: 35px;">

                            <div class="txt">Nova Receita</div>
                        </a>
                    </td>

                    <td style="text-align: center;">
                        <a arial-label="Livro de receitas" href="./">
                            <img alt="Livro de Receitas - ícone" class="livro-receita-icone"
                                src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/LivroReceitas.png"
                                style="width: 35px;">

                            <div class="txt">Livro de Receitas</div>
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <!--
        <form method="get" action="escrevernome.action">
        -->
        <form  id="alimentos">
            <h1>Cadastro de Alimentos</h1>

            Alimento:
            <input name="alimento" /><br />

            Categoria:
            <select name="categoria_alimento" id="categoria_alimento" form="carform">
                <option value="fruta">Fruta</option>
                <option value="legumes">Legume</option>
                <option value="levedura">Levedura</option>
                <option value="carne">Carne</option>
                <option value="grao">Grão</option>
                <option value="outro">Outro</option>
            </select><br />

            <input 
                type="submit" 
                style="
                    font-family: 'Kelly Slab'; 
                    color: #FFF; 
                    background-color: #000; 
                    border-color: #000;"
            >
        </form>


        <form id="receitas">
            <h1>Cadastro de Receita</h1>

            Título:
            <input name="titulo_receita" /><br />

            Tempo de preparo (min.):
            <input name="tempo" type="time" /><br />

            Porções:
            <input type="number" id="quantidade" name="quantidade" min="1" max="50"><br />

            Categoria:
            <select name="categoria_receita" id="categoria_receita" form="receitas">
                <option value="bebida">Bebida</option>
                <option value="carne">Carne</option>
                <option value="doce">Doce</option>
                <option value="petisco">Petisco</option>
                <option value="outo">Outro</option>
            </select><br />

            Ingrediente:
            <select name="ingrediente" id="ingrediente" form="receitas">
                <option value="agua">Água</option>
                <option >Açúcar</option>
                <option >Maracujá</option>
                <option >Gelo</option>
                <option >Banana</option>
            </select><br />

            <p style="font-size: 12px;">* Se o ingrediente desejado não estiver na lista, 
                então primeiro o adicione pelo cadastro de alimento
                 e logo ele aparecerá na lista.
            </p>

            Quantidade:
            <input name="quantidade" /><br />

            Medida:
            <select name="medida" id="medida" form="receitas">
                <option value="unidade" title="unidade">Unidade(s)</option>
                <option value="colher" title="colher">Colher(es)</option>
                <option value="xicara" title="xícara">Xícara(s)</option>
                <option value="copo" title="copo">Copo(s)</option>
                <option value="grama" title="gramas">g</option>
                <option value="ml" title="mililitros">ml</option>
                <option value="kilo" title="quilogramas">Kg</option>
                <option value="litro" title="litro">L</option>
                <option value="aGosto" title="aGosto">A gosto</option>
            </select><br />

            <input 
                type="submit" 
                value="Adicionar Ingrediente" 
                style="
                    font-family: 'Kelly Slab'; 
                    color: #FFF; 
                    background-color:#8C0303; 
                    border-color: #8C0303;"
            ><br/>

            <div>Modo de Preparo</div>
            <textarea 
                id="preparo" 
                placeholder="Escreva o passo a passo aqui..." 
                name="preparo" 
                rows="5" 
                cols="70" 
                style="
                    resize: none; 
                    background-color: #C4C4C4;"
            ></textarea>
            <br />

            <input 
                type="submit" 
                style="
                    font-family: 'Kelly Slab'; 
                    color: #FFF; 
                    background-color: #000; 
                    border-color: #000;">
        </form>
    </body>

    </html>