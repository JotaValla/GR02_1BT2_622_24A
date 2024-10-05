package com.jotacode.adoptpuppy.dao;

import com.jotacode.adoptpuppy.entity.Pet;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

import java.util.List;


public class PetDAO {
    private EntityManagerFactory factory;

    public PetDAO() {
        factory = Persistence.createEntityManagerFactory("AddPuppyPU");
    }

    public void savePet(Pet pet) {
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        em.persist(pet);
        em.getTransaction().commit();
        em.close();
    }

    //Obtener lista de mascotas
    public List<Pet> getPets() {
        EntityManager em = factory.createEntityManager();
        List<Pet> pets = em.createQuery("SELECT p FROM Pet p", Pet.class).getResultList();
        em.close();
        return pets;
    }
}
