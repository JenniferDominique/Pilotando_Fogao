package controller;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import java.util.List;
import model.Alimentos;
import model.Receitas;
import model.Service;

@WebServlet({"*.action","/"})

public class FogaoServlet extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,
                      HttpServletResponse res){
        
        String path = req.getServletPath();
        // Ver qual caminho foi digitado
        ServletContext sc = req.getServletContext();

        Service serv = new Service();

        List<Alimentos> alimentos = serv.listAlimentos();			
		req.setAttribute("alimentos", alimentos);

        List<Receitas> receitas = serv.listReceitas();			
		req.setAttribute("receitas", receitas);
                
        switch (path){
            
            case "/":
               try{
                    sc.getRequestDispatcher("/jsp/receitas.jsp").forward(req, res);
                } catch (Exception e){}
            break;

            case "/receitas":
               try{
                    sc.getRequestDispatcher("/jsp/receitas.jsp").forward(req, res);
                } catch (Exception e){}
            break; 

            case "/cadastro":
               try{
                    sc.getRequestDispatcher("/jsp/cadastroAlimentosReceitas.jsp").forward(req, res);
                } catch (Exception e){}
            break;

            default:
                try{
                   sc.getRequestDispatcher("/jsp/paginaNaoEncontrada.jsp").forward(req, res);
                }catch (Exception e){}               
        } 
    }
     
    @Override
    public void doPost(HttpServletRequest req,
                       HttpServletResponse res){
            
        String path = req.getServletPath();
        // Ver qual caminho foi digitado
        ServletContext sc = req.getServletContext();

        Service serv = new Service();
                               
        switch (path){

            case "/cadastroAlimento":
                try{
                    String nome = req.getParameter("alimento");
                    String categ = req.getParameter("categoria_alimento");
                    
                    serv.cadastrarAlimentos(nome, categ);
                    sc.getRequestDispatcher("/jsp/cadastroAlimento.jsp").forward(req, res);
                }catch (Exception e){}
            break;

            case "/cadastroReceita":
                try{
                    String nome = req.getParameter("titulo_receita");
                    String tempo = req.getParameter("tempo");
                    String porcao = req.getParameter("quantidade");
                    String categoria = req.getParameter("categoria_receita");
                    String ingrediente = req.getParameter("ingrediente");
                    //String quantidade = req.getParameter("categoria_alimento");
                    //String medida = req.getParameter("categoria_alimento");
                    String preparo = req.getParameter("preparo");
                    
                    serv.cadastrarReceitas(nome, tempo, porcao, categoria, ingrediente, preparo);
                    sc.getRequestDispatcher("/jsp/cadastroReceita.jsp").forward(req, res);
                }catch (Exception e){}
            break;

            case "/excluirAlimento":
                try{
                    String idString = req.getParameter("exAlimento");
                    long id = Long.valueOf(idString).longValue();
                    
                    serv.excluirAlimentos(id);
                    sc.getRequestDispatcher("/jsp/excluirAlimento.jsp").forward(req, res);
                }catch (Exception e){}
            break;
            
        }      
    } 
    
}
