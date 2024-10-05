<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.jotacode.adoptpuppy.entity.Pet" %>
<html>
    <head>
        <title>Lista de Mascotas</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f0f4f7;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }

            .container {
                width: 80%;
                max-width: 1200px;
                background-color: #fff;
                padding: 30px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                margin: 20px;
            }

            h1 {
                color: #333;
                font-size: 24px;
                margin-bottom: 20px;
                text-align: center;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
            }

            table, th, td {
                border: 1px solid #ddd;
            }

            th, td {
                padding: 15px;
                text-align: center;
            }

            th {
                background-color: #007bff;
                color: white;
                font-weight: bold;
                text-transform: uppercase;
            }

            td {
                background-color: #f9f9f9;
            }

            tr:nth-child(even) {
                background-color: #f1f1f1;
            }

            input[type="submit"] {
                display: block;
                width: 100%;
                background-color: #007bff;
                color: white;
                padding: 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
            }

            p {
                text-align: center;
                font-size: 18px;
                color: #666;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Lista de Mascotas</h1>

            <%
                // Supone que la lista de mascotas está disponible en el request como "petList"
                List<Pet> petList = (List<Pet>) request.getAttribute("petList");

                if (petList != null && !petList.isEmpty()) {
            %>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Raza</th>
                        <th>Edad</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Pet pet : petList) {
                    %>
                    <tr>
                        <td><%= pet.getId() %></td>
                        <td><%= pet.getName() %></td>
                        <td><%= pet.getBreed() %></td>
                        <td><%= pet.getAge() %></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <%
            } else {
            %>
            <p>No hay mascotas disponibles.</p>
            <%
                }
            %>
            <form action="index.jsp" method="post">
                <input type="submit" name="regresar" value="Regresar al inicio">
            </form>
        </div>
    </body>
</html>
