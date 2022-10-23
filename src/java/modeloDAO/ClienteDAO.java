package modeloDAO;

import config.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cliente;

public class ClienteDAO {
    public List<Cliente>getClientes() {
        List<Cliente>clientes = new ArrayList<>();
        String sql = "Select * from cliente";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Cliente Cl = new Cliente();
                Cl.setIdCliente(rs.getInt(1));
                Cl.setNacimiento(rs.getDate(2));
                Cl.setTelefono(rs.getString(3));
                Cl.setTelefonoE(rs.getString(4));
                Cl.setPago(rs.getDate(5));
                Cl.setNombre(rs.getString(6));
                Cl.setApellido(rs.getString(7));
                Cl.setDocumento(rs.getString(8));
                Cl.setUsuario(rs.getString(9));
                Cl.setClave(rs.getString(10));
                Cl.setIdActividad(rs.getInt(11));
                clientes.add(Cl);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return clientes;
    }
}
