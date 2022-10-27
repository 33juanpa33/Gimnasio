package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
import modeloDAO.IClienteDAO;

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
        
        int idCliente;
        Date nacimiento = Date.valueOf(request.getParameter("nacimiento"));
        String telefono;
        String telefonoE;
        Date pago;
        ClienteDAO  clientes = new ClienteDAO();
        for (Cliente cli : clientes.getClientes()) {
            System.out.println(cli.getNombre());
            System.out.println(cli.getNacimiento());
    }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
