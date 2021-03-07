package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/Pilotando_Fogao"})
public class FogaoServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp){
        try {
            PrintWriter pw = resp.getWriter();
            pw.write("Bom dia");
        } catch (IOException ioe) {
            System.out.println("Nao foi possivel escrever na resposta!");
        }
        
    }
}