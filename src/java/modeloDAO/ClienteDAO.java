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

public class ClienteDAO implements IClienteDAO {

    @Override
    public List<Cliente> getClientes() {
        List<Cliente> clientes = new ArrayList<>();
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

    @Override
    public Cliente getId(int id) {
        String sql = "select * from cliente where idCliente =?";
        Cliente cl = new Cliente();
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                cl.setIdCliente(rs.getInt(1));
                cl.setNacimiento(rs.getDate(2));
                cl.setTelefono(rs.getString(3));
                cl.setTelefonoE(rs.getString(4));
                cl.setPago(rs.getDate(5));
                cl.setNombre(rs.getString(6));
                cl.setApellido(rs.getString(7));
                cl.setDocumento(rs.getString(8));
                cl.setUsuario(rs.getString(9));
                cl.setClave(rs.getString(10));
                cl.setIdActividad(rs.getInt(11));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cl;
    }

    @Override
    public int add(Cliente c) {
        int resultado = 0;
        String sql = "insert into cliente (nacimiento, telefono, telefonoE, pago, nombre, apellido, documento, usuario, clave, Actividad_idActividad) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ps.setDate(1, c.getNacimiento());
            ps.setString(2, c.getTelefono());
            ps.setString(3, c.getTelefonoE());
            ps.setDate(4, c.getPago());
            ps.setString(5, c.getNombre());
            ps.setString(6, c.getApellido());
            ps.setString(7, c.getDocumento());
            ps.setString(8, c.getUsuario());
            ps.setString(9, c.getClave());
            ps.setInt(10, c.getIdActividad());
            
            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }

    @Override
    public int update(Cliente c) {
        int resultado = 0;
        String sql = "update cliente set nacimiento=?, telefono=?, telefonoE=?, pago=?, nombre=?, apellido=?, documento=?, usuario=?, clave=?, Actividad_idActividad=? where idCliente=?";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ps.setDate(1, c.getNacimiento());
            ps.setString(2, c.getTelefono());
            ps.setString(3, c.getTelefonoE());
            ps.setDate(4, c.getPago());
            ps.setString(5, c.getNombre());
            ps.setString(6, c.getApellido());
            ps.setString(7, c.getDocumento());
            ps.setString(8, c.getUsuario());
            ps.setString(9, c.getClave());
            ps.setInt(10, c.getIdActividad());
            ps.setInt(11, c.getIdCliente());
            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }

    @Override
    public int delete(int id) {
        int resultado = 0;
        String sql = "delete from cliente where idCliente=" + id;
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }

}