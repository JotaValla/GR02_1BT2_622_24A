<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Página de Inicio - Gestión de Mascotas</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .container {
                text-align: center;
                background-color: #fff;
                padding: 20px;
                box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
                border-radius: 10px;
            }
            h1 {
                color: #333;
            }
            p {
                color: #666;
                font-size: 16px;
                margin-bottom: 30px;
            }
            .button-container {
                margin-top: 20px;
            }
            .button {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 15px 30px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 10px;
                cursor: pointer;
                border-radius: 5px;
            }
            .button:hover {
                background-color: #45a049;
            }
            .button-secondary {
                background-color: #008CBA;
            }
            .button-secondary:hover {
                background-color: #007bb5;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Bienvenido a la Gestión de Mascotas</h1>
            <p>Esta aplicación te permite registrar nuevas mascotas y consultar la lista de mascotas ya registradas. Utiliza los botones a continuación para empezar.</p>

            <div class="button-container">
                <a href="addMascota.jsp" class="button">Registrar Nueva Mascota</a>
                <a href="get-pets" class="button button-secondary">Consultar Mascotas</a>
            </div>
        </div>
    </body>
</html>
