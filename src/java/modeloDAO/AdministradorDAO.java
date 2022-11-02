package modeloDAO;

import config.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Administrador;

public class AdministradorDAO implements IAdministradorDAO {

    @Override
    public List<Administrador> getAdministradores() {
        List<Administrador> administradores = new ArrayList<>();
        String sql = "Select * from administrador";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Administrador Ad = new Administrador();
                Ad.setIdAdministrador(rs.getInt(1));
                Ad.setCargo(rs.getString(2));
                Ad.setNombre(rs.getString(3));
                Ad.setApellido(rs.getString(4));
                Ad.setDocumento(rs.getString(5));
                Ad.setUsuario(rs.getString(6));
                Ad.setClave(rs.getString(7));
                administradores.add(Ad);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return administradores;
    }

    @Override
    public Administrador getId(int id) {
        String sql = "select * from administrador where idAdministrador =?";
        Administrador ad = new Administrador();
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ad.setIdAdministrador(rs.getInt(1));
                ad.setCargo(rs.getString(2));
                ad.setNombre(rs.getString(3));
                ad.setApellido(rs.getString(4));
                ad.setDocumento(rs.getString(5));
                ad.setUsuario(rs.getString(6));
                ad.setClave(rs.getString(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ad;
    }

    @Override
    public int add(Administrador a) {
        int resultado = 0;
        String sql = "insert into administrador (cargo, nombre, apellido, documento, usuario, clave) values (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ps.setString(1, a.getCargo());
            ps.setString(2, a.getNombre());
            ps.setString(3, a.getApellido());
            ps.setString(4, a.getDocumento());
            ps.setString(5, a.getUsuario());
            ps.setString(6, a.getClave());
            
            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }

    @Override
    public int update(Administrador a) {
        int resultado = 0;
        String sql = "update administrador set cargo=?, nombre=?, apellido=?, documento=?, usuario=?, clave=? where idAdministrador=?";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ps.setString(1, a.getCargo());
            ps.setString(2, a.getNombre());
            ps.setString(3, a.getApellido());
            ps.setString(4, a.getDocumento());
            ps.setString(5, a.getUsuario());
            ps.setString(6, a.getClave());
            
            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }

    @Override
    public int delete(int id) {
        int resultado = 0;
        String sql = "delete from administrador where idAdministrador=" + id;
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AdministradorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }
    
}
