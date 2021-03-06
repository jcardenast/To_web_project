/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Registrar;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Logica.*;
/**
 *
 * @author JESUS-PC
 */
@WebServlet(name = "RegistrarServlet", urlPatterns = {"/RegistrarServlet"})
public class RegistrarServlet extends HttpServlet {

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
        
        if(accion.compareTo("Retornar") == 0){
            gotoPage(request, response, "/LoginJsp.jsp");
        }else if(accion.compareTo("Registrar") == 0)
        {
            String usuario = request.getParameter("UsuarioTxt");
            String pass1 = request.getParameter("PasswordTxt");
            String pass2 = request.getParameter("PasswordTxt1");
            String nombre = request.getParameter("NombreTxt");
            String apellPat = request.getParameter("ApellPaterTxt");
            String apellMat = request.getParameter("ApellMaterTxt");
            String email = request.getParameter("Emailtxt");
            
            if(usuario.isEmpty() || pass1.isEmpty() || pass2.isEmpty() || nombre.isEmpty() || 
                    apellPat.isEmpty() || apellMat.isEmpty() || email.isEmpty())
            {
                gotoPage(request, response, "/RegistrarJsp.jsp");
                return;
            }
            
            Persona pers = new Persona();
            String id_Pers = pers.guardarPersona(nombre, apellPat, apellMat, email);
            if(id_Pers.compareTo("") == 0 || id_Pers.compareTo("-1") == 0)
            {
                gotoPage(request, response, "/RegistrarJsp.jsp");
            }else
            {
                Usuario user = new Usuario();
                String id_user = user.guardarUsuario(usuario, pass2, id_Pers);
                if(id_user.compareTo("") == 0 || id_user.compareTo("-1") == 0)
                {
                    gotoPage(request, response, "/RegistrarJsp.jsp");
                }else
                {
                    gotoPage(request, response, "/InicioJsp.jsp");
                }
            }
        }
        /*try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegUrlServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegUrlServlet at ajax </h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
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
