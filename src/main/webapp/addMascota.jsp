<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro de Mascotas</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
                padding: 20px;
                background-color: #f9f9f9;
            }
            h1 {
                color: #333;
            }
            label {
                display: block;
                margin: 10px 0 5px;
            }
            input[type="text"],
            input[type="number"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <h1>Registrar nueva mascota</h1>
        <form action="add-pet" method="POST">
            <label for="name">Nombre:</label>
            <input type="text" id="name" name="name" ><br>

            <label for="breed">Raza:</label>
            <input type="text" id="breed" name="breed" ><br>

            <label for="age">Edad:</label>
            <input type="number" id="age" name="age" ><br>

            <input type="submit" name="action" value="Registrar Mascota">
            <input type="submit" name="action" value="Regresar al inicio">
        </form>
    </body>
</html>
