/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Categoria;

import Datos.CategoriaDato;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Logica.*;
import java.util.ArrayList;
/**
 *
 * @author JESUS-PC
 */
@WebServlet(name = "CategoriaServlet", urlPatterns = {"/CategoriaServlet"})
public class CategoriaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        
        if(accion.compareTo("Anadir") == 0)
        {
            String nombre = request.getParameter("CatNewTxt");
            String user = (String)request.getSession().getAttribute("User_ID");
            
            if(nombre.isEmpty() || user.isEmpty()){
                gotoPage(request, response, "/CategoriasJsp.jsp");
            }else
            {
                Categoria cat = new Categoria();
                String result = cat.set_Categoria(nombre, user);
                gotoPage(request, response, "/CategoriasJsp.jsp");
            }            
        }
        else if(accion.compareTo("Modificar") == 0)
        {
            String nombre = request.getParameter("CatModTxt");
            String id = request.getParameter("CatModID");
            if(nombre.isEmpty() || id.isEmpty())
            {
                gotoPage(request, response, "/CategoriasJsp.jsp");
            }else{
                Categoria cat = new Categoria();
                String result = cat.modificarCat(id, nombre);
                gotoPage(request, response, "/CategoriasJsp.jsp");
            }            
        }
        
        /*String user = (String)request.getSession().getAttribute("User_ID");
        Categoria categ = new Categoria();
        ArrayList<CategoriaDato> lista = categ.get_Categorias(user);
        request.getSession().setAttribute("CategoriasLista", lista);*/
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public void gotoPage(HttpServletRequest req, HttpServletResponse resp, String path)
            throws IOException, ServletException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(path);
        dispatcher.forward(req, resp);
    }
}
