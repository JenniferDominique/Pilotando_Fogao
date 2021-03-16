<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página não encontrada</title>
    </head>

    <body>
        <h1>Página ou recurso não encontrado!</h1>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#hide").click(function () {
                $("p").hide();
            });
            $("#show").click(function () {
                $("p").show();
            });
        });
    </script>
    </head>

    <body>

        <p>If you click on the "Hide" button, I will disappear.</p>

        <button id="hide">Hide</button>
        <button id="show">Show</button>

    </body>

    </html>