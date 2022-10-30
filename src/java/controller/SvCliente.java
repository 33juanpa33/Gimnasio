package controller;

import java.io.IOException;
import static java.lang.Integer.parseInt;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cliente;
import modeloDAO.ClienteDAO;

@WebServlet(name = "SvCliente", urlPatterns = {"/View/SvCliente"})
public class SvCliente extends HttpServlet {

    private ClienteDAO dao;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        List<Cliente> clientes = new ArrayList<>();
        switch (accion) {
            case "listar":
                dao = new ClienteDAO();
                clientes = dao.getClientes();
                request.setAttribute("Clientes", clientes);
                request.getRequestDispatcher("/View/listaClientes.jsp").forward(request, response);
                break;
            case "nuevo":
                request.getRequestDispatcher("cliente.jsp").forward(request, response);
                break;
            case "agregar":
                dao = new ClienteDAO();
                int r = 0;
                Date nacimiento = Date.valueOf(request.getParameter("nacimiento"));
                String telefono = request.getParameter("telefono");
                String telefonoE = request.getParameter("telefonoE");
                Date pago = Date.valueOf(request.getParameter("pago"));
                int idActividad = parseInt(request.getParameter("idActividad"));
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String documento = request.getParameter("documento");
                String usuario = request.getParameter("usuario");
                String clave = request.getParameter("clave");
                Cliente c = new Cliente();
                c.setNacimiento(nacimiento);
                c.setTelefono(telefono);
                c.setTelefonoE(telefonoE);
                c.setPago(pago);
                c.setIdActividad(idActividad);
                c.setNombre(nombre);
                c.setApellido(apellido);
                c.setDocumento(documento);
                c.setUsuario(usuario);
                c.setClave(clave);
                r = dao.add(c);
                if (r!=0) {
                    request.setAttribute("config", "alert alert-success");
                    request.setAttribute("mensaje", "Agregado satisfactoriamente!");
                    request.getRequestDispatcher("SvCliente?accion=listar").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "Hubo un error al almacenar");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
                break;
            case "editar":
                int id = parseInt(request.getParameter("idCliente"));
                dao = new ClienteDAO();
                Cliente cl = dao.getId(id);
                request.setAttribute("cliente", cl);
                request.getRequestDispatcher("editarCliente.jsp").forward(request, response);
                break;
            case "actualizar":
                Date nacimiento1 = Date.valueOf(request.getParameter("nacimiento"));
                String telefono1 = request.getParameter("telefono");
                String telefonoE1 = request.getParameter("telefonoE");
                Date pago1 = Date.valueOf(request.getParameter("pago"));
                int idActividad1 = parseInt(request.getParameter("idActividad"));
                String nombre1 = request.getParameter("nombre");
                String apellido1 = request.getParameter("apellido");
                String documento1 = request.getParameter("documento");
                String usuario1 = request.getParameter("usuario");
                String clave1 = request.getParameter("clave");
                int idCliente1 = parseInt(request.getParameter("idCliente"));
                Cliente cli = new Cliente(idCliente1, nacimiento1, telefono1, telefonoE1, pago1, idActividad1, nombre1, apellido1, documento1, usuario1, clave1);
                int respuesta = dao.update(cli);
                if (respuesta!=0) {
                    request.setAttribute("config", "alert alert-success");
                    request.setAttribute("mensaje", "Modificado satisfactoriamente!");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "Hubo un error al modificar");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                }
                break;
            case "eliminar":
                int idCliente = parseInt(request.getParameter("idCliente"));
                int res = dao.delete(idCliente);
                if (res!=0) {
                    request.setAttribute("config", "alert alert-warning");
                    request.setAttribute("mensaje", "Se eliminó satisfactoriamente el cliente!");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "Hubo un error al eliminar");
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
