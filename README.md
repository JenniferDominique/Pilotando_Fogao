# 🥘 Pilotando Fogão

Esse é um repositório referente ao curso de Laboratório de Engenharia de Software (LES), do 5º semestre do curso de ensino superior de Análise e Desenvolvimento de Sistemas da Faculdade de Tecnologia de São José dos Campos (FATEC - SJC), 1° Semestre 2021.

## Proposta

Desenvolver um sistema web utilizando da tecnologia Java que atenda aos seguintes requisitos e restrições:

### Requisitos Específicos do Sistema:
* Desenvolver um sistema para criação de receitas;
* Uma receita deve ser criada a partir de uma lista de ingredientes pré-cadastrados;
* Um ingrediente é caracterizado pelo menos por um nome (Ex: Banana) e por um id único;
* Cada ingrediente, previamente cadastrado, deve possuir uma quantidade específica na receita que a ele fica atrelada na receita (Ex: 200g);
* Além da quantidade de cada ingrediente na receita, essa deve possuir um nome (Ex: Bolo de Cenoura) e um conjunto de passos (1 a N passos) que devem ser executados na sua preparação;
* O diagrama de caso de uso seguinte dá uma ideia geral das funcionalidades esperadas para o
sistema:

<img src="https://raw.githubusercontent.com/JenniferDominique/Pilotando_Fogao/master/src/main/webapp/img/Diagrama%20de%20Caso%20de%20Uso%20-%20ReadMe.png" width="400px;" title="Diagrama de Caso de Uso - Funcionalidades do Sistema">

Note que 'Gerenciar Ingredientes' refere-se a: inserir, alterar, buscar e remover ingredientes. O mesmo se aplica às receitas. Além disso, não deve ser possível criar uma receita com um ingrediente não cadastrado nem tampouco remover um ingrediente caso esse esteja presente
em pelo menos uma receita.

### Requisitos e Restrições Comuns:

1. Exemplificar a utilização de três recursos da linguagem de programação JavaScript, desenvolvendo código-fonte sem fazer uso de bibliotecas ou frameworks de terceiros. Além dessas três funcionalidades, utilizar Ajax em alguma funcionalidade do sistema.
2. Exemplificar a construção de três regras CSS, sem fazer uso de frameworks ou bibliotecas e desconsiderando tamanho e cor de fonte ou cor de plano de fundo. Criar mandatoriamente uma regra que controle layout de página ou posicionamento de elementos.
3. Sua aplicação web deve conter um menu para navegação e, no mínimo, duas interfaces distintas com o usuário, acessíveis a partir do menu.

### Requisitos e Restrições gerais - Tecnologia Java:

1. Utilizar a linguagem Java (Versão 8 ou superior) no back end;
2. JPA com provedor Hibernate (5 ou superior) para persistência de dados;
3. Utilizar o padrão de projeto MVC na arquitetura do sistema;
4. Utilizar Servlets anotados ou com descritor de implantação;
5. Utilizar Java Server Pages para criar páginas dinâmicas (tipo templates);
6. Utilizar o Gradle 5 ou superior para fazer o build do sistema;
7. Implantar o sistema em um web container Apache TomCat.

## Build do Sistema

* Abra o terminal de comando (cmd) dentro do diretório do projeto;
  * Obs:Já tem que ter o Java e Gradle devidamente instalados.

* Digite os seguintes para baixar as dependências e fazer o build do sistema utilizando a ferramenta Gradle:
```
gradle build
```
* Em seguida digite para executar a aplicação:
```
gradle appRun
```
Então será fornecido um endereço localhost, copiando e colando esse endereço no browser a aplicação poderá ser vista através do browser, mas rodando localmente.

## Etapas De Desenvolvimento (Vídeo)

* Etapa 1: [Build do Sistema](https://web.microsoftstream.com/video/2bda556f-6fd0-4afd-93c1-c27a3534b77e)