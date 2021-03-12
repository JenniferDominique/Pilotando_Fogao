<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <title> Cadastro de Alimentos e Receitas </title>
        <meta charset="utf-8">
    </head>
     

    <body style="background-color: #F2ECEB;">

        <header 
            class="header" 
            style="background-color:#A6212C;top: 0px;">
            <div class="header-fixed-top">
                <div class="head">
                    <div class="container">
                        <div class="row col-lg-12 d-flex align-items-center justify-content-between">
                            
                            <h1 class="logo col-sm-3">
                                <a href="/">
                                    <img 
                                        alt="Pilotando Fogão - O manual para todos os pilotos de fogões"
                                        src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/imagens/Logo.png"
                                    >
                                </a>
                            </h1>

                            <div class="search-desk  col-sm-6 d-none d-lg-block">
                                <form action="/busca" id="search" method="get">
                                    <input 
                                        arial-lable="Pesquisar receitas" 
                                        class="txt" 
                                        id="search-query" 
                                        name="q"
                                        placeholder="Encontre uma receita..."
                                        type="text"
                                    >
                                    <input class="ico search" type="submit" value="Pesquisar">
                                </form>
                            </div>

                            <div class="col-sm-3 buttons d-none d-lg-flex align-items-center justify-content-center">
                                <div class="nova-receita">
                                    <a 
                                        arial-label="Crie uma nova receita"
                                        class="nova-receita"
                                        data-open-on="center"
                                        href="/receita/enviar-receita"
                                    >
                                        <img 
                                            alt="Nova receita - ícone"
                                            class="nova-receita-icone"
                                            src="https://img.itdg.com.br/tdg/assets/layout/blank.gif"
                                        >

                                        <div class="txt">Nova Receita</div>
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </header>
        


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

                Modo de Preparo:
                <input id="preparo" name="preparo" type="text">
                <br/>

                <input type="submit">
        </form>
    </body>    
</html>