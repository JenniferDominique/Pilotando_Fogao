package controller;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"*.action","/"})

public class FogaoServlet extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,
                      HttpServletResponse res){
        
        String path = req.getServletPath();
        // Ver qual caminho foi digitado
        
        ServletContext sc = req.getServletContext();
        
        System.out.println(path); 
        
        switch (path){
            
            case "/":
               try{
                    sc.getRequestDispatcher("/jsp/receitas.jsp").forward(req, res);
                } catch (Exception e){}
               break;

            case "/cadastro":
               try{
                    sc.getRequestDispatcher("/jsp/cadastroAlimentosReceitas.jsp").forward(req, res);
                } catch (Exception e){}
               break;
            
               case "/escrevernome.action":
                try{
                    req.setCharacterEncoding("UTF-8");
                    String nome = req.getParameter("alimento");
                    nome = nome.toUpperCase();
                    res.setContentType("text/html");
                    res.setCharacterEncoding("UTF-8");
                    req.setAttribute("nomeCompleto", nome);
                    sc.getRequestDispatcher("/jsp/receitas.jsp").forward(req, res);
                }catch (Exception e){}
            break;
            
            default:
                try{
                   sc.getRequestDispatcher("/jsp/paginaNaoEncontrada.jsp").forward(req, res);
                }catch (Exception e){}               
        }
        
    }  
}
