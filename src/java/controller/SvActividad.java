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
import model.Actividad;
import modeloDAO.ActividadDAO;

@WebServlet(name = "SvActividad", urlPatterns = {"/View/SvActividad"})
public class SvActividad extends HttpServlet {

    private ActividadDAO dao;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        List<Actividad> actividades = new ArrayList<>();
        switch (accion) {
            case "listar":
                dao = new ActividadDAO();
                actividades = dao.getActividades();
                request.setAttribute("Actividades", actividades);
                request.getRequestDispatcher("/View/listaActividades.jsp").forward(request, response);
                break;
            case "listarEnLogin":
                dao = new ActividadDAO();
                actividades = dao.getActividades();
                request.setAttribute("Actividades", actividades);
                request.getRequestDispatcher("/View/index.jsp").forward(request, response);
                break;
            case "nuevo":
                request.getRequestDispatcher("actividad.jsp").forward(request, response);
                break;
            case "agregar":
                dao = new ActividadDAO();
                int r = 0;
                String nombre = request.getParameter("nombre");
                int precio9Clases = parseInt(request.getParameter("precio9Clases"));
                int precio14Clases = parseInt(request.getParameter("precio14Clases"));
                int precioClasesLibre = parseInt(request.getParameter("precioClasesLibre"));
                // boolean disponible = Boolean.parseBoolean(request.getParameter("disponible"));
                Actividad a = new Actividad();
                a.setNombre(nombre);
                a.setPrecio9Clases(precio9Clases);
                a.setPrecio14Clases(precio14Clases);
                a.setPrecioClasesLibre(precioClasesLibre);
                a.setDisponible(true);
                r = dao.add(a);
                if (r!=0) {
                    request.getRequestDispatcher("SvActividad?accion=listar").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "Hubo un error al almacenar la actividad");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
                break;
            case "editar":
                int id = parseInt(request.getParameter("idActividad"));
                dao = new ActividadDAO();
                Actividad ac = dao.getId(id);
                request.setAttribute("actividad", ac);
                request.getRequestDispatcher("editarActividad.jsp").forward(request, response);
                break;
            case "actualizar":
                String nombre1 = request.getParameter("nombre");
                int precio9Clases1 = parseInt(request.getParameter("precio9Clases"));
                int precio14Clases1 = parseInt(request.getParameter("precio14Clases"));
                int precioClasesLibre1 = parseInt(request.getParameter("precioClasesLibre"));
                // boolean disponible1 = Boolean.parseBoolean(request.getParameter("disponible"));
                int idActividad1 = parseInt(request.getParameter("idActividad"));
                Actividad act = new Actividad(idActividad1, nombre1, precio9Clases1, precio14Clases1, precioClasesLibre1, true);
                int respuesta = dao.update(act);
                if (respuesta!=0) {
                    request.getRequestDispatcher("SvActividad?accion=listar").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "Hubo un error al modificar la actividad");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
                break;
            case "eliminar":
                int idActividad = parseInt(request.getParameter("idActividad"));
                int res = dao.delete(idActividad);
                if (res!=0) {
                    
                    request.getRequestDispatcher("SvActividad?accion=listar").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "Hubo un error al eliminar la actividad");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
