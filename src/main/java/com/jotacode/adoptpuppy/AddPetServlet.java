package com.jotacode.adoptpuppy;


import com.jotacode.adoptpuppy.dao.PetDAO;
import com.jotacode.adoptpuppy.entity.Pet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/add-pet")
public class AddPetServlet extends HttpServlet {
    private PetDAO petDAO;

    @Override
    public void init() throws ServletException {
        petDAO = new PetDAO();  // Asegúrate de que PetDAO use JPA
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("Registrar Mascota".equals(action)) {
            // Acción de registrar mascota
            String name = request.getParameter("name");
            String breed = request.getParameter("breed");
            int age = Integer.parseInt(request.getParameter("age"));

            Pet pet = new Pet(name, breed, age);
            petDAO.savePet(pet);  // Guardar la mascota usando JPA

            response.sendRedirect("addMascota.jsp");  // Redirigir de nuevo al index

        } else if ("Regresar al inicio".equals(action)) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("petList", petDAO.getPets());
        response.sendRedirect("get-pets");
    }
}
