<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <title> Cadastro de Alimentos e Receitas </title>
        <meta charset="utf-8">
    </head>

    <header>
        <h1 class="site-title">Pilotando Fogão</h1>
        <h2 class="site-subtitle">Manual do Piloto de Fogão</h2>
        <nav class="menu"> 
          <!-- tag nave barra de navegação link -->
          <ul>
            <li><a href="#">Cadastro</a></li>
            <li><a href="#">Receitas</a></li>
          </ul>
        </nav>
        
        
        <style>
            body {
            /* a parte total da página web */
            /* informar as propriedades para modificar as aparências */
             background-image: url('https://i.pinimg.com/564x/28/a8/f0/28a8f00f46fb67e059a44c1c6b9b181c.jpg'); /* plano de fundo */
             background-size: 20vh; /*muda o tamanho de acordo com as telas, masntém a proporção independente do computador*/
            font-family: Arial;
            height: 20vh;
            }

            .menu {
            /* selecionando todo mundo da tag menu */
            background-color: lightgrey;
            }

            .menu ul {
            display: flex; /* Exibição, os liks ficam um do lado do outro */
            justify-content: space-around; /*Espaço entre os links. Essa propriedade só funciona em conjunto com o display*/ 
            }

            .menu li {
            /* Se lê da direita para esquerda para saber quem vai ser "atingido" */
            /* Todas as li que estão dentro de uma classe chamada menu vão receber atributos */
              
            list-style: none; /* Tira os pontinhos característicos de listas */
            }

            a {
            /* a - linkes */
            color: teal;
            text-decoration: none;
            }

            a:hover {
            text-decoration: underline;
            /* Quando passar o mouse por cima aparece o underline */
            }

            .site-subtitle,
            .site-title {
            color: indigo;
            text-align: center;
            }

            .site-subtitle {
            font-style: italic;
            }
        </style>
      
    </header>

    <body>
        <form 
            method="get" 
            action="escrevernome.action"
            id="alimentos"
            >
                <h1>Cadastro de Alimentos</h1>
                Alimento: 
                <input name="nome_completo"/><br/>
                
                Categoria: 
                <select 
                    name="categoria_alimento" 
                    id="categoria_alimento" 
                    form="carform"
                >
                    <option value="fruta" >Fruta</option>
                    <option value="legumes">Legume</option>
                    <option value="levedura" >Levedura</option>
                    <option value="carne">Carne</option>
                    <option value="grao">Grão</option>
                    <option value="outro">Outro</option>
                </select><br/>
            
                <input type="submit">
        </form>

        <hr/>

        <form 
            method="get" 
            action="escrevernome.action"
            id="receitas"
            >
                <h1>Cadastro de Receita</h1>
                
                Título: 
                <input name = "titulo_receita"/><br/>
                
                Tempo de preparo (min.): 
                <input name = "tempo"/><br/>
                
                Porções: 
                <input 
                    type="number" 
                    id="quantidade" 
                    name="quantidade" 
                    min="1" 
                    max="50"
                ><br/>
                
                Categoria: 
                <select 
                    name="categoria_receita" 
                    id="ctegoria_receita" 
                    form="receitas"
                >
                    <option value="bebida" >Bebida</option>
                    <option value="carne">Carne</option>
                    <option value="doce" >Doce</option>
                    <option value="petisco">Petisco</option>
                    <option value="outo">Outro</option>
                </select><br/>

                Ingrediente: 
                <input name = "ingrediente"/><br/>
                
                Quantidade: 
                <input name = "quantidade"/><br/>
               
                Medida: 
                <select name="medida" id="medida" form="receitas">
                    <option value="grama" title="gramas">g</option>
                    <option value="ml" title="mililitros">ml</option>
                    <option value="kilo" title="quilogramas">Kg</option>
                    <option value="litro" title="litro">L</option>
                </select><br/>

                <input type="submit">
        </form>
    </body>    
</html>