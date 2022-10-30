package modeloDAO;

import config.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Actividad;

public class ActividadDAO implements IActividadDAO {

    @Override
    public List<Actividad> getActividades() {
        List<Actividad> actividades = new ArrayList<>();
        String sql = "Select * from actividad";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Actividad Act = new Actividad();
                Act.setIdActividad(rs.getInt(1));
                Act.setNombre(rs.getString(2));
                Act.setPrecio9Clases(rs.getInt(3));
                Act.setPrecio14Clases(rs.getInt(4));
                Act.setPrecioClasesLibre(rs.getInt(5));
                Act.setDisponible(rs.getBoolean(6));
                actividades.add(Act);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ActividadDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return actividades;
    }

    @Override
    public Actividad getId(int id) {
        String sql = "select * from actividad where idActividad =?";
        Actividad Act = new Actividad();
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Act.setIdActividad(rs.getInt(1));
                Act.setNombre(rs.getString(2));
                Act.setPrecio9Clases(rs.getInt(3));
                Act.setPrecio14Clases(rs.getInt(4));
                Act.setPrecioClasesLibre(rs.getInt(5));
                Act.setDisponible(rs.getBoolean(6));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ActividadDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Act;
    }

    @Override
    public int add(Actividad a) {
        int resultado = 0;
        String sql = "insert into actividad (nombre, precio9Clases, precio14Clases, precioClasesLibre, disponible) values (?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ps.setString(1, a.getNombre());
            ps.setInt(2, a.getPrecio9Clases());
            ps.setInt(3, a.getPrecio14Clases());
            ps.setInt(4, a.getPrecioClasesLibre());
            ps.setBoolean(5, a.getDisponible());
            
            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ActividadDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }

    @Override
    public int update(Actividad a) {
    int resultado = 0;
        String sql = "update actividad set nombre=?, precio9Clases=?, precio14Clases=?, precioClasesLibre=?, disponible=? where idActividad=?";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            ps.setString(1, a.getNombre());
            ps.setInt(2, a.getPrecio9Clases());
            ps.setInt(3, a.getPrecio14Clases());
            ps.setInt(4, a.getPrecioClasesLibre());
            ps.setBoolean(5, a.getDisponible());
            ps.setInt(6, a.getIdActividad());
            
            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ActividadDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }

    @Override
    public int delete(int id) {
        int resultado = 0;
        String sql = "delete from actividad where idActividad = " + id;
        try {
            PreparedStatement ps = Conexion.Conectar().prepareStatement(sql);
            resultado = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ActividadDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }
    
}
