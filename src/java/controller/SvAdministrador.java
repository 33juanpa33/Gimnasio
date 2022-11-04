package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Administrador;
import modeloDAO.AdministradorDAO;

@WebServlet(name = "SvAdministrador", urlPatterns = {"/View/SvAdministrador"})
public class SvAdministrador extends HttpServlet {

    private AdministradorDAO dao;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession sesion = request.getSession();
        String accion = request.getParameter("accion");
        List<Administrador> administradores = new ArrayList<>();
        switch (accion) {
            case "listar":
                dao = new AdministradorDAO();
                administradores = dao.getAdministradores();
                request.setAttribute("Administradores", administradores);
                request.getRequestDispatcher("/View/listaAdministradores.jsp").forward(request, response);
                break;
            case "nuevo":
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
                break;
            case "agregar":
                dao = new AdministradorDAO();
                int r = 0;
                String cargo = request.getParameter("cargo");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String documento = request.getParameter("documento");
                String usuario = request.getParameter("usuario");
                String clave = request.getParameter("clave");
                Administrador c = new Administrador();
                c.setCargo(cargo);
                c.setNombre(nombre);
                c.setApellido(apellido);
                c.setDocumento(documento);
                c.setUsuario(usuario);
                c.setClave(clave);
                r = dao.add(c);
                if (r!=0) {
                    request.setAttribute("config", "alert alert-success");
                    request.setAttribute("mensaje", "Agregado satisfactoriamente!");
                    request.getRequestDispatcher("/View/panelAdministrador.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "Hubo un error al almacenar, es posible que el usuario ya exista");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
                break;
            case "editar":
                int id = parseInt(request.getParameter("idAdministrador"));
                dao = new AdministradorDAO();
                Administrador ad = dao.getId(id);
                request.setAttribute("administrador", ad);
                request.getRequestDispatcher("editarAdministrador.jsp").forward(request, response);
                break;
            case "actualizar":
                String cargo1 = request.getParameter("cargo");
                String nombre1 = request.getParameter("nombre");
                String apellido1 = request.getParameter("apellido");
                String documento1 = request.getParameter("documento");
                String usuario1 = request.getParameter("usuario");
                String clave1 = request.getParameter("clave");
                int idAdministrador1 = parseInt(request.getParameter("idAdministrador"));
                Administrador adm = new Administrador(idAdministrador1, cargo1, nombre1, apellido1, documento1, usuario1, clave1);
                int respuesta = dao.update(adm);
                if (respuesta!=0) {
                    request.setAttribute("config", "alert alert-success");
                    request.setAttribute("mensaje", "Modificado satisfactoriamente!");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "Hubo un error al modificar, es posible que el usuario ya exista");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
                break;
            case "eliminar":
                int idAdministrador = parseInt(request.getParameter("idAdministrador"));
                int res = dao.delete(idAdministrador);
                if (res!=0) {
                    request.setAttribute("config", "alert alert-warning");
                    request.setAttribute("mensaje", "Se eliminó satisfactoriamente el administrador!");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "Hubo un error al eliminar");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
                break;
            case "loguear":
                String usuarioLog = request.getParameter("usuario");
                String claveLog = request.getParameter("clave");
                dao = new AdministradorDAO();
                Administrador administradorLog = dao.login(usuarioLog, claveLog);
                request.setAttribute("administradorLog", administradorLog);
                sesion.setAttribute("usuarioLogueado", administradorLog);
                request.getRequestDispatcher("panelAdministrador.jsp").forward(request, response);
                break;
            default:
                throw new AssertionError();
        }
    }

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

}
