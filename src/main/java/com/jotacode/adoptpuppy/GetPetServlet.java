package com.jotacode.adoptpuppy;

import com.jotacode.adoptpuppy.dao.PetDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/get-pets")
public class GetPetServlet extends HttpServlet {

    private PetDAO petDAO;

    @Override
    public void init() throws ServletException {
        petDAO = new PetDAO();  // Asegúrate de que PetDAO use JPA
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("petList", petDAO.getPets());
        req.getRequestDispatcher("listaMascotas.jsp").forward(req, resp);
    }
}
