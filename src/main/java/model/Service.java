package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import model.Receitas;
import model.Alimentos;

public class Service { //persistence class
    
    /*Cadastrar os alimentos*/
	public void cadastrarAlimentos(String nome, String categoria){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_pilot");        
        EntityManager em = emf.createEntityManager();

        Alimentos ali = new Alimentos();
        ali.setNome(nome);
        ali.setCategoria(categoria);

        em.getTransaction().begin();
        em.persist(ali);
        em.getTransaction().commit();

        em.close();
        emf.close();           
    }
    
    
    /*Listagem dos alimentos cadastrados*/
    public List<Alimentos> listAlimentos(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_pilot");        
        EntityManager em = emf.createEntityManager();
                          
        List<Alimentos> alimentos = null;
        Query query = em.createQuery("SELECT u FROM alimentos u ORDER BY nome ASC");
        // Selecionar todos os alimento ordenado em ordem crescente 
        alimentos = query.getResultList();
        em.close();
        emf.close();
        return alimentos;            
    }

    /*Cadastrar as receitas*/
	public void cadastrarReceitas(String nome, String tempo, String porcao, 
                                    String categoria, String ingrediente, String preparo){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_pilot");        
        EntityManager em = emf.createEntityManager();
        
        Receitas rec = new Receitas();
        rec.setNome(nome);
        rec.setTempo(tempo);
        rec.setPorcao(porcao);
        rec.setCategoria(categoria);
        rec.setIngredientes(ingrediente);
        rec.setPreparo(preparo);
        
        em.getTransaction().begin();
        em.persist(rec);
        em.getTransaction().commit();

        em.close();
        emf.close();
    }
    

     /*Listar as receitas*/
     public List<Receitas> listReceitas(){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_pilot");        
        EntityManager em = emf.createEntityManager();
                          
        List<Receitas> receitas = null;
        Query query = em.createQuery("SELECT u FROM receitas u ORDER BY id DESC");
        // Selecionar todos os alimento ordenado em ordem de id decrescente
        receitas = query.getResultList();
        em.close();
        emf.close();
        return receitas;            
    }
    	
}