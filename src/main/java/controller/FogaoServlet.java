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
    /* 
    public void doPost(HttpServletRequest req,HttpServletResponse res) 
    throws ServletException, IOException{
            
        String path = req.getServletPath();
        // Ver qual caminho foi digitado
        ServletContext sc = req.getServletContext();

        Service serv = new Service();
                               
        switch (path){

            case "/receita":
                try{
		            List<Alimentos> ali = serv.listAlimentos();			
		            req.setAttribute("aliment", ali);
                }catch(Exception e){}
            break;
            
            
            case "/cadAlimento.action":
                try{
                    String nome = req.getParameter("alimento").toLowerCase();
                    String categ = req.getParameter("categoria_alimento");
                    
                    serv.cadastrarAlimentos(nome, categ);
                    
                }catch (Exception e){}
            break;
            
        }
                          
            
    } */ 
    
}
